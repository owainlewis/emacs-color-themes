# Emacs themes

Emacs color themes originally inspired by some ST2 color themes by Dayle Rees.

All the themes are named after personal programming and tech heroes.

## Use

Just copy the themes and require them.

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

## Graham

> What I tell founders is not to sweat the business model too much at first.
> The most important task at first is to build something people want.
> If you don't do that, it won't matter how clever your business model is.
> -- <cite>Paul Graham</cite>

A dark red, black and orange color theme

![](https://raw.github.com/owainlewis/emacs-color-themes/master/previews/graham.png)

## Odersky

A color theme based on Goldfish

![](https://raw.github.com/owainlewis/emacs-color-themes/master/previews/odersky.png)

## Hickey

> Choose immutability and see where it takes you
> -- <cite>Rich Hickey</cite>

A dark theme.

![](https://raw.github.com/owainlewis/emacs-color-themes/master/previews/hickey.png)

## Fogus

A dark blue theme which is more or less the Tron theme.

![](https://raw.github.com/owainlewis/emacs-color-themes/master/previews/fogus.png)

## Dorsey

> Make every detail perfect, and limit the number of details to perfect
> -- <cite>Jack Dorsey</cite>

A dark and grungy theme.

![](https://raw.github.com/owainlewis/emacs-color-themes/master/previews/dorsey.png)

## McCarthy

A light theme loosely based on Facebook colors

![](https://raw.github.com/owainlewis/emacs-color-themes/master/previews/mccarthy.png)

## Wilson

A grungy theme based upon an oilstained and muddy aircraft.

![](https://raw.github.com/owainlewis/emacs-color-themes/master/previews/wilson.png)

## Contributors

Thanks to the following contributors

+ Will Speak https://github.com/iwillspeak




