<!-- vim: set filetype=markdown: -->

<!-- vim-markdown-toc GFM -->

* [Introduction](#introduction)
    * [What is it ?](#what-is-it-)
    * [Features](#features)
    * [Prerequisites](#prerequisites)
* [Configuration](#configuration)
* [Bindings](#bindings)
    * [Prefixless](#prefixless)
    * [With prefix](#with-prefix)

<!-- vim-markdown-toc -->

WORK IN PROGRESS

# Introduction
## What is it ?

Organ is an Orgmode and Markdown environment plugin for Vim and Neovim.

It is primarily focused on editing orgmode and markdown files.

## Features

- folding based on headings
- navigate in the headings hierarchy
  + next, previous : any level
  + forward, backward : same level as current one
  + parent heading, upper level
- modify headings hierarchy
  + promote, demote heading or list item

## Prerequisites

This plugin should mostly work out of the box.

If you want to export your file with org-export functions, you just need
to have Emacs installed, and the plugin takes care of the rest.

# Configuration

```vim
if ! exists("g:organ_loaded")
	let g:organ_config = {}
    " choose your mappings prefix
	let g:organ_config.prefix = '<m-c>'
	" enable prefixless maps
	let g:organ_config.prefixless = 1
endif
```

# Bindings
## Prefixless

If you set the `g:organ_config.prefixless` variable to a greater-than-zero
value in your init file, these bindings become available :

- `<M-p>`     : previous heading
- `<M-n>`     : next heading
- `<M-b>`     : previous heading of same level
- `<M-f>`     : next heading of same level
- `<M-u>`     : parent heading
- `<M-d>`     : child heading
- `<M-left>`  : promote heading
- `<M-right>` : demote heading

## With prefix

The prefix bindings are always available, regardless of the
`g:organ_config.prefixless` value. They are inspired by orgmode, with
`<C-...>` replaced by `<M-...>`. The default prefix is `<M-c>` :

- `<M-c><M-p>`     : previous heading
- `<M-c><M-n>`     : next heading
- `<M-c><M-b>`     : previous heading of same level
- `<M-c><M-f>`     : next heading of same level
- `<M-c><M-u>`     : parent heading
- `<M-c><M-d>`     : child heading
- `<M-c><M-left>`  : promote heading
- `<M-c><M-right>` : demote heading
