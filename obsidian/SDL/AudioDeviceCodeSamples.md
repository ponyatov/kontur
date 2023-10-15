# AudioDeviceCodeSamples

```Cpp
for (auto iscapture = 0; iscapture <= 1; iscapture++)
	for (auto i = 0; i < SDL_GetNumAudioDevices(iscapture); i++) {
		std::cerr << "capture:" << iscapture << " " << i << ": " << '['
		<< SDL_GetAudioDeviceName(i, iscapture) << ']'
		<< std::endl;
}
```

- [[SDL/GetAudioDeviceName]]
- [[SDL/GetNumAudioDevices]]

### AU-BM10

- MAONO [[AU-BM10]] Analog Stereo
- MAONO [[AU-BM10]] Mono


[[fx]]