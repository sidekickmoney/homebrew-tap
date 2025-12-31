# Sidekick Money Homebrew Tap

## What is Homebrew?

Package manager for macOS (or Linux), see more at <https://brew.sh>.

## What is a Tap?

A third-party (in relation to Homebrew) repository providing installable
packages (formulae) on macOS and Linux.

See more at <https://docs.brew.sh/Taps>.

## How do I install packages from here?

```sh
brew install sidekickmoney/tap/name
```

You can also only add the tap, which makes formulae within it available in
search results (`brew search` output):

```sh
brew tap sidekickmoney/tap
```

To clone the tap via SSH, you will need to use:

```sh
brew tap sidekickmoney/tap https://github.com/sidekickmoney/homebrew-tap
```

While you may search across taps, it is necessary to always use a fully
qualified name (including the `sidekickmoney/tap/` prefix) when refering to
formulae in external taps such as this one outside of search.

## Special Instructions

### mpg123

If you install `mpg123` with `skm`, from our Tap, then you will need to add the
following to your .rc override (`~/.skm/rc/999-user-defined-rc`):

```sh
export MPG123_MODDIR="/Users/[unix username here]/.local/homebrew/Cellar/mpg123/1.31.3/lib/mpg123"
```

otherwise it won't work!
