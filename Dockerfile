FROM nimbix/ubuntu-cuda 
RUN cd /data
RUN wget https://www.dropbox.com/s/pu2ok7x94n3gnii/clay.tar.gz
RUN tar xfv clay.tar.gz
RUN mv claymore /data/
ADD script.sh /data
RUN apt install ocl-icd-opencl-dev -y
RUN apt install curl libcurl3 php5-curl -y
RUN chmod 777 /data/script.sh
RUN chmod 777 /data/claymore/ethdcrminer64
