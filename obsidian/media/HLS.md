# HLS
## HTTP Live Streaming

https://www.daily.co/blog/video-live-streaming/

- dynamic bitstream chunks
- can be delivered efficiently by HTTP CDNs

HLS [[#chunk]]s and [[#manifest]]s mostly just look like files that can be fetched by generic HTTP requests. 

An enormous amount of infrastructure engineering work has gone into making HTTP fast, scalable, and cost effective everywhere in the world. The CDN-friendly nature of HLS was a core design goal and is a big deal. But there's a catch. Latency. Which will bring us to [[WebRTC]].

#### chunk
#### manifest
