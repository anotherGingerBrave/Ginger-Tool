echo "Hello this is Ginger Tool and i don't want to explain it :troll:"
log1="no cmd"
log2="no cmd"
log3="no cmd"
logt=0
function logp(){
	logt=1
	if [ $logt -eq 1 ]
	then
		log1=$log2
		log2=$log3
		log3=$1
		logt=0
	fi
}
while [ 0 -eq 0 ]
do
	printf "G:$ "
	read cmd
	if [ $cmd == "say" ]
	then
		echo "say..."
		printf "G:[say]$ "
		read arg1
		echo "
$arg1
"
		logp "say $arg1"
	fi
	if [ $cmd == "log" ]
	then
		echo "
$log1
$log2
$log3
"
	fi
	if [ $cmd == "qu" ]
	then
		exit
	fi
	if [ $cmd == "cl" ]
	then
		clear
	fi
	if [ $cmd == "expl" ]
	then
		echo "Use he for help because most commands are 2 characters long
It's basically bash making itself worse
The result is Ginger Tool
That basically isn't even a tool
It's just a time waste playground so if you want to waste time and computer space Ginger Shell is perfect

Want to do something with the wasted space?
Use 'say' command
You'll see 'say...' in the screen
Then type what crap you want and it'll print it
Still not fun, no?
This is funner!
Use 'log' command
You'll see 3 commands you executed before
This command doesn't count
You can clear the screen using 'cl'
This is it for now
Goodbye

This is even on github lol(why)"
	fi
	if [ $cmd == "he" ]
	then
		echo "Commands:
Say, Log, Qu, Cl, Expl, He
Not alot more later

Say: make gingertool repeat text
Log: show the 3 last cmds
Qu: exit gingertool
Cl: clear screen
Expl: show universe lore
He: show this text, another lore
Ve: show numbers containing the downloaded version
Vel: see what your downloaded version has added
Gif: add files to .gingertool directory"
	fi
	if [ $cmd == "ve" ]
	then
		echo "Version 0.4.0"
	fi
	if [ $cmd == "vel" ]
	then
		echo "Added 'ch' command: see what's inside a directory
Added \#: add comments, useful for screenshots"
	fi
	if [ $cmd == "gif" ]
	then
		echo "gif..."
		printf "G:[gif]$ "
		read arg1
		touch ~/.gingertool/$arg1.bash
	fi
	if [ $cmd == "ch" ]
	then
		echo "ch..."
		printf "G:[ch]$ "
		read arg1
		ls $arg1
	fi
	if [ $cmd == "#" ]
	then
		while [ 1 -eq 1 ]
		do
			read arg1
			if [ $arg1 == "#" ]
			then
				break
			fi
		done
	fi
done
