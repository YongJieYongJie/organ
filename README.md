<!-- vim: set filetype=markdown: -->

<!-- vim-markdown-toc GFM -->

* [Introduction](#introduction)
    * [What is it ?](#what-is-it-)
    * [Features](#features)
    * [Prerequisites](#prerequisites)

<!-- vim-markdown-toc -->

WORK IN PROGRESS

# Introduction
## What is it ?

Organ is an Orgmode and Markdown environment plugin for Vim and Neovim.

It is primarily focused on editing org or markdown files.

## Features

- navigate in the headers hierarchy
  + next, previous : any level
  + forward, backward : same level as current one
  + parent header, upper level
- modify headers hierarchy
  + promote, demote header or list item

## Prerequisites

This plugin should mostly work out of the box.

If you want to export your file with org-export functions, you just need
to have Emacs installed, and the plugin takes care of the rest.

# Mappings

- `<M-p>` : previous heading
