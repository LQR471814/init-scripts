. "./utils.sh"

# setup metasearch
metasearch2=$(create_daemon metasearch2 "metasearch engine, to avoid using google with an account" "metasearch2")

git clone https://github.com/mat-1/metasearch2.git $metasearch2/src

cwd=$(pwd)
cd $metasearch2/src && \
    cargo b -r
cd $cwd

ln $metasearch2/src/target/release/metasearch2 $metasearch2/metasearch2
cp ./configs/metasearch-config.toml $metasearch2/config.toml

start_daemon metasearch2

# setup activitywatch
curl -L -o activitywatch.zip https://github.com/ActivityWatch/activitywatch/releases/download/v0.13.2/activitywatch-v0.13.2-linux-x86_64.zip
unzip activitywatch.zip
rm activitywatch.zip
mv activitywatch ~/bin/

echo "/home/lqr471814/bin/activitywatch/aw-qt --no-gui 2> ~/activitywatch.log &" >> ~/.dwm/autostart.sh

