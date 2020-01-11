EXT=mp4
for i in *; do
    if [ "${i}" != "${i%.${EXT}}" ];then
        name=`echo "$i" | awk -F. '{print $1}'`
        echo --------NAME: $name--------
        ffmpeg -n -i "${i}" -vn -c:a copy "${name}.m4a"
    fi
done
