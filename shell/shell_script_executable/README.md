# README

Creating a desktop executable for a shell script.

```sh
cd shell_script_executable

# Give executable permission to the script
chmod +x script.sh

# Compile the executable program, which creates a desktop icon
# Note: There might be an error if the name (program.c) is the same as the executable file (program), so change it to be different.
gcc program.c -o cool_program

# Click on the executable file
```