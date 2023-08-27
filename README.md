# TASK

1. Install Java SDK and IntelliJ IDEA.

2. Install Git.

3. Create GitHub account.

4. Create simple Java project. Make changes in output: add more text to print.

```
  System.out.println("Hello world!");
  System.out.println("My name is ... Welcome to my first Java program");
```
5. Ensure that your program works. Run it. Check output console.

6. Upload your program to GitHub as public repository. Or you could use private repository, in this case add user setlab, octozaur, ValentynaPolienova, ecocybernetyc to repository.

7. Make screenshots of your IDE with your project open.

# SCREENSHOT

![alt text](https://github.com/akliek/auk-project1/blob/master/images/IDE.png?raw=true)

# STRUCTURE

  1. .gitignore - file with files and directories ignored by git (e.g. won't be commited to git)
  2. Makefile - file with that contains main operations of the program (Makefile documentation https://www.gnu.org/software/make/manual/make.html)
  3. src - directory with all src files
  4. out - directory created after building/runing the programm and deleted after cleaning the programm. Cotains class files
  5. README.md - this file
  6. .idea - directory, that contains configuration and project-specific settings for IntelliJ IDEA

# REQUIREMENTS

Following tools must be installed in order to run the programm.

  1. Git
  2. Java SDK
  3. Makefile (optional)

# CLONE

Open the terminal and run the following command:

```
  git clone https://github.com/akliek/auk-project1.git
```

# RUN

Go to the cloned directory and run the programm by running the following command in the terminal:

```
  make
```

If 'make' tool is not installed you can run the programm in the following way:

```
  javac src/*.java
  java -cp src Main
```

Or simply run it with your IDE configuration.

# USAGE

1. make run - builds and runs the programm
2. make build - compiles the programm
3. clean - deletes out directory with class files
4. make - see 'make run' command
