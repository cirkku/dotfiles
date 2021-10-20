curl --silent "https://www.youtube.com/c/$1/videos" |\
    grep -o -P '(?<=canonical" href="https://www.youtube.com/channel/)[^"]*'
