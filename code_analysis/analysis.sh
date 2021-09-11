#!/bin/bash
echo "--------------------Radon Code Analysis Start----------------------------"
declare -a strings=("Alphabet.py" "output.py" "test_Alphabet.py")
for i in "${strings[@]}";do
	radon cc src/$i
	echo "Sleep 5s" && sleep 5
done
echo "--------------------Radon Code Analysis Stop----------------------------"
echo "Sleep 10s" && sleep 10
echo "--------------------Pylint Code Analysis Start----------------------------"
for i in "${strings[@]}";do
	pylint src/$i --reports=y
	echo "Sleep 5s" && sleep 5
done
echo "--------------------Pylint Code Analysis Stop----------------------------"
