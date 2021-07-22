#! /usr/bin/bash
#Purpose: Simple quiz
#Author : Nachiketh Shetty
#The code begins#
clear
s=0
while IFS='#' read -r question choice answer ans answe answ
do
	echo
    echo $question
    echo
    echo $choice
    echo
    echo  -e "Your answer: \c"
    read student_answer </dev/tty 
    	if [ $student_answer == $answer ] 
        then
        	s=`expr $s + 1`
       #elif [  $student_answer == $ans ] 
       #then
            #s=`expr $s + 1`
      #elif [ $student_answer == $answe ]  
      #then
      	   #s=`expr $s + 1`
      #elif [ $student_answer == $answ ]
      #then
           #s=`expr $s + 1`
      #elif [ $student_answer == $ans ]
      #then
      	   #s=`expr $s + 1`
       fi
    clear
done <quiz.txt

echo
echo "Your score is $s" 
echo
 #The code ends#
