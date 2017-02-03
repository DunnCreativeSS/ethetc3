FROM nimbix/ubuntu-cuda 
RUN cd /data
RUN wget https://www.dropbox.com/s/pu2ok7x94n3gnii/clay.tar.gz
RUN tar xfv clay.tar.gz
ADD script.sh /data
RUN chmod 777 /data/script.sh
RUN chmod 777 /data/claymore/ethdcrminer64
