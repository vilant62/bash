#!/bin/bash
#script parameters:
for i in "$@"
do
	case $i in 
		-h*|--help*|"?")
           SHOWHELP="TRUE"
           shift
            ;;
		--database=*)
			DATABASE="${i#*=}"
			shift # past argument=value
			;;
		--path=*)
			BACKUPPATH="${i#*=}"
			shift #past argument=value
			;;
		--type=*)
			BACKUPTYPE="${i#*=}"
			shift
			;;
		--reintex=*)
			REINDEX="${i#*=}"
			shift
			;;
		--premium=*)
			PREMIUM="${i#*=}"
			shift
			;;

	esac
done
