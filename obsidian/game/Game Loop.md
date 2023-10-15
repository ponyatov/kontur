# Game Loop
## Decouple the progression of game time from user input and processor speed.

- https://sunjay.dev/learn-game-dev/game-loop.html
- http://gameprogrammingpatterns.com/game-loop.html

A game loop runs continuously during gameplay. Each turn of the loop, it processes user input without blocking, updates the game state, and renders the game. It tracks the passage of time to control the rate of gameplay.

```Rust
loop {
  processInput(); // handleEvents();
  update();
  render();
}
```

## Batch mode

In the olden days of computer programming when everyone had beards, programs worked like your dishwasher. You dumped a load of code in, pushed a button, waited, and got results out. Done. These were batch mode programs — once the work was done, the program stopped.

## Interactive mode

You could have a live conversation with the program. It waited for your input, then it would respond to you. You would reply back, taking turns just like you learned to do in kindergarten. When it was your turn, it sat there doing nothing. Something like:

```Cpp
while (true)
{
  char* command = readCommand();
  handleCommand(command);
}
```

![[event loop]]

## A world out of time

If this loop isn’t blocking on input, that leads to the obvious question: how fast does it spin? Each turn through the game loop advances the state of the game by some amount. From the perspective of an inhabitant of the game world, the hand of their clock has ticked forward.

Meanwhile, the player’s actual clock is ticking. If we measure how quickly the game loop cycles in terms of real time, we get the game’s “[[frames per second]]”. If the game loop cycles quickly, the FPS is high and the game moves smoothly and quickly. If it’s slow, the game jerks along like a stop motion movie.

With the crude loop we have now where it just cycles as quickly as it can, two factors determine the frame rate. The first is **how much work it has to do each frame**. Complex physics, a bunch of game objects, and lots of graphic detail all will keep your [[CPU]] and [[GPU]] busy, and it will take longer to complete a frame.

The second is *the speed of the underlying platform*. Faster chips churn through more code in the same amount of time. Multiple cores, GPUs, dedicated audio hardware, and the OS’s scheduler all affect how much you get done in one tick.

## Seconds per second
http://gameprogrammingpatterns.com/game-loop.html#seconds-per-second

In early video games, that second factor was fixed. If you wrote a game for the NES or Apple IIe, you knew exactly what CPU your game was running on and you could (and did) code specifically for that. All you had to worry about was how much work you did each tick, with manual code scheduling.

These days, though, few developers have the luxury of knowing exactly what hardware their game will run on. Instead, our games must intelligently adapt to a variety of devices. This is the other key job of a [[game loop]]: **it runs the game at a consistent speed** despite differences in the underlying hardware.
