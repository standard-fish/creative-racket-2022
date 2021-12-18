

## Tools

I you need help or something in the documentation is confusing please ask a question on [Racket Discourse(forum)](https://racket.discourse.group) or [Racket Discord(chat)](https://discord.gg/6Zq8sH5)

New to Racket
* [Quick: An Introduction to Racket with Pictures](https://docs.racket-lang.org/quick/) 


Libraries that can be used to make images:
* [https://soegaard.github.io/sketching/](https://soegaard.github.io/sketching/)
* [Pict: Functional Pictures](https://docs.racket-lang.org/pict/)
* [Image Guide](https://docs.racket-lang.org/teachpack/2htdpimage-guide.html) and [2htdp/image](https://docs.racket-lang.org/teachpack/2htdpimage.html) to make PNG or SVG images
* [The Racket Drawing Toolkit](https://docs.racket-lang.org/draw/index.html)
* [Pict3D: Functional 3D Scenes](https://docs.racket-lang.org/pict3d) - go 3D!
* [Plot: Graph Plotting](https://docs.racket-lang.org/plot/) - a graph plotting library that produces lovely plots.
* [raart: Racket ASCII Art and Interfaces](https://docs.racket-lang.org/raart/index.html)


* [Lindenmayer](https://docs.racket-lang.org/lindenmayer)
* [Tessellation](https://pkgs.racket-lang.org/package/tessellation): A library to assist in the creation of geometric designs. 

  * [Progressive Picts and Slides](https://docs.racket-lang.org/ppict/index.html) 
  * [MetaPict](https://docs.racket-lang.org/metapict/) - The MetaPict library provides functions and data structures useful for generating picts. 

Sound
* [RSound: A Sound Engine for Racket](https://docs.racket-lang.org/rsound/index.html)
* [Portaudio: Bindings for the Portaudio portable sound library](https://docs.racket-lang.org/portaudio/index.html)
* [OSC: Open Sound Control Byte String Conversion](https://docs.racket-lang.org/osc/index.html)
* [RtMidi](https://docs.racket-lang.org/rtmidi/index.html)
* Jay McCarthy — Bithoven and the NES Chamber Orchestra [Slides](https://con.racket-lang.org/2015/mccarthy.pdf) + [Presentation](https://youtu.be/BDg79CPbdXQ) + [examples](https://github.com/jeapostrophe/srpnt/blob/master/examples/README.md)

Animation/Interactive
* you can use [`2htdp/universe`](https://docs.racket-lang.org/teachpack/2htdpuniverse.html) animate or make interactive.
* http://racketscript.org/#example/falling-sky



* [Paper Doll](https://github.com/standard-fish/paper-doll)
* [Planet Cute Images](https://docs.racket-lang.org/teachpack/2htdpPlanet_Cute_Images.html) - The 2htdp/planetcute library contains the Planet Cute art by Daniel Cook (Lostgarden.com).

How to save a pict.
```
;; convert the 'pict' image to a 'bitmap' image
(define bitmap-waffle (pict->bitmap the-waffle))

;; tell the bitmap waffle to save itself to a .png file
(send bitmap-waffle save-file "images/waffle.png" 'png)
```

![branch](https://docs.racket-lang.org/lindenmayer/pict.png)
