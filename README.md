# Videocall app with WebRTC

This code is an improvement from the codelab [Realtime communication with WebRTC](https://codelabs.developers.google.com/codelabs/webrtc-web/#0).


## What I've learnt
* Get video from your webcam
* Stream video with RTCPeerConnection
* Set up a signaling service to exchange messages
* Combine peer connection and signaling


# Node stuff
## Download node_modules dependencies
```
npm install
```

## Run node server
```
node index.js
```

Open http://localhost:8080 in two Chrome tabs and tatachan!

If you want to test it in your same wifi go to chrome://flags/#unsafely-treat-insecure-origin-as-secure
and add your local ip:port (ex: http://192.168.1.106:8080)
Now you can open http://<your_local_ip>:8080 in two Chrome tabs and tatachan!

# Docker stuff
## Make your docker image
```
docker build -t webrtc-server .
```

## View your docker images
```
docker images
```

## Run your docker image in a container
```
docker run --name webrtc-server --rm --init -p 8080:8080 webrtc-server
ctrl-c to close
```

## View your docker containers
```
docker ps -a
```

## Remove your old docker images and containers not used
```
docker system prune
```

# Heroku stuff
## Login
```
heroku login
heroku container:login
```

## Create docker image and deploy it
```
heroku container:push web -a webrtcsrv
heroku container:release web -a webrtcsrv
```

## View logs
```
heroku logs --tail -a webrtcsrv
```