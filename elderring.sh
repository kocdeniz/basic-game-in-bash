
#!/bin/bash

echo ">> GUESS THE NUMBER >>"

sleep 1

echo "WELCOME"

sleep 1

echo "Please select your starting class:
1 - Warrior 
2 - Shaman
3 - Ninja"
read class

case $class in
	1)
		type="Warrior"
		hp=20
		attack=15
		;;
	2)
		type="shaman"
		hp=30
		attack=5
		;;
	3)	type="ninja"
		hp=20
		attack=10
		;;

esac

sleep 1

echo "You chosen the $type class. Your HP is $hp and your attack is $attack"



#First beast battle

beast=$(( $RANDOM % 2))


echo "To smash the opponent you pick a number beetween 0-1 (0/1)" 

read number

if [[ $beast == $number ]]; then
	echo " You Picked the right number you won!!"
else
	echo " You  died :("
	exit 1
fi

sleep 3

echo " B o s s   B a t t l e   !! ... "

sleep 2

echo "  Get scared bro. It's name is // MaRgIt.. the monster //"

sleep 1

echo "And you're standing right in front of it!!"

sleep 1 

echo " IT WILL ATTACK YOU WITH AN AXE "

sleep 1

echo " to counter-attack it with your sword.." 
echo "Pick a number between 0-9. (0-9): "
echo "hint: make him scared"
read numbertwo

beast=$(($RANDOM % 10))

if [[ $beast == $numbertwo || $numbertwo=="Boo" ]]; then
	echo "Beast Vanquished!!!"
elif [[ $USER == "root" ]]; then
	echo "Hey, root always wins. You Vanquished the beast!!"

else
        echo " You  died :( "
fi

