#!/bin/bash

echo "the \$0 is $0"

bin=`dirname "$0"`
bin=`cd "$bin"; pwd`

B=FALSE
FILEPATH=""
P=FALSE

declare -i numOfArgs=$#
let numOfArgs++

while [ $# -eq 0 -o $numOfArgs -ne $OPTIND ]; do

  #echo "OPTIND is $OPTIND"

  getopts "ha:bc:fF" optKey
  if [ "$optKey" == "?" ]; then
    optKey="h"
  fi

  #echo "optKey is $optKey"
  #echo "OPTIND is $OPTIND"

  case $optKey in 
  	h) echo -en "\nUsage of ${0##*/}:\n\n"
	   echo -en " -h Print this message and exit. \n\n"
	   echo -en " -a Define a variable named A. \n\n"
	   echo -en " -b Set an option named B. \n\n"
	   echo -en " -c Define a INT variable named C. \n\n"
	   echo -en " -f Print the data File's path. \n\n"
	   echo -en " -F Print the data file's physical path. \n\n"
	   exit 0;;
	a)
		A="${OPTARG}"
		;;
	b)
		B=TRUE
		;;
	c)
		PARA=${OPTARG/[0-9]*/}
		if [ "$PARA" == "" ]; then 
		  C=$OPTARG
		else
		  echo "Error!! Variable C should be an integer!"
		  exit -1
		fi
		;;
	f)
		FILEPATH="$bin/data"
		;;
	F)
		P=TRUE
		;;
  esac
done

if [ "$A" != "" ]; then
  echo "Variable A is $A"
fi

if [ "$B" == "TRUE" ]; then
  echo "Option B is set true"
fi

if [ ! -z $C ]; then
  echo "Variable C is $C"
fi

if [ "$FILEPATH" != "" ]; then
  echo "The data file's path is: $FILEPATH"
fi 

if [ "$P" == "TRUE" ]; then
  Bin=`readlink -f "$0"`
  Bin=`dirname "$Bin"`
  Bin=`cd "$Bin"; pwd`
  FILEPATH="$Bin/data"
  echo "The data file's physical path is: $FILEPATH"
fi
