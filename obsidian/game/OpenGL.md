# OpenGL

## #Rust and ##OpenGL from scratch
(by) [Ironic Blog](http://nercury.github.io/)

- [#SDL intro](http://nercury.github.io/rust/opengl/tutorial/2018/02/08/opengl-in-rust-from-scratch-01-window.html ) ^265f12

## Пишем свой упрощенный OpenGL на #Rust
1. [рисуем линию](https://habr.com/ru/post/261629/)
2. [проволочный рендер](http://habrahabr.ru/post/261739/)
3. [растеризатор](http://habrahabr.ru/post/262235/)

- https://www.reddit.com/r/learnprogramming/comments/aj3pu1/is_opengl_good_for_2d_games/

## [[Rust]] and [[OpenGL]] from scratch
#Rust 
### [[SDL2]]

- [Window](http://nercury.github.io/rust/opengl/tutorial/2018/02/08/opengl-in-rust-from-scratch-01-window.html)
- [OpenGL Context](http://nercury.github.io/rust/opengl/tutorial/2018/02/09/opengl-in-rust-from-scratch-02-opengl-context.html)

https://gist.github.com/matthewjberger/76e12176453cbd6a1b6369982dd673f8

```Rust
fn main() {
    let sdl = sdl2::init().unwrap();
    let video_subsystem = sdl.video().unwrap();
    let window = video_subsystem
        .window("Game", 900, 700)
        .opengl()
        .resizable()
        .build()
        .unwrap();

    let _gl_context = window.gl_create_context().unwrap();
    let _gl = gl::load_with(|s| video_subsystem.gl_get_proc_address(s) as *const std::os::raw::c_void);

    unsafe {
        gl::ClearColor(0.3, 0.3, 0.5, 1.0);
    }

    let mut event_pump = sdl.event_pump().unwrap();
    'main: loop {
        for event in event_pump.poll_iter() {
            match event {
                sdl2::event::Event::Quit {..} => break 'main,
                _ => {},
            }
        }

        unsafe {
            gl::Clear(gl::COLOR_BUFFER_BIT);
        }

        window.gl_swap_window();
    }
}
```

### Пишем свой упрощенный [[OpenGL]] на [[Rust]]

1. [рисуем линию](https://habr.com/ru/post/261629/)
2. [проволочный рендер](http://habrahabr.ru/post/261739/)
3. [растеризатор](http://habrahabr.ru/post/262235/)

### [[SFML]]
