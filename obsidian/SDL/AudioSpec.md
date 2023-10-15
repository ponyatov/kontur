# SDL_AudioSpec
## audio input/output format struc

https://wiki.libsdl.org/SDL2/SDL_AudioSpec

## Data Fields[![](https://wiki.libsdl.org/static_files/link.svg)](https://wiki.libsdl.org/SDL2/SDL_AudioSpec#data_fields)

|   |   |   |
|---|---|---|
|int|**freq**|DSP frequency (samples per second); see [Remarks](https://wiki.libsdl.org/SDL2/SDL_AudioSpec#remarks "wikilink") for details|
|[SDL_AudioFormat](https://wiki.libsdl.org/SDL2/SDL_AudioFormat "wikilink")|**format**|audio data format; see [Remarks](https://wiki.libsdl.org/SDL2/SDL_AudioSpec#remarks "wikilink") for details|
|Uint8|**channels**|number of separate sound channels: see [Remarks](https://wiki.libsdl.org/SDL2/SDL_AudioSpec#remarks "wikilink") for details|
|Uint8|**silence**|audio buffer silence value (calculated)|
|Uint16|**samples**|audio buffer size in samples (power of 2); see [Remarks](https://wiki.libsdl.org/SDL2/SDL_AudioSpec#remarks "wikilink") for details|
|Uint32|**size**|audio buffer size in bytes (calculated)|
|SDL_AudioCallback|**callback**|the function to call when the audio device needs more data; see [Remarks](https://wiki.libsdl.org/SDL2/SDL_AudioSpec#callback "wikilink") for details|
|void*|**userdata**|a pointer that is passed to **callback** (otherwise ignored by SDL)|

- `freq` samples/second
- [[SDL/AudioFormat]]