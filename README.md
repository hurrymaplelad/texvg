texvg
=====

Render a LaTeX document as an SVG.

```sh
$ texvg graph.tex # writes graph.svg
```

Getting Started
---------------
On OSX with [homebrew](http://brew.sh/) installed:

```sh
$ brew cask install basictex  # the minimal TeX distro
# add /usr/texbin to $PATH    # so we can use tlmgr
$ tlmgr update --self
$ tlmgr install dvisvgm
$ brew install ghostscript
```

