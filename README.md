# blockchain-dev
🔨 A Docker-based blockchain development environment

I created this development environment as I found it extremely frustrating to keep on having to download Virtualbox and then configure a new Virtual Machine manually each time I wanted to do some sort of blockchain development. Also the fact I couldn't give VMs all of my resources turned me off from using them initially.

The purpose of this image is to solve all of the inconveniences above, and then some. I wanted the following when working in this environment:

* To edit code on my host system and then have any changes reflect in the container environment.
* Ability to launch QT wallets from within the container.

## Getting Started
I haven't published this image to Docker Hub yet as it still needs a bit of tweaking to make it what I consider as "production" ready, so you'll need to build the image yourself.

```bash
git clone https://github.com/jackcoble/blockchain-dev.git
cd blockchain-dev/
docker build -t blockchain-dev .
```

Once its built, you can use it on your system. Just navigate to the directory of your choice and run the following.

```bash
xhost +
docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix -v "$PWD":/root -e "DISPLAY=unix${DISPLAY}" -w /root blockchain-dev:latest bash
```

You can now open up your code editor on your host system and develop away as you normally would!