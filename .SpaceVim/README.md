[![SpaceVim](https://spacevim.org/logo.png)](https://spacevim.org)

[Wiki](https://github.com/SpaceVim/SpaceVim/wiki) \|
[Documentation](http://spacevim.org/documentation/) \|
[Twitter](https://twitter.com/SpaceVim) \|
[Community](https://spacevim.org/community/) \|
[Gitter **Chat**](https://gitter.im/SpaceVim/SpaceVim) \|
[中文文档](http://spacevim.org/README_zh_cn/)

[![Build Status](https://travis-ci.org/SpaceVim/SpaceVim.svg?branch=dev)](https://travis-ci.org/SpaceVim/SpaceVim)
[![Build status](https://ci.appveyor.com/api/projects/status/eh3t5oph70abp665/branch/dev?svg=true)](https://ci.appveyor.com/project/wsdjeg/spacevim/branch/dev)
[![codecov](https://codecov.io/gh/SpaceVim/SpaceVim/branch/dev/graph/badge.svg)](https://codecov.io/gh/SpaceVim/SpaceVim/branch/dev)
![Version](https://img.shields.io/badge/version-0.5.0--dev-FF00CC.svg)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Doc](https://img.shields.io/badge/doc-%3Ah%20SpaceVim-orange.svg)](doc/SpaceVim.txt)
[![Average time to resolve an issue](http://isitmaintained.com/badge/resolution/SpaceVim/SpaceVim.svg)](http://isitmaintained.com/project/SpaceVim/SpaceVim "Average time to resolve an issue")
[![Percentage of issues still open](http://isitmaintained.com/badge/open/SpaceVim/SpaceVim.svg)](http://isitmaintained.com/project/SpaceVim/SpaceVim "Percentage of issues still open")

SpaceVim is a community-driven vim distribution that seeks to provide layer feature, compatible with vim and neoVim. Layers help collect related plugins together to provide features. Also help keep configuration organized and reduces overhead for the user by keeping them from having to think about what plugins to install. star it on github is a great way of getting feedback and gives me the kick to put more time into development.

![welcome-page](https://cloud.githubusercontent.com/assets/13142418/26402270/28ad72b8-40bc-11e7-945e-003f41e057be.png)

See the [documentation](https://spacevim.org/documentation) or [the list of layers](http://spacevim.org/layers/) for more information.

Here is a throughput graph of the repository for the last few weeks:

[![Throughput Graph](https://graphs.waffle.io/SpaceVim/SpaceVim/throughput.svg)](https://waffle.io/SpaceVim/SpaceVim/metrics/throughput)

### Requirements

SpaceVim's basic mode only requests `git` comamnd in your `$PATH`, but if you want to get better user experience, you need to install [nerd-font](https://github.com/ryanoasis/nerd-fonts). And make sure your terminal support [true colors](https://gist.github.com/XVilka/8346728).

### Install

```bash
curl -sLf https://spacevim.org/install.sh | bash
```

After SpaceVim is installed, launch `vim` and SpaceVim will **automatically** install plugins.

For more info about the install script, please check:

```bash
curl -sLf https://spacevim.org/install.sh | bash -s -- -h
```

### Project layout

    ├─ autoload/SpaceVim/api/               SpaceVim APIs
    ├─ autoload/SpaceVim/layers/            SpaceVim layers
    ├─ autoload/SpaceVim/plugins/           SpaceVim plugins
    ├─ autoload/SpaceVim/mapping/           SpaceVim mapping guide
    ├─ doc/SpaceVim.txt                     SpaceVim help
    ├─ docs/                                website of SpaceVim
    └─ test/                                tests

### Features

- **Great documentation:** access documentation in Vim with <kbd>:h SpaceVim</kbd>.
- **Beautiful GUI:** you'll love the awesome UI and its useful features.
- **Mnemonic key bindings:** all key bindings have mnemonic prefixes.
  ![mapping guide](https://user-images.githubusercontent.com/13142418/31550099-c8173ff8-b062-11e7-967e-6378a9c3b467.gif)
- **Lazy load plugins:** Lazy-load 90% of plugins with [dein.vim](https://github.com/Shougo/dein.vim)
  ![UI for dein](https://user-images.githubusercontent.com/13142418/31309093-36c01150-abb3-11e7-836c-3ad406bdd71a.gif)
- **Neovim centric:** Dark powered mode of SpaceVim

### Support SpaceVim

The best way to support SpaceVim is to contribute to it either by reporting bugs, helping the community on the Gitter Chat or sending pull requests.

If you want to show your support financially you can buy a drink for the maintainer by clicking following icon.

<a href='https://ko-fi.com/A538L6H' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://az743702.vo.msecnd.net/cdn/kofi4.png?v=f' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>

### Credits & Thanks

- [![GitHub contributors](https://img.shields.io/github/contributors/SpaceVim/SpaceVim.svg)](https://github.com/SpaceVim/SpaceVim/graphs/contributors)
- [@Gabirel](https://github.com/Gabirel) and his [Hack-SpaceVim](https://github.com/Gabirel/Hack-SpaceVim)
- [vimdoc](https://github.com/google/vimdoc) generate doc file for SpaceVim
- [Rafael Bodill](https://github.com/rafi) and his vim-config
- [Bailey Ling](https://github.com/bling) and his dotvim
- authors of all the plugins used in SpaceVim.
