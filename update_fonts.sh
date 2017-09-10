mkdir -p downloads/fonts
cd downloads/fonts
fonts=(rachana meera manjari raghumalayalamsans dyuthi keraleeyam uroob chilanka karumbi)
for font in ${fonts[@]}; do
        mkdir font
        cd font
        wget "https://gitlab.com/smc/fonts/${font}/-/jobs/artifacts/master/download?job=release" -O artifacts.zip
        unzip artifacts.zip
        rm artifacts.zip
        mv build/* .
        rm -rf build
        cd ../
done
