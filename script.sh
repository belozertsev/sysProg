# Introduction
echo "Applicaton: CD-disk images hashsum chekcker"
echo "Description: Using this app you can check or implant md5 hashsum to your CD-disk image"
echo "Developer: Eduard Belozertsev from 729-1 group"

# Loop
shouldLoop=true
while $shouldLoop
do
    # User input
    read -p "Enter CD-disk image path here: " path
    echo $path

    # Input validation
    if ! [ -d "$path" ]
    then
        echo "You entered incorrect path [path=$path]" > /dev/stderr
        continue
    fi

    # Hashsum validation
    res=$(sudo checkisomd5 CD.iso)
    echo $res
done
