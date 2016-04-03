# Emacs themes

A collection of color themes for Emacs24 +

The themes are named after important/influential programmers.

Fixes, pull requests and feedback very welcome : )

## Contributors

https://github.com/owainlewis/emacs-color-themes/graphs/contributors

## Use

The easiest way to install is to use MELPA

```
M-x package-install <RET> sublime-themes
```

## Manual install

Running install.sh will put the themes in  ~/.emacs.d/themes

To load a theme add the following to your init.el

```elisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'hickey t)
```

You can browse the themes with

```
M-x load-theme <RET> name-of-theme
```

One line install script

```
git clone https://github.com/owainlewis/emacs-color-themes.git && cd emacs-color-themes && ./install.sh
```

## As an Elisp Package

If the package directory is in the load path, one can simply

```
(require 'emacs-color-themes)
```

and use `load-theme` function to load any theme that is provided.
This way, one can add the package to their Emacs configuration as is,
without needing to add any directories, symlinks or copies.

## Brin

A color theme based on the Space Grey ST2 theme named after Sergey Brin.

> We believed we could build a better search. We had a simple idea,
> that not all pages are created equal. Some are more important"

![](https://raw.github.com/owainlewis/emacs-color-themes/master/resources/previews/brin.png)

## Granger

A color theme based on the Light Table default

![](https://raw.github.com/owainlewis/emacs-color-themes/master/resources/previews/granger.png)


## Spolsky

> If something seems possible, that's probably because someone is already doing it.
> When something seems that it can't possibly work, nobody tries it.
> Real innovation happens when someone tries anyway, overlooking an obvious flaw, and finds a way to make an idea work.
> -- <cite>Joel Spolsky</cite>

A theme heavily inspired by the default ST2 theme. My personal favourite.

![](https://raw.github.com/owainlewis/emacs-color-themes/master/resources/previews/spolsky.png)

## Graham

> What I tell founders is not to sweat the business model too much at first.
> The most important task at first is to build something people want.
> If you don't do that, it won't matter how clever your business model is.
> -- <cite>Paul Graham</cite>

A dark red, black and orange color theme

![](https://raw.github.com/owainlewis/emacs-color-themes/master/resources/previews/graham.png)

## Odersky

A color theme based on Goldfish

![](https://raw.github.com/owainlewis/emacs-color-themes/master/resources/previews/odersky.png)

## Hickey

> Choose immutability and see where it takes you
> -- <cite>Rich Hickey</cite>

A dark theme.

![](https://raw.github.com/owainlewis/emacs-color-themes/master/resources/previews/hickey.png)

## Fogus

> The apprentice avoids all use of Java classes. The journeyman embraces Java classes.
> The master knows which classes to embrace and which to avoid.
> -- <cite>Michael Fogus</cite>

A dark blue theme which is more or less the Tron theme.

![](https://raw.github.com/owainlewis/emacs-color-themes/master/resources/previews/fogus.png)

## Dorsey

> Make every detail perfect, and limit the number of details to perfect
> -- <cite>Jack Dorsey</cite>

A dark and grungy theme.

![](https://raw.github.com/owainlewis/emacs-color-themes/master/resources/previews/dorsey.png)

## McCarthy

> It's difficult to be rigorous about whether a machine really 'knows', 'thinks', etc.,
> because we're hard put to define these things.
> We understand human mental processes only slightly better than a fish understands swimming.
> -- <cite>John McCarthy</cite>

A light theme loosely based on Facebook colors

![](https://raw.github.com/owainlewis/emacs-color-themes/master/resources/previews/mccarthy.png)

## Wilson

A grungy theme based upon an oilstained and muddy aircraft.

![](https://raw.github.com/owainlewis/emacs-color-themes/master/resources/previews/wilson.png)

## Junio

A vivid theme like a chocolate

![](https://raw.github.com/owainlewis/emacs-color-themes/master/resources/previews/junio.png)
