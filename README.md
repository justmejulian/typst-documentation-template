# ZHAW typst-documentation-template

Typst documentation template for a ZHAW thesis, based on [ZHAW guidelines](https://gpmpublic.zhaw.ch/GPMDocProdDPublic/Vorgabedokumente_ZHAW/Z_RL_Richtlinie_Corporate_Design_Markengrundelemente.pdf).

Learn more about Typst [here](https://github.com/typst/typst).

This template is based on the [School of TUM thesis-template-typst](https://github.com/ls1intum/thesis-template-typst).

## Installation

Install typst.

```bash
brew install typst
```

Once you have installed Typst, you can use it like this:

```bash
# Creates `main.pdf` in working directory.
typst compile main.typ

# Watches source files and recompiles on changes.
typst watch main.typ
```

I recommend using the skim pdf viewer, which can be installed via brew.

Skim automatically reloads the pdf when it changes.

```bash
brew install --cask skim
```

## neovim

todo: add how to setup typst-lsp / Treesitter.

## Todo

Github action to build

https://github.com/marketplace/actions/github-action-for-typst
