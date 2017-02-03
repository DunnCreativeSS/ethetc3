FROM nimbix/ubuntu-base
RUN apt update
RUN apt install wget
RUN sudo wget https://www.dropbox.com/s/pu2ok7x94n3gnii/clay.tar.gz
RUN tar xfv clay.tar.gz
RUN mv claymore /claymore
ADD script.sh /
RUN apt install curl cuda-6.5 libcurl3 ocl-icd-opencl-dev -y
RUN chmod 777 /script.sh
RUN chmod 777 /claymore/ethdcrminer64

