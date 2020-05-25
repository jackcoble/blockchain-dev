FROM ubuntu:18.04
LABEL maintainer="Jack Coble <jackcoble@tutanota.com>"

# Install the basic dependencies to compile
RUN apt-get update
RUN apt-get install build-essential git libssl-dev libtool \
    autotools-dev automake pkg-config \ 
    bsdmainutils python3 libevent-dev wget \
    libboost-system-dev libboost-filesystem-dev \
    libminiupnpc-dev libzmq3-dev \
    libboost-test-dev libboost-thread-dev libboost-all-dev -y

# Install Berkeley DB
RUN apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:bitcoin/bitcoin
RUN apt-get -y update
RUN apt-get -y install libdb4.8-dev libdb4.8++-dev      

# Install Qt 5
RUN apt-get install libqt5gui5 libqt5core5a libqt5dbus5 \
    qttools5-dev qttools5-dev-tools libqrencode-dev \
    libprotobuf-dev protobuf-compiler -y

CMD ["bash"]