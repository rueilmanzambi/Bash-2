
#!/bin/bash



if [[ $# -eq 2 ]] 
then
        wget --quiet -O word_file $2
        grep -o $1 word_file | wc -l
else
        echo -e "You need to enter two arguments. The first one should be the string you're looking for,\nthe second one the webpage from where you're looking for."
fi
