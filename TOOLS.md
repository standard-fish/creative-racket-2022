

## Tools

Need help getting started?  
* [Quick: An Introduction to Racket with Pictures](https://docs.racket-lang.org/quick/) 

* <https://github.com/standard-fish/paper-doll> - provided by Matthew Flatt:
> 'In case it's of interest, enclosed is some code extracted from one of my talks. Start by running "demo.rkt". Someone might be interested to play with it or turn it into something better. Since there is no documentation, that someone would have to read the code to extract the various acceptable values for arguments. The most obvious direction for improvement is that choices like hair style and color should have been separated into different arguments."

Having trouble? - ask a question on [racket-users]().

Libraries that can be used to make images:
* [Pict: Functional Pictures](https://docs.racket-lang.org/pict/) - The `pict` library is one of the standard Racket functional picture libraries. The other is `2htdp/image`.
  * [Progressive Picts and Slides](https://docs.racket-lang.org/ppict/index.html) 
  * [Metapict](https://docs.racket-lang.org/metapict/)   - The metapict library provides functions and data structures useful for generating picts. 
* [2htdp/image](https://docs.racket-lang.org/teachpack/2htdpimage.html) - The `2htdp/image` library is one of the standard Racket functional picture libraries. The other is `pict`.
* [Pict3D: Functional 3D Scenes](https://docs.racket-lang.org/pict3d) - go 3D!
* [Plot: Graph Plotting](https://docs.racket-lang.org/plot/) - a graph plotting library that produces lovely plots.
* [Lindenmayer](https://docs.racket-lang.org/lindenmayer) - _The Lindenmayer language provides a language for running and interpreting Lindenmayer Systems. In general L-systems are useful for modeling plant growth, procedural content generation, and making pretty pictures:_
* [raart: Racket ASCII Art and Interfaces](https://docs.racket-lang.org/raart/index.html) - The raart module provides an algebraic model of ASCII that can be used for art, user interfaces, and diagrams.
* [Planet Cute Images](https://docs.racket-lang.org/teachpack/2htdpPlanet_Cute_Images.html) - The 2htdp/planetcute library contains the Planet Cute art by Daniel Cook (Lostgarden.com).


How to save a pict
```
;; convert the 'pict' image to a 'bitmap' image
(define bitmap-waffle (pict->bitmap the-waffle))

;; tell the bitmap waffle to save itself to a .png file
(send bitmap-waffle save-file "images/waffle.png" 'png)
```


![Planet Cute Images](https://docs.racket-lang.org/teachpack/pict.png)

![branch](https://docs.racket-lang.org/lindenmayer/pict.png)
