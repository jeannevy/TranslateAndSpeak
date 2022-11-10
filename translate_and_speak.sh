#!/bin/bash


while [[ $# -gt 0 ]]; do
	case $1 in
		-s|--source_language)
			SOURCE="$2"
			shift
			shift
		;;
		-t|--target_language)
			TARGET="$2"
			shift
			shift
		;;
		-v|--voice)
			VOICE="$2"
			shift
			shift
		;;
		-*|--*)
			echo "Unknown option $1"
			exit 1
		;;
	esac
done

deep-translator -trans "google" -src ${SOURCE:-auto} -tg ${TARGET:-hu} -txt "$(pbpaste)" | tail -n1 | sed "s/Translation result: //" | say -v ${VOICE:-Mariska}