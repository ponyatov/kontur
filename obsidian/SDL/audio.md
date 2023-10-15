# [[SDL/SDL2|SDL]] audio
## Lazy Foo' [[audio/audio|audio]] Recording
- https://lazyfoo.net/tutorials/SDL/34_audio_recording/index.php

- [[SDL/GetNumAudioDevices]]
- [[SDL/GetAudioDeviceName]]
- [[SDL/OpenAudioDevice]]
- [[SDL/AudioSpec]]

There are two basic ways to handle audio output in an application: pushing the data out to a device, or having the data be pulled. **SDL currently uses the pull model**, with its audio [[callback]] functions and all. 

### Basic sound synth using [[SDL/audio]]
with some examples of frequency manipulation on a sine wave.

- https://gist.github.com/amirrajan/fa6ce9fdc8918e06ca9759c3358e4cd2

- [[SDL/memset]]
- [[SDL/zero]]
- [[SDL/memcpy]]
