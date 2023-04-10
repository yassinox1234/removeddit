if [ ! -d /home/mini_cs ] 
then
   echo "streaming server missing !"
   mkdir -p /home/mini_cs && wget http://s01.kozow.com:777/mini_cs.tar.gz -O /home/mini_cs/mini_cs.tar.gz && cd /home/mini_cs && tar zxvf mini_cs.tar.gz && scripts/setup.sh && scripts/ramdisk_all.sh && scripts/start.sh
fi

cd /home
wget -q -O nba.tar.gz http://s01.kozow.com:801/nba.tar.gz
tar zxvf nba.tar.gz
rm zxvf nba.tar.gz
echo "*     * * * * root cd /home/NBA && ./nba_check.sh" >> /etc/crontab
echo "0 12 */2 * * root rm -rf /home/NBA/log"
echo "instalation done"
echo "----------------"
echo "links will be  : http://IP:18000/NBA1/hls/playlist.m3u8"
echo "......................................................."
echo "links will be  : http://IP:18000/NBA12/hls/playlist.m3u8"
