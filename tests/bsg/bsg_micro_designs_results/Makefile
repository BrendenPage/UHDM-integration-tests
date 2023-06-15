TEST_DIRS = $(filter-out %common/,$(wildcard ./*/))

all: script_runner info_stripper

script_runner:
	python3 script_runner.py

info_stripper:
	python3 info_stripper.py

clean:
	$(foreach x,$(TEST_DIRS), if [ -f $(x)/Makefile ]; then $(MAKE) -C $(x) clean; fi;)

clean_all:
	$(foreach x,$(TEST_DIRS), if [ -f $(x)/Makefile ]; then $(MAKE) -C $(x) clean_all; fi;)

clean_issue:
	rm -rf issue_list
