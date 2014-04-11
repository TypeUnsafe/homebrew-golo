# Golo on OSX

For that, we use the awesome [Homebrew](http://mxcl.github.com/homebrew/index.html).

Before, please install the homebrew repository for golo
```shell
$ brew tap TypeUnsafe/golo
```

## Golo Formula

[Golo](https://github.com/golo-lang/golo-lang), a lightweight dynamic language for the JVM ([version 0-preview11](https://github.com/golo-lang/golo-lang/releases/tag/v0-preview11)).

### Installation

```shell
$ brew install golo
```
#### Version SNAPSHOT

```shell
$ brew install golo --HEAD
```

### Upgrade
```shell
$ brew update; brew upgrade golo
```

### Why Golo Formula isn't on Homebrew repository?

The Homebrew rules don't allow `Golo Formula` to be added on Homebrew repository until a stable release. ([more info](https://github.com/mxcl/homebrew/pull/18768))

## M33ki Formula

[M33ki](https://github.com/TypeUnsafe/m33ki) The !(not)Opinionated Web Framework (by TypeUnSafe inc.)

M33ki Framework makes it easy to build web applications with Golo & Java.

M33ki is based on a lightweight, stateless or stateful (as you want) , web-friendly architecture.

Built on Golo and SparkJava (and some other libraries), M33ki provides minimal resource consumption (CPU, memory, threads) for embedded web server.

### Installation
```shell
$ brew install --HEAD m33ki
```

### Upgrade
```shell
$ brew update; brew rm m33ki; brew install --HEAD m33ki
```

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

## Old repository
If you use 'rlespinasse/golo' before you just need to untap it before use this new one
```shell
$ brew untap rlespinasse/golo
```
