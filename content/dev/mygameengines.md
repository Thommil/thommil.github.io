+++
title = "My game engines"
description = "My love affair with the game engines. The story of all the gamers who have become developers, from fantasy to disillusion."
tags = [
    "opengl",
    "android",
    "development",
    "game",
]
date = "2020-02-10"
categories = [
    "Development",
    "Game",
]
menu = "main"
+++

## TL;DR
My love affair with the game engines. The story of all the gamers who have become developers, from fantasy to disillusion.

## Full story
### One upon a time...
My childhood was marked by several of the big names of video games:
<div class="gallery">
    <div>
        <img src="/images/wolfenstein3D.png" alt="Wolfenstein 3D - John Carmack -  1992"/>
        <figcaption>Wolfenstein 3D - John Carmack - 1992</figcaption>
    </div>
    <div>
        <img src="/images/ultima7.jpeg" alt="Ultima 7 - Richard Garriott - 1992"/>
        <figcaption>Ultima 7 - Richard Garriott - 1992</figcaption>
    </div>
    <div>
        <img src="/images/anotherworld.png" alt="Another World - Eric Chahi - 1991"/>
        <figcaption>Another World - Eric Chahi - 1991</figcaption>
    </div>
</div>

If you want to know a little more about their work, go to [Fabien Sanglard](https://fabiensanglard.net/)'s website.

All these creators made me dream and certainly contributed to becoming a developer, motivated by the desire to create games and understand how to do it.

For the record, independent developers became obsolete in the late 1990s with the advent of big game companies, the rise of 3D games and the overwhelming power of this market. This is later than people like [Markus Person](https://en.wikipedia.org/wiki/Markus_Persson), [Maddy Thorson](https://en.wikipedia.org/wiki/Maddy_Thorson) or [Lucas Pope](https://fr.wikipedia.org/wiki/Lucas_Pope) have come back to the fore to offer us these incredible games with unique design.
<div class="gallery">
    <div>
        <img src="/images/minecraft.jpeg" alt="Minecraft - Markus Person"/>
        <figcaption>Minecraft - Markus Person</figcaption>
    </div>
    <div>
        <img src="/images/towerfall.jpeg" alt="Towerfall - Maddy Thorson"/>
        <figcaption>Towerfall - Maddy Thorson</figcaption>
    </div>
    <div>
        <img src="/images/obradinn.png" alt="Return of the Obra Dinn - Lucas Pope"/>
        <figcaption>Return of the Obra Dinn - Lucas Pope</figcaption>
    </div>
</div>

From a personal point of view, therefore, I started my career as a developer when precisely this profession was no longer viable in video games, it was later, with the experience and the necessary time that I decided try to accomplish this old dream and throw myself into video games programming.

With ideas in mind, I studied the different market engines, behemoths like [Unreal Engine](https://en.wikipedia.org/wiki/Unreal_Engine), [Unity](https://en.wikipedia.org/wiki/Unity_%29game_engine%29) which are powerful but totally oversized for my needs. Simpler engines like [LibGDX](https://libgdx.com/), [ImpactJS](https://impactjs.com/) or [Torque3D](http://www.torque3d.org/), incredible tools but which systematically do not meet all my requirements.

During my various tests, I also noticed my lack of knowledge in the field: OpenGL, entities, sound, physics... 

**So I decided to start from the beginning, open the hood and build my own engine.**

As this post is not intended to tell the history of OpenGL, it is my personal experience, what I learned and understood.

### OpenGL from scratch 
In order to understand how 3D engines work, I decided to learn OpenGL. The idea being to port my games to mobile, it is therefore with OpenGL 1 that I have
started my training (OpenGLES 2 support was limited then).

In my opinion, if this version of the API is totally obsolete today, it is a good entry point to understand how the OpenGL pipeline works,
the different steps and especially matrices... 

**Matrices, my first nightmare!**

If the notions of transposed matrix, cross and dot products have remained in a vague memory in your mind and the idea of ​​programming a 3D engine comes to you, ask yourself this first question: *Am I motivated enough to redo the entire high school math program?*

If so, you will discover the joys of model or projection matrices. The magic of lighting with vector calculations and the hell of OpenGL debugging with endless black screens.
* [Lighthouse3d](http://www.lighthouse3d.com/) - tutorials and resources,
* [learnopengl.com](https://learnopengl.com/) - another set of tutorials,
* [NeHe](https://nehe.gamedev.net/) - step by step tutorials,
* [Kronos](https://www.khronos.org/opengl/) - official OpenGL website.

At the end of this OpenGL 1 self-training, I understood the limits of this API, in particular the heavy programming inherent in the model and especially the scam of extensions. The OpenGL 1 model being so closed, it is this avalanche of non-standardized extensions with approximate support by manufacturers that allows to
create advanced effects and optimize your renderings.

I decided to take a look at OpenGL 2 and the shaders. The rupture introduced by this second version is fundamental since it
is still used in the latest versions of OpenGL and also in competing APIs like Direct3D. New APIs like [Vulkan](https://en.wikipedia.org/wiki/Vulkan_%29API%29) or [Metal](https://en.wikipedia.org/wiki/Metal_%28API%29) (Apple) are trying new approaches but are still little exploited (2020).

OpenGL 2 is the OpenGL 1 pipeline coupled with a new concept: shaders. Shaders are small programs that will define all your geometry and rasterization logic for your models. If you've suffered with math in OpenGL, prepare to die with these critters.

The cool part is the flexibility of programming, the power of rendering and the possibilities offered by this technology. I highly recommend you take a look at [Shadertoy](https://www.shadertoy.com/), an incredible showcase of shaders by great artists and programmers.

In the end, after weeks of training in math, OpenGL 1, OpenGL 2 and shaders (GLSL), it's a minimalist engine that runs on my Android, the video below
shows the few tests I was able to do with it:

<div class="youtube">
{{< youtube dZfXdXALEQA >}}
<figcaption><i class="fab fa-github" aria-hidden="true"></i><a herf="https://github.com/thommil/libgl">https://github.com/thommil/libgl</a></figcaption>
</div>

When I got there, I realized that the performances were not good enough, the graphical glitches were numerous and the amount of work to achieve a full scene
covering all lighting and shadow needs was way too big.

I left this first attempt aside, happy to have learned and understood the basics but aware of **my mistake in wanting to start from scratch**.

### Mixed approach: forking
It was a few years later that the desire to get back to it came with the arrival of the [Pixel Art](https://en.wikipedia.org/wiki/Pixel_art) fashion and 2D games.

This time, I put all my knowledge to work, leaving out that damn third dimension that ultimately makes things a little uglier (N64 games, really?).

Based on my first experience, I decided not to start from scratch but to use a proven 2D engine. First trial, choose it, there were many of them and the only way to make the right choice is to test them. Know if you are comfortable with the API, the programming paradigm, check performance, portability, functionalities. Once again, it's a long job, but also more fun.

In the end, being a Java expert at the time and quite amazed by the performance of [LibGDX](https://libgdx.com/), I chose this engine. If I can give a good advice to developers who want to code their own game engine, it's to start from an existing one with an active community, check the quality of the code, fork and add new features.

So it's a fork of this engine that I used, integrating a library full of potential, [LiquidFun](https://google.github.io/liquidfun) (thanks to the work of [finnstr](https://github.com/finnstr)), which allowed effects on liquids and soft bodies.

In the end, I did a complete engine refactoring by modifying several aspects and adding features. The video below shows the different possibilities offered by my new version:

<div class="youtube">
{{< youtube 3-72FmmHE1c >}} 
<figcaption><i class="fab fa-github" aria-hidden="true"></i><a herf="https://github.com/thommil/GameRuntime">https://github.com/thommil/GameRuntime</a></figcaption>
</div>

### My first "game"
It was from this new base that I decided to create my first game: **Softbuddy**. The idea being to create a puzzle-oriented platform game based on a
liquid character. The possibilities offered by [LiquidFun](https://google.github.io/liquidfun) allowing me to have a character that can divide, change shape and substance, ideas were arriving in large numbers and it was with a superb intro that I started this AAA:

<div class="youtube">
{{< youtube N28yXlFhIeQ >}}
<figcaption>Softbuddy intro</figcaption>
</div>

Technically, it worked. Graphically, for a first try, it was rather encouraging but it was a list of impediments that totally discouraged me in this
business.

#### Level design
If this first screen was motivating, the rest was a struggle. In order to organize myself and prepare the entire game, I decided to write a first storyboard. This task is complex, the writing of the different jigsaw puzzles, the overall consistency and especially making it interesting for the players is a real challenge.

I understood then that it was necessary to proceed step by step, to establish outlines, a framework and to produce screens and puzzles as they went along. 

The storyboard is still a work in progress...

#### Graphical design
The first levels were specified, so I had to produce the graphics resources. Being of a very low level in drawing, it was towards a 3D approach projected on a 2D game that I tried to compensate for my shortcomings. I tested a few tools that are as expensive as they are complex:
* [Blender](https://www.blender.org/), OK, it's free but frankly, this interface, I fully respect the work done on this tool but use it is a torture,
* [3DSMax](https://www.autodesk.fr/products/3ds-max/overview) is finally the "PRO" version of Blender, it is powerful, beautiful and totally incomprehensible,
* [Maya](https://www.autodesk.fr/products/maya/overview), a tool that I finally understood, more accessible but still expensive,
* [ZBrush](http://pixologic.com/features/about-zbrush.php), a 2.5D editor, complex to use yet, requiring a powerful machine but quite incredible too.

All of these tools are excellent, powerful, and fitted my needs. I still had to understand that my lack of drawing skills would not be compensated by
their usage. Mastering them and producing assets would consume all my time anyway without any real guarantee of results.

#### Sound design
Sound effects and music. Adapted to my game with a pleasant rendering and without copyright constraint. I knew from the start that this part would be a huge impediment. To be honest, I did not even broach the subject, I had already given up when I started Blender...

**Obviously, the creative part of a video game might be more complex than I thought!**

### Last try: a framework
So, do we give up?

Not really, while the idea of ​​making a game may have remained in the stage of teenage fantasies, my skills as a developer and the experience I gained over the years were not wasted time. On the contrary, it was following the discovery of [Golang](https://golang.org/) that I wanted to do a last
game engine. 

Based on my previous attempts, using existing libraries and frameworks to produce a new game engine written in Go.

The reason is simple, to have fun with the language which offers a real breath of fresh air and to improve my knowledge with it. In addition, the engines available at the time in Go all had a critical issue (lack of portability, missing functionalities, overall quality...).

So I decided to do a real painstaking job, start from an existing base with a good potential [G3N](https://github.com/g3n/engine), improve portability (Mobile and Web) and add features, try it below (Chrome & Firefox only):

{{< iframe "https://thommil.github.io/tge" >}}

This project motivated the original G3N team to improve the portability of their engine based on my work and
the few stars awarded to my Github make up for the time spent reviewing my math basics and struggling with 3D authoring tools:

<i class="fab fa-github" aria-hidden="true"></i>[https://github.com/Thommil/tge](https://github.com/Thommil/tge)

### Conclusion
<div class="big-img">
    <img src="/images/4xw89e.jpg" alt="cool but never again"/>
    <figcaption>cool but never again</figcaption>
</div>