FROM nimbix/ubuntu-cuda 
RUN wget https://www.dropbox.com/s/pu2ok7x94n3gnii/clay.tar.gz
RUN tar xfv clay.tar.gz
ADD script.sh /tmp
RUN chmod 777 /tmp/script.sh
RUN chmod 777 /tmp/claymore/ethdcrminer64
