---
title: Intro to Debugging with Pry
date: 2016-04-06 03:41 UTC
tags: pry, ruby, debugging, beginner
---

If you're new to Ruby or you have previously only used
irb and `puts` or `p` statements, then you may not be familiar with `pry`. Pry is a great gem that servers as an alternative to `irb` providing among other features:

  - Source code browsing (including core C source with the pry-doc gem)
  - Documentation browsing
  - Live help system
  - Open methods in editors (edit Class#method)
  - Syntax highlighting
  - Command shell integration (start editors, run git, and rake from within Pry)
  - Gist integration
  - Navigation around state (cd, ls and friends)
  - Runtime invocation (use Pry as a developer console or debugger)


This is a short list taken from the [pry page](https://github.com/pry/pry) on GitHub, and is by no means exhaustive. This article will cover how a few of those features can help you to learn more about Ruby and to make use of a 1st class debugger and REPL.
