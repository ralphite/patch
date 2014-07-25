if ! [ -d $1 ] || ! [ -d $2 ]; then
    echo
    echo Usage:
    echo
    echo patch.sh patch_files_folder dest_folder
    exit
fi

echo
echo To replace:
echo
for var in `find $1 -type f`; do 
    name=`basename $var`
    matches=`find $2 -type f -name $name`
    for var1 in $matches; do 
        echo mv $var1 ${var1}_backup
        echo mv $var $matches
    done
done

echo
echo To rollback:
echo
for var in `find $1 -type f`; do 
    name=`basename $var`
    matches=`find $2 -type f -name $name`
    for var1 in $matches; do 
        echo mv ${var1}_backup $var1
    done
done