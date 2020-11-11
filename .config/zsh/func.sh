# Custom functions

llr_right(){
    if [ -z $1 ]; then
        echo "No output file specified."
    else
        ffmpeg -y \
            -framerate 30 \
            -f x11grab -video_size 1920x1080 \
            -i :1+1600 -f pulse -i 0 \
            -c:v libx264rgb -crf 18 -preset ultrafast \
            $1
    fi
}

compress_video(){
    if [ -z $1 ] || [ -z $2 ]; then
        echo "Usage:"
        echo "compress_video <input_file> <output_file>"
    else
        ffmpeg -y\
            -i $1 \
            -c:v libx264rgb -preset veryslow \
            $2
    fi
}

# Open a pdf with evince and pipe stderr to the depths of null
pdfread(){
    if [ -z $1 ]; then
        echo "No file provided to read."
    else
        evince $1 2>/dev/null&
    fi
}

# Create a new OpenOffice Document in the current directory with filename $1
new_odt(){
    if [ -z $1 ]; then
        echo "No filename detected."
    fi
    echo "Creating $1.odt"
    cp ~/docs/.blank.odt ./$1.odt
    lowriter $1.odt &
}

# Paste png data from xclip in current directory with filename $1
xcp(){
    if [ -z $1 ]; then
        echo "No filename detected."
    fi

    xc_paste > $1.png
}

chbg()
{
    if [ -z $1 ]; then
        echo "Need a image to set!"
    fi
    feh --bg-fill $1
    wal -i $1
    xrdb ~/.Xresources
}


# What is this garbage?
copyfile()
{
    if [ -z $1 ]; then
        echo "Need a file to copy!"
    fi

    echo "$1)" > temp
    cat $1 >> temp
    echo "\n\n" >> temp
    xclip -selection clipboard -i < temp
    rm temp
}

new_cpp()
{
    cp ~/dev/.template/cpp/Makefile .
    cp ~/dev/.template/cpp/main.cpp .
}
