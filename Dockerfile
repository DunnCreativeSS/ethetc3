FROM nimbix/base-ubuntu-nvidia 
RUN wget https://www.dropbox.com/s/pu2ok7x94n3gnii/clay.tar.gz
RUN tar xfv clay.tar.gz
ADD script.sh /tmp
RUN /tmp/script.sh
