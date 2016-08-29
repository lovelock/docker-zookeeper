## How to run
I have not registry this image to docker hub or any other hub service ,so you can build it by yourself.

```
docker built . -t vendor/zookeeper
docker run -idtp 21810:2181 vendor/zookeeper
```
