import std.stdio;
import sdl;

void main(string[] args) {
    // command line arguments
    foreach (argc, argv; args.enumerate)
        writefln("arg[%d] = <%s>", argc, argv);
    // media init
    if (!SDL_Init(SDL_INIT_VIDEO | SDL_INIT_AUDIO)) {
        writeln("SDL_Init: ", SDL_GetError());
        abort();
    }
    // shedule cleanup on main() function exit
    scope (exit)
        SDL_Quit();
}
