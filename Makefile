README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "## Date and Time of Run" >> README.md
	echo "$$(date)" >> README.md
	echo "" >> README.md
	echo "## Number of Lines in guessinggame.sh" >> README.md
	echo "$$(wc -l < guessinggame.sh) lines" >> README.md


.PHONY: clean
clean:
	rm -f README.md