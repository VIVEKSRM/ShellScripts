#!/bin/bash
echo " We will say about the characters in string "
echo " Please Enter a String :- "
read inputString

  SpecialCharOutput=$inputString

    WithoutSpecialChar=$(echo "$inputString" |  sed 's/[^A-Za-z0-9.]//g'  | sed 's/-*-//g' | sed 's/^-//' | sed 's/-$//')
    OnlyLetters=$(echo "$inputString" |  sed 's/[^A-Za-z.]//g'  | sed 's/-*-//g' | sed 's/^-//' | sed 's/-$//')
    OnlyNum=$(echo "$inputString" |  sed 's/[^0-9.]//g'  | sed 's/-*-//g' | sed 's/^-//' | sed 's/-$//')

if [ ! -z "$WithoutSpecialChar" ]
then
      echo "	String without Special Character :-  $WithoutSpecialChar"
          SpecialCharOutput=$(echo "$inputString" | tr --delete $WithoutSpecialChar)
fi

#-------for Letters
if [ ! -z "$OnlyLetters" ]
then
      echo "	Only Letters In String  :-  $OnlyLetters"
fi

#------for Numbers
if [ ! -z "$OnlyNum" ]
then
      echo "	only numerical digits In String :-  $OnlyNum"
fi

#-------- for special chars
if [ ! -z "$SpecialCharOutput" ]
then
echo "	only Special Char In the String :-  $SpecialCharOutput"
fi

