# Golo on OSX

For that, we use the awesome [Homebrew](http://mxcl.github.com/homebrew/index.html).

## Golo Formula

[Golo](https://github.com/golo-lang/golo-lang), a lightweight dynamic language for the JVM (version 0-preview6).

### Installation

```shell
$ brew install https://raw.github.com/rlespinasse/homebrew/golo/Library/Formula/golo.rb

$ brew upgrade https://raw.github.com/rlespinasse/homebrew/golo/Library/Formula/golo.rb
```

### Why Golo Formula isn't on Homebrew repository?

The Homebrew rules don't allow `Golo Formula` to be added on Homebrew repository until a stable release. ([more info](https://github.com/mxcl/homebrew/pull/18768))

## Gogolo Formula

[gogolo.sh](https://github.com/k33g/gogolo) is a little shell script to launch your golo projects easily, even with jar dependencies.

### Installation
```shell
brew install --HEAD https://raw.github.com/rlespinasse/golo-on-osx/master/gogolo.rb

brew upgrade --HEAD https://raw.github.com/rlespinasse/golo-on-osx/master/gogolo.rb
```

## Contribution

Yes, you can.
