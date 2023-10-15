# VLC
## [[remote video]]

## headless

- https://superuser.com/questions/664826/play-vlc-stream-without-interface

```shell
vlc --intf dummy
```

## network stream

### [[nginx/rtmp]]

### unicast UDP stream
sent by VLS or VLC's stream output
```shell
vlc -vvv udp:[@:server_port]
```

#### multicast UDP stream
```shell
vlc -vvv udp:@multicast_address[:server_port]
```

## HTTP stream

```shell
vlc -vvv http://www.example.org/your_file.mpg
```

## [[panoramix]]


## hw
### [[D3D11VA]]
### [[GTX 1050]]