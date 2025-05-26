for dir in ./*/centos7
do
    pushd $dir &> /dev/null
        # tmp var for short dirname
        tmp=$(dirname $dir)

        # strip all characters leading up to and including '/'
        appname=${tmp##*/}
        disttag=${dir##*/}

        docker build -t $USER/${appname}:${disttag} .
    popd &> /dev/null
done
