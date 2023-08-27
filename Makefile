# Created by: Anton Kliek

# compile and execute commands for java programs
BUILD_CMD = javac
RUN_CMD = java

# path to src and class directories where the source and class files are stored
SRC_DIR = src
CLASS_DIR = class

# get all java source files and class files
SRC = $(wildcard $(SRC_DIR)/*.java)
CLASS = $(patsubst $(SRC_DIR)/%.java,$(CLASS_DIR)/%.class,$(SRC))

# default target
.PHONY: all
all: run

# compile the program
.PHONY: build
build: $(CLASS)

# compile java source files and store class files in class directory
$(CLASS_DIR)/%.class: $(SRC_DIR)/%.java
	@mkdir -p $(CLASS_DIR)
	@$(BUILD_CMD) -d $(CLASS_DIR) $<

# run the program
.PHONY: run
run: build
	@$(RUN_CMD) -cp $(CLASS_DIR) Main

# delete all class files
.PHONY: clean
clean:
	@rm -rf $(CLASS_DIR)
