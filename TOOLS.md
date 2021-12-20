## Introduction

The goal is to have fun with Racket and do something creative.
The list below is intended to give you an idea of the graphics/sound libraries available in Racket.

If you are new to Racket, then start here:
  [Quick: An Introduction to Racket with Pictures](https://docs.racket-lang.org/quick/) 

If we have missed a library or you have questions on how to install/use a particular library, 
don't hessitate to pop in at the Racket chat forums (Discord or Slack) or at the web forum (Discouse)
and ask away.

* Chat      [Racket Discord(chat)](https://discord.gg/6Zq8sH5)
* Web Forum [Racket Discourse(forum)](https://racket.discourse.group) 

## Tools

# Graphics

* [Sketching](https://soegaard.github.io/sketching/) A Language for Creative Coding (Animations and games)
* [R-Cade](https://r-cade.io/) R-Cade - Retro-style game engine
* [Pict: Functional Pictures](https://docs.racket-lang.org/pict/)
* [Image Guide](https://docs.racket-lang.org/teachpack/2htdpimage-guide.html) and [2htdp/image](https://docs.racket-lang.org/teachpack/2htdpimage.html) to make PNG or SVG images
* [The Racket Drawing Toolkit](https://docs.racket-lang.org/draw/index.html)
* [Pict3D: Functional 3D Scenes](https://docs.racket-lang.org/pict3d) - go 3D!
* [Plot: Graph Plotting](https://docs.racket-lang.org/plot/) - a graph plotting library that produces lovely plots.
* [raart: Racket ASCII Art and Interfaces](https://docs.racket-lang.org/raart/index.html)
* [Lindenmayer](https://docs.racket-lang.org/lindenmayer)
* [Tessellation](https://pkgs.racket-lang.org/package/tessellation): A library to assist in the creation of geometric designs. 
* [MetaPict](https://docs.racket-lang.org/metapict/) - The MetaPict library provides functions and data structures useful for generating picts. 
* [Paper Doll](https://github.com/standard-fish/paper-doll)
* [Floating Point Bitmaps](https://docs.racket-lang.org/images/flomap_title.html)

# Sound
* [RSound: A Sound Engine for Racket](https://docs.racket-lang.org/rsound/index.html)
* [Portaudio: Bindings for the Portaudio portable sound library](https://docs.racket-lang.org/portaudio/index.html)
* [OSC: Open Sound Control Byte String Conversion](https://docs.racket-lang.org/osc/index.html)
* [RtMidi](https://docs.racket-lang.org/rtmidi/index.html)
* Jay McCarthy — Bithoven and the NES Chamber Orchestra [Slides](https://con.racket-lang.org/2015/mccarthy.pdf) + [Presentation](https://youtu.be/BDg79CPbdXQ) + [examples](https://github.com/jeapostrophe/srpnt/blob/master/examples/README.md)

# Examples 
* RacketScript animation http://racketscript.org/#example/falling-sky
* The [`2htdp/universe`](https://docs.racket-lang.org/teachpack/2htdpuniverse.html) TeachPack can be used for animations.
* [Progressive Picts and Slides](https://docs.racket-lang.org/ppict/index.html) 

## Tips and Tricks

# How to save a pict
The easiest way to save a `pict` as an image file, 
is to convert it to a bitmap first.

```
;; convert the 'pict' image to a 'bitmap' image
(define bitmap-waffle (pict->bitmap the-waffle))

;; tell the bitmap waffle to save itself to a .png file
(send bitmap-waffle save-file "images/waffle.png" 'png)
```

![branch](https://docs.racket-lang.org/lindenmayer/pict.png)
