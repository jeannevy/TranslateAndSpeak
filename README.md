# Translate and Speak

## Description
The purpose of Translate and Speak script is for you to be able to listen to the translation of the text which is copied to the clipboard.
It works only on Mac OS and you can find the available voices you can pass as the --voice parameter: here: https://gist.github.com/mculp/4b95752e25c456d425c6#file-voices-txt

## Installation
Before run this program, install the following:
$ pip3 install deep_translator

For more information check the deep-translator documentation; https://deep-translator.readthedocs.io/en/latest/installation.html

## Usage
1. Copy the text to the clipboard you want to translate.
2. Issue the command.

### Parameters:
| name                   | default value |            description           |
| ---------------------- |:-------------:| --------------------------------:|
| -s / --source_language | auto          | Soruce language                   |
| -t / --target_language | hu            | Target language                  |
| -v / --voice           | Mariska       | Voice which says the translation |

### Example
$ ./translate_and_speak.sh -s en -t hu -v Mariska