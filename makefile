README.md:
	echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub." > README.md
	echo " " >> README.md
	echo "**Last date and time at which make was run** : `date`" >> README.md
	echo " " >> README.md
	echo "**Number of lines of code in bash shell script guessinggame.sh** : `wc -l guessinggame.sh | egrep -o '[0-9]+'`" >> README.md
	echo " " >> README.md
clean:
	rm README.md
