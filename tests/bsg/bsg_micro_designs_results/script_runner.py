import os
import re
import subprocess

# global values
procs = []
sv2v_limiter = 0
script="""
set_app_var sh_continue_on_error false
read_verilog gold.v -container r -libname WORK
set_top r:/WORK/$file
read_verilog dut.v -container i -libname WORK
set_top i:/WORK/$file
match
report_unmatched_points
verify
exit
"""


def main():
  base_dir = os.getcwd()
  ls_out = subprocess.check_output("ls").decode('UTF-8').split("\n")
  dir_list = list(filter(lambda x: x[-5:] == ".json", ls_out))
  for dir in dir_list:
    dir = dir.strip('\n')
    os.system("cp Makefile.example " + os.path.join(dir, "Makefile"))
    os.chdir (dir)
    with open('script', 'w') as script_file:
      output = re.sub(r'\$file', dir[0:-5], script)
      script_file.write(output)
    os.system("make")
    os.chdir(base_dir)

if __name__ == '__main__':
  main()
