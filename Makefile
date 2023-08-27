# Created by: Anton Kliek

# compile and execute commands for java programs
BUILD_CMD = javac
RUN_CMD = java

# path to src and out directories where the source and class files are stored
SRC_DIR = src
OUT_DIR = out

# get all java source files and class files
SRC = $(wildcard $(SRC_DIR)/*.java)
OUT = $(patsubst $(SRC_DIR)/%.java,$(OUT_DIR)/%.class,$(SRC))

# default target
.PHONY: all
all: run

# compile the program
.PHONY: build
build: $(OUT)

# compile java source files and store class files in out directory
$(OUT_DIR)/%.class: $(SRC_DIR)/%.java
	@mkdir -p $(OUT_DIR)
	@$(BUILD_CMD) -d $(OUT_DIR) $<

# run the program
.PHONY: run
run: build
	@$(RUN_CMD) -cp $(OUT_DIR) Main

# delete out directory with class files
.PHONY: clean
clean:
	@rm -rf $(OUT_DIR)
