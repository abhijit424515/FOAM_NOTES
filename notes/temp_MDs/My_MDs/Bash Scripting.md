[[CSeC]]

# Bash Scripting

[[sed manual]]

## Variables (and ENV variables)
##### Syntax:
```bash
Variable_name=value
```

##### Rules:
1. When reading/printing a variable (say x), use $ sign (like ```$x```), except when initializing the value
2. variable names are case sensitive
3. Never ever use whitespace on either side of the = sign. Following are some example of **Invalid Variables** having whitespaces (denoted by dots ...) between them as given below:  
   ```bash
	var1= 3  
	var2 =4  
	var3 = 7

	# this one is correct
	var1=3
	```

4. There is no need of using any quotes, either single or double, to define a variable with single character value
5. In case of Bash, you don't have to define the data type of any variable at the time of variable declaration

---
#### System variables
- ```BASH``` is the shell name
- ```BASH_VERSION``` is the shell version
- ```COLUMNS``` is the number of columns on the screen
- ```HOME``` is the home directory for the current user
- ```LOGNAME``` is the user name of the current login session
- ```OSTYPE``` is the type of OS
- ```PWD``` is the current working directory
- ```USERNAME``` is the name of the current user
- ```EDITOR``` is the name of the default editor

#### Modifying system variables
-   `env` – The command allows you to run another program in a custom environment without modifying the current one. When used without an argument it will print a list of the current environment variables.
-   `printenv` – The command prints all or the specified environment variables.
-   `set` – The command sets or unsets shell variables. When used without an argument it will print a list of all variables including environment and shell variables, and shell functions.
-   `unset` – The command deletes shell and environment variables.
-   `export` – The command sets environment variables.

---
##### Note:
When we create variables in bash, those are **shell variables**, and only have a shell-level scope.
When we export them, they will become **environment variables**, and they persist for the current user session. 
 
###### Persistent ENV variables
1. ```/etc/environment``` file is for setting ENV variables in the following format
	```bash
	FOO=bar
	VAR_TEST="Test var"
	```
2. ```/etc/profile``` file is for exporting ENV variables on each bash login shell startup in the following format 
   ```bash
   export JAVA_HOME="path"
   export PATH=$PATH:$JAVA_HOME/bin
	```
3. ```~/.bashrc``` or ```~/.zshrc``` for user-specific ENV variables
   ```bash
   export PATH="$HOME/bin:$PATH"
	```


To load the new environment variables into the current shell session use the [`source`](https://linuxize.com/post/bash-source-command/) command:
```bash
source ~/.bashrc
```

---
#### Using variable values
```bash
echo $PATH$USERNAME
echo $PATH hello $USERNAME
```

#### User input
```bash
read var1
echo $var1 fucked up
```

---
### Command Line Arguments
- ```$0``` is the name of the script to be invoked.
- ```$1-$9``` are the first 9 arguments passed to the bash command
- ```$#``` is the number of arguments passed to the command
- ```$*``` stores all the command line arguments by joining them together.
- ```$@``` stores the list of arguments as an array
- ```$?``` is the process ID of the current script
- ```$$``` is the exit status of the last run command/process
- ```$!``` is the ID of the last background process

Ex.
```bash
#!/bin/bash  
args=("$@")  
echo ${args[0]} ${args[1]} ${args[2]} ${args[3]}
```


###### Command substitution
Command Substitution allows the output of a command to replace the command itself. 
Bash performs the expansion by executing the command in a subshell environment and replacing the command substitution with the standard output of the command, with any trailing newlines deleted.
Embedded newlines are not deleted, but they may be removed during word splitting.

---

## MISC
![](https://i.imgur.com/ZxgLDKf.png)
![](https://i.imgur.com/2MeTQ0x.png)
![](https://i.imgur.com/5A7V8U3.png)

---
## Arithmetic
The following are equivalent
```bash
myVal1=`expr 30 / 10`
let myVal1=30/10
val1=$((30/10))
echo "30/10" | bc
```

---
## Loops
```bash
for ((initialization; condition; increment))    
do  
        [commands]  
done
```

```bash
while [condition]  
do  
        [commands]  
done
```

```bash
until [condition]  
do  
        [commands]  
done
```


---
# Important Links
["If then" loop not working ?](https://stackoverflow.com/questions/3401183/bash-syntax-error-not-found)