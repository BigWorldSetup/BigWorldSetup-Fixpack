#!/bin/bash
patchfile=$1

# Replace \ with / in paths listed in the patch:
awk '/^--- (.*)/ { gsub("\\\\", "/") } { print }' "$patchfile" > "$patchfile.tmp"
mv -f "$patchfile.tmp" "$patchfile"

# Inside each file specified by such a path, translate CRLF->LF:
files=($(awk '/^--- / {print $2}' $patchfile))
for filename in ${files[*]};
do
	if [[ $filename = *[^[:space:]]* && -f "$filename" ]]; then
		tr -d '\r' < $filename > "$filename".lf
    	echo "Translating CRLF->LF for $filename"
    	echo "Translating CRLF->LF for $filename" >> _ApplyPatches_verbose.log
		if [ "$?" -ne 0 ]; then
    		echo "CRLF->LF translation failed for $filename"
    		echo "CRLF->LF translation failed for $filename" >> _ApplyPatches_verbose.log
		else
    		echo "CRLF->LF translation succeeded for $filename"
    		echo "CRLF->LF translation succeeded for $filename" >> _ApplyPatches_verbose.log
			/bin/mv -f "$filename".lf $filename
		fi 
	else
		echo "Invalid filename: $filename"
		echo "Invalid filename: $filename" >> _ApplyPatches_verbose.log
	fi
done
