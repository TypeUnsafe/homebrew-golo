# Golo on OSX

For that, we use the awesome [Homebrew](http://mxcl.github.com/homebrew/index.html).

Before, please install the homebrew repository for golo
```shell
$ brew tap TypeUnsafe/golo
```

## Golo Formula

[Golo](https://github.com/golo-lang/golo-lang), a lightweight dynamic language for the JVM ([version 1.0.0](https://github.com/golo-lang/golo-lang/releases/tag/v1.0.0)).

### Installation

```shell
$ brew install golo
```
#### ... in DEV version

```shell
$ brew install golo --HEAD
```

### Upgrade

```shell
$ brew update; brew upgrade golo
```
#### ... the DEV version

```shell
$ brew reinstall --HEAD golo
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
$ brew reinstall --HEAD m33ki
```

## Contribution

Yes, you can.

## Old repository
If you use 'rlespinasse/golo' before you just need to untap it before use this new one
```shell
$ brew untap rlespinasse/golo
```
