# Mutliple Application Deployment </br>
  
Multiple Applications built on php, python, go and nodejs. To route the traffic over multiple application used name-based routing by a nginx proxy pass configuration.

## Prerequisites
   1. Docker (click [here](https://docs.docker.com/get-docker/) to see installation guide)
   2. Docker compose (click [here](https://docs.docker.com/compose/install/) to see installation guide)

## Building all docker images</br>

1. Navigate to base dir and execute `build-images.sh` file in order to build all images.
>  Help:
```bash
[root@ip-172-31-62-31 multiapp]# sh build-images.sh --help 
Usage:
  Syntax:

      ./build-images.sh <image-list> <version-app>

  eg:
      ./build-images.sh all 2020.1

      1.First argument: images list (all, php, py, go, node)
          all = all images
          py = Python only
          go = Go App only
          node = Node App only
          php = PHP app only
      2. Second argument: Application version( 2020.1)
```
> Build docker images
```bash
 ./build-images.sh all 2020.1
```

2. After building all images, execute deocker compose file to run the entire app.

```bash
$ docker-compose up -d
```
3. Access the app

```bash
    http://localhost/php     ---> php app
    http://localhost/py     ---> python app
    http://localhost/node     ---> node app
    http://localhost/go     ---> go app
```
