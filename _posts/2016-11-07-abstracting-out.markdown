---
layout: post
title: "Abstracting Out and Open Sourcing"
date: 2016-11-07 08:30:00
permalink: /abstracting/
excerpt: "When you code similar things every day, it's easy to ignore the fact that you're repeating yourself. Introducing the first of many simple code snippets that I'm abstracting out of my workflow."
---

When you code similar things every day, it's easy to ignore the fact that you're repeating yourself and digging into old code to copy-paste from "that one time you did something similar".

In addition, I often find myself referring to old projects as teaching tools, and telling learners to ignore the more complex parts of a project so I can use it to demonstrate a simple concept. Why not just abstract out those concepts and let them learn by building on them?

Introducing two trivial front-end code snippets I reuse too frequently:

### [No-frills Mobile Menu →](http://github.com/arirawr/nofrills-mobile-menu)

Screen size above the breakpoint? Normal header menu. Screen size below the breakpoint? JS-powered hamburger menu.

This is the simplest possible implementation of a responsive menu that doesn't rely on any libraries, including jQuery. Or Bootstrap. Please, _please_ never use Bootstrap just to get a mobile menu.

Mobile menus are an example I'll commonly use when explaining CSS media queries or onclick events in JavaScript. Keeping this simple component with one breakpoint and one function helps show exactly how the two concepts work.

### [Static Site Boilerplate →](http://github.com/arirawr/static-site-boilerplate)
This template saves me the extremely boring 5-10 minutes I spend on autopilot at the start of every static website, which happens about once a week. It includes linking CSS and JS, setting title and meta viewport, some basic global styling, and the proper `.gitignore` configuration for SCSS.

Usually I will make a setup like this from scratch when teaching someone about how HTML, CSS, and JavaScript work together. Having a repository dedicated to the simple structure alone gives them a working model to compare to and work off.

#### Future developments

I'm pushing aside perfectionism and releasing these as-is for now. Since I'm dogfooding my own code, they'll be improved upon as I use them and find issues. I'll document known issues/considerations as I go.

In the meantime, keep me accountable. If you see a component that could be abstracted from one of my [publically available projects](http://github.com/arirawr), open an issue on the project or [ping me on Twitter](http://twitter.com/arivanider).