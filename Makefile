README.md: guessinggame.sh
echo "# Guessing Game" > README.md
echo "" >> README.md
echo "Make run on: $$(date)" >> README.md
echo "" >> README.md
echo "Number of lines in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

.PHONY: clean 
clean:
   rm -f README.md

