#!/bin/bash

MDFILES=`find . -name "*.md"`



printf "PANDOC := pandoc\n" > Makefile
printf "PANDOC_FLAGS := -s -f markdown -t html\n\n" >> Makefile




printf "all : " >> Makefile
for f in $MDFILES; do
  ff=${f%.*} 
  printf " $ff.html " >> Makefile
done

printf "\n" >> Makefile
printf "\n" >> Makefile


for f in $MDFILES; do
  ff=${f%.*}
  printf "$ff.html : $ff.md\n" >> Makefile
  printf "\tsed 's/(*.md)/.html)/g' $ff.md | \$(PANDOC) \$(PANDOC_FLAGS) -o $ff.html\n" >> Makefile
  printf "\n" >> Makefile
done



printf ".PHONY : clean\n\n" >> Makefile

printf "clean : \n" >> Makefile


for f in $MDFILES; do
  ff=${f%.*}
  printf "\trm $ff.html\n" >> Makefile
done


