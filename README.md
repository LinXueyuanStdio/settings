# settings
some useful settings

## npm 不用 sudo
[https://docs.npmjs.com/getting-started/fixing-npm-permissions](https://docs.npmjs.com/getting-started/fixing-npm-permissions)

```shell
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
export PATH=~/.npm-global/bin:$PATH
export NPM_CONFIG_PREFIX=~/.npm-global
source ~/.profile
```

## pip
Linux下，修改 ~/.pip/pip.conf (没有就创建一个文件夹及文件。文件夹要加“.”，表示是隐藏文件夹)

内容如下：
```
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
[install]
trusted-host=mirrors.aliyun.com
```
windows下，直接在user目录中创建一个pip目录，如：C:\Users\xx\pip，新建文件pip.ini。内容同上。

## github ssh

`.git/config`:
```
- url = https://github.com/Name/project.git
+ url = git@github.com:Name/project.git
```
```shell
ssh-keygen -t rsa -C "email@mail.com"
git config --global user.name "name"
git config --global user.email "email@mail.com"
cat ~/.ssh/id_rsa.pub
```
copy all text in `~/.ssh/id_rsa.pub` to https://github.com/settings/keys.
click `new ssh key` and go.
```
$ ssh -T git@github.com
Hi xxx! You’ve successfully authenticated, but GitHub does not provide shell access.
```

## 安装顺序

sudo apt update
suda apt install curl zsh git nodejs npm autojump thefuck
