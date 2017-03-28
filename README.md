# Description

Plugin for [`vis`](https://github.com/martanne/vis) line numbers.

With this plugin, the active window displays absolute line numbers in insert
mode, and relative line numbers otherwise. Other windows display absolute line
numbers.

# Installation

Clone this repo where you install your plugins. For example:

    mkdir -p ~/.config/vis/plugin/
    git clone <this-repository> ~/.config/vis/plugin/

And simply require the plugin from your `visrc.lua`:

    require('plugin/vis-line-numbers/vis-line-numbers')
