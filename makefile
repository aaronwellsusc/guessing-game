README.md:
	touch README.md
	echo "# Guess How Many File in Directory" >> README.md
	echo "## Make was run at: " >> README.md
	date >> README.md
	echo "Number on lines in guessinggame.sh: " >> README.md
	cat guessinggame.sh | wc -l >> README.md
