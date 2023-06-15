import os
import re
import subprocess

# global values
procs = []
sv2v_limiter = 0
matching_delim = "*********************************** Matching Results ***********************************"
match_line = "Unmatched reference(implementation)"
issue_line = "Verification FAILED"
match_regex = r"^\s*([0-9]+)\(([0-9]+)\) Unmatched reference\(implementation\) (.*)\s*$"
verification_regex = r"^\s*Compare point (.*) failed \(is not equivalent\)\s*$"
compare_points_regex = r"^\s*(Impl|Ref)\s*([^ ]*)\s*[i|r]:\/WORK\/.*\/(.*)\s*$"

def main():
  base_dir = os.getcwd()
  ls_out = subprocess.check_output("ls").decode('UTF-8').split("\n")
  dir_list = list(filter(lambda x: x[-5:] == ".json", ls_out))
  for dir in dir_list:
      os.chdir(os.path.join(base_dir, dir))
      issue_found = False
      matching = False
      verifying = False
      report_string = ""
      matching_found = False
      matched = False
      with open ("shell_out") as shell_file:
        for line in shell_file:
          if issue_line in line:
            issue_found = True
          if matching_delim in line:
            # We will likely encounter this line twice, only want to process matches once
            if not matched:
              matched = True
              matching = True
              report_string += "****** Matching Report ******\n\n"
            else:
              matching = False
          if "Status:  Verifying" in line:
            if not matching_found:
              report_string += "No issues found with matching process!\n"
            report_string += "\n**** Verification Report ****\n\n"
            report_string += "Non-Equivalent Points:\n"
            matching = False
            verifying = True

          if matching and match_line in line:
            # Getting number data
            group_retrieval = re.search(match_regex, line)
            if group_retrieval:
              ref_count = group_retrieval.group(1)
              impl_count= group_retrieval.group(2)
              reason    = group_retrieval.group(3)
              if ref_count != "0" or impl_count != "0":
                matching_found = True
                report_string += "Mismatch issue: " + reason + "\n"
                if ref_count != "0":
                    report_string += "Instances in gold.v: " + ref_count + "\n"
                if impl_count != "0":
                   report_string += "Instances in dut.v:  " + impl_count + "\n\n"

          # Getting port data
          group_retrieval = re.search(compare_points_regex, line)
          if matching and group_retrieval:
            matching_found = True
            design = "Impl (dut.v)" if group_retrieval.group(1) == "Impl" else "Ref (gold.v)"
            port_type = group_retrieval.group(2)
            port = group_retrieval.group(3)
            report_string += "Type " + port_type + " mismatched in " + design + " at " + port + "\n"

          if verifying:
            group_retrieval = re.search(verification_regex, line)
            if group_retrieval:
              report_string += group_retrieval.group(1) + "\n"
          os.chdir(base_dir)
        if issue_found:
          if not os.path.isdir(os.path.join(base_dir, "issue_list")):
            os.mkdir(os.path.join(base_dir, "issue_list"))
          with open(os.path.join(base_dir, "issue_list/", dir), "w") as issue_file:
            issue_file.write(report_string)
            print(dir)
          

if __name__ == '__main__':
  main()
