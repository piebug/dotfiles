export USR_BIN=/usr/bin/
export SED=$USR_BIN/sed.exe
export ECHO=$USR_BIN/echo.exe
export PATH=$($ECHO $PATH | $SED -E 's/C:/\/c/g' | $SED -E 's/\\/\//g' | $SED -E 's/;/:/g')
