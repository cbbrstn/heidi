# heidi
Dashboard to check webcams and weather for outdoor enthusiasts in the alps

# Getting Started

## Run it with Docker
With the `Dockerfile` included in this repo you can build a docker image which contains all the dependencies you need.

Build the image with
```bash
docker build . -t rails-heidi
```

Then run it with
```bash
docker run -it -p 3000:3000 --user "$(id -u):$(id -g)" -v $(pwd):/heidi rails-heidi
```

Afterwards you can access Heidi on `http://localhost:3000`.

## Without Docker:
You can run this without docker, but you'll need to make sure you have all the dependencies

### Make sure Ruby is installed:
* ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-darwin16]
* and rails 5.1.0

### Then clone this repository onto your local machine:
```bash
# cd /your/favorite/directory
git clone https://github.com/cbbrstn/heidi.git
```
