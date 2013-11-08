# Golo on OSX

For that, we use the awesome [Homebrew](http://mxcl.github.com/homebrew/index.html).

Before, please install the homebrew repository for golo
```shell
$ brew tap rlespinasse/golo
```

## Golo Formula

[Golo](https://github.com/golo-lang/golo-lang), a lightweight dynamic language for the JVM ([version 0-preview9](https://github.com/golo-lang/golo-lang/releases/tag/v0-preview9)).

### Installation

```shell
$ brew install golo
```

### Upgrade
```shell
$ brew update; brew upgrade golo
```

### Why Golo Formula isn't on Homebrew repository?

The Homebrew rules don't allow `Golo Formula` to be added on Homebrew repository until a stable release. ([more info](https://github.com/mxcl/homebrew/pull/18768))

## Gogolo Formula

[gogolo.sh](https://github.com/k33g/gogolo) is a little shell script to launch your golo projects easily, even with jar dependencies.

### Installation
```shell
$ brew install --HEAD gogolo 
```

### Upgrade
```shell
$ brew update; brew rm gogolo; brew install --HEAD gogolo
```

## Golio Formula

[golio](https://github.com/k33g/golio) is a golo script(s) downloader. It queries a "Content delivery network" : Golio.cdn. Golio.cdn is a directory of github repositories with golo scripts. The url of the directory is https://github.com/k33g/golio.cdn/blob/master/golio.cdn.json.

### Installation
```shell
$ brew install --HEAD golio
```

### Upgrade
```shell
$ brew update; brew rm golio; brew install --HEAD golio
```

## Contribution

Yes, you can.
