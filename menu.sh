#!/bin/bash


print_menu(){
	echo "v) View $file"
	echo "e) Edit $file"
	echo "c) Compile $file"
	echo "x) Exectute $file"
	echo "q) Quit $file"
}

handle_choice(){

	value=false
	while [[ "$value" = "false" ]]; do
	        read input

		if [[ "$input" = "v" ]]; then
			less $file
		elif [[ "$input" = "e" ]]; then
			vi $file  
		elif [[ "$input" = "c" ]]; then
			if [[ "$file" = *.cpp ]]; then
			    g++ -o output $file
			fi
		elif [[ "$input" = "x" ]]; then
			if [[ "$file" = *.cpp ]]; then
			    g++ -o output $file
		            ./output
		        else
			    ./"$file"
			fi
		elif [[ "$input" = "q" ]]; then
			exit
		else
			value=true
		fi
	done
}





for file in *.sh; do
	print_menu file
	handle_choice
	echo -e "\n"
done

for file in *.cpp; do
	print_menu file
	handle_choice file
	echo -e "\n"
done




