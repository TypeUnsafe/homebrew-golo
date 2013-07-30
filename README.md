# Golo on OSX

For that, we use the awesome [Homebrew](http://mxcl.github.com/homebrew/index.html).

Before, please install the homebrew repository for golo
```shell
$ brew tap rlespinasse/golo
```

## Golo Formula

[Golo](https://github.com/golo-lang/golo-lang), a lightweight dynamic language for the JVM ([version 0-preview6](https://github.com/rlespinasse/homebrew/commit/e5cb3d4e476f1595ae880a1b79771581ab7790e9)).

### Installation

```shell
$ brew install golo

$ brew update && brew upgrade golo
```

### Why Golo Formula isn't on Homebrew repository?

The Homebrew rules don't allow `Golo Formula` to be added on Homebrew repository until a stable release. ([more info](https://github.com/mxcl/homebrew/pull/18768))

## Gogolo Formula

[gogolo.sh](https://github.com/k33g/gogolo) is a little shell script to launch your golo projects easily, even with jar dependencies.

### Installation
```shell
$ brew install --HEAD gogolo

$ brew update && brew upgrade gogolo
```

## Contribution

Yes, you can.
