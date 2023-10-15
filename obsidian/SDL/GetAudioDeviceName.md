# SDL_GetAudioDeviceName()
## Get the human-readable name of a specific audio device.

- https://wiki.libsdl.org/SDL2/SDL_GetAudioDeviceName

![[SDL/AudioDeviceCodeSamples]]

## Syntax[![](https://wiki.libsdl.org/static_files/link.svg)](https://wiki.libsdl.org/SDL2/SDL_GetAudioDeviceName#syntax)

```
const char* SDL_GetAudioDeviceName(int index,
                                   int iscapture);
```

## Function Parameters[![](https://wiki.libsdl.org/static_files/link.svg)](https://wiki.libsdl.org/SDL2/SDL_GetAudioDeviceName#function-parameters)

- `index` the index of the audio device; valid values range 
	- from 0 
	- to [[SDL/GetNumAudioDevices]]() - 1
- `iscapture`
	- non-zero to query the list of recording devices, 
	- zero to query the list of output devices.
