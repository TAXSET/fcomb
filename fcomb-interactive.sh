# GET BASIC INPUTS

read -p "Source file directory: " P_SRCPATH
read -p "Output file directory: " P_OUTPATH

P_FILEPREFIX=false
while true; do
    read -p "Seperate contents with file names? (y/n) " yn
    case $yn in
        [Yy]* ) P_FILEPREFIX=true; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

OUTFILE_PREFIX=$(date +%s)

shopt -s nullglob
farr=($P_SRCPATH/*)



#
# VERIFY INPUTS
#

echo "----------------------------"
echo ""
echo "  Source directory: ${P_SRCPATH}"
echo "  Destination file: ${P_OUTPATH}/${OUTFILE_PREFIX}-combined.txt"
echo ""
echo "  Include filenames: ${P_FILEPREFIX}"
echo ""
echo "  Files to combine: ${#farr[@]}"
echo ""
echo "-----------------------------"

while true; do
    read -p "The info above is correct and I wish to proceed. (y/n) " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done



#
# MAIN LOGIC
#

echo "Creating destination path."
mkdir -p $P_OUTPATH
echo "Combinding total of ${#farr[@]} files."
for ((i=0; i<${#farr[@]}; i++)); do
	echo "Appending ${farr[$i]}"
	if [ $P_FILEPREFIX == true ]; then
		echo -e "${farr[$i]}:\n" >> $P_OUTPATH/${OUTFILE_PREFIX}-combined.txt
	fi
	cat "${farr[$i]}" >> $P_OUTPATH/${OUTFILE_PREFIX}-combined.txt
	echo -e "\n\n" >> $P_OUTPATH/${OUTFILE_PREFIX}-combined.txt
done



#
# WRAPUP
#

echo "Done."
