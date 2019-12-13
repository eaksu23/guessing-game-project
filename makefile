README.md:guessinggame.sh makefile
	echo "Guessing Game Project<br/>" > README.md
	date >> README.md
	echo "<br/>" >> README.md
	cat guessinggame.sh | grep ^[^#] | wc -l >> README.md
