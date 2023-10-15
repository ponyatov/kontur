# `SDL_Init()`
## Initialize the SDL library.

https://wiki.libsdl.org/SDL_Init

```Cpp
int SDL_Init(Uint32 flags);
```

`flags` may be any of the following OR'd together:
- [[SDL_INIT_TIMER]]: timer subsystem
- [[SDL_INIT_AUDIO]]: audio subsystem
- [[SDL_INIT_VIDEO]]: video subsystem; automatically initializes the events subsystem
- [[SDL_INIT_JOYSTICK]]: joystick subsystem; automatically initializes the events subsystem
- [[SDL_INIT_HAPTIC]]: haptic (force feedback) subsystem
- [[SDL_INIT_GAMECONTROLLER]]: controller subsystem; automatically initializes the joystick subsystem
- [[SDL_INIT_EVENTS]]: events subsystem
- [[SDL_INIT_EVERYTHING]]: all of the above subsystems
- [[SDL_INIT_NOPARACHUTE]]: compatibility; this flag is ignored
