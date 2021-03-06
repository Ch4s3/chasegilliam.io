---
title: The Missing Guide to JRuby on Rails Part 1
date: 2015-11-30 04:18 UTC
tags: jruby, rails, tutorial, beginner
---

Ruby on Rails is a great application framework with a lot of advantages that are well documented elsewhere Occasionally, however, you may find yourself looking for a few tools just outside of the Rails toolbox. In some of those cases, [JRuby](http://jruby.org/) can provide some additional options without giving up the expressiveness of Ruby or the fast prototyping and sane conventions of Rails.

**Reasons to use Rails**
- Real Concurrency
- Java Interoperability
- Large gains in speed *(once the JVM has warmed up)*
- Excellent tooling around the JVM

These are all great reasons, especially concurrency and gains in speed. With a bit of discipline and a little trail and error, the average Rails developer can realize these benefits without giving up everything the ecosystem affords. Real threads used with application servers like [Puma](http://puma.io/) can allow more simultaneous connections to a single server instance, which can save money and resources over time. For the purposes of this multi-part tutorial we will be using Puma, but there are a number of great [options](https://github.com/jruby/jruby/wiki/Servers) *(note: some options listed on the JRuby page are deprecated, dead, or otherwise ill-suited to Rails development)*.

*The following assumes you are using OSX, but Ubuntu et.al. should also work basically the same way.*

**Let's get started from the very beginning:**

##### Install RVM #####

  ````bash
  \curl -sSL https://get.rvm.io | bash
  ````

##### Check for Rubies #####

  ````bash
  rvm list known
  ````

   Find the JRuby section and highlight `jruby-9.0.5.0`

##### Install JRuby #####

  ````bash
  rvm install jruby-9.0.5.0
  ````

   This will likely take a few minutes, so go make a cup of coffee or tea.

##### Once that is done run: #####

  ````bash
  rvm list
  ````

  This will show you all of your installed rubies. If     jruby-9.0.5.0 isn't on the list then try step 3 again, possibly running `rvm uninstall jruby-9.0.5.0` first. If jruby-9.0.5.0 isn't proceeded by either `=>` or `=*` then run `rvm default use jruby-9.0.5.0` to set JRuby 9k as your current and default Ruby.

##### Next, install Rails for JRuby #####

  ````bash
  gem install rails -v '4.2.6' --platform jruby
  ````

##### Start a new Rails project with JRuby #####

  ````bash
  rails _4.2.6_ new jruby_rails_tutorial --database=postgresql
  ````

  If you are still using JRuby as your current ruby, then all of   the correct JRuby boilerplate should be setup here. If you see   ```Using activerecord-jdbcpostgresql-adapter x.x.x``` in the   console, then you're on the right track.

  Some notes about this command:

  - `_4.2.6_` specifies the version of Rails in case you have multiple versions installed.

  - `--database=postgresql` sets the database as Postgres

  - There is no need to run `Jruby -S` before `rails new` since you're using RVM.

##### Next cd into you app directory and spin up the server #####

  run the server as follows:

  ```bash
  rails server
  ```

  This will take a few seconds as the JVM starts up and WEBrick boots.

##### Visit the app at http://localhost:3000 #####

  ***Good Job, you're doing JRuby on Rails***

  You can find the code so far on [GitHub](https://github.com/Ch4s3/jruby_rails_tutorial/tree/step0).

###Part 2 is Coming Soon.###
