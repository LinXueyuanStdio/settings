# settings
some useful settings

## 手动翻墙

https://www.ipaddress.com/
https://githubusercontent.com.ipaddress.com/raw.githubusercontent.com
```
sudo vim /etc/hosts
199.232.28.133 raw.githubusercontent.com
172.217.9.46 google.com
140.82.112.3 github.com
```

查找域名对应的ip地址，并修改hosts文件
```
nslookup github.global.ssl.fastly.Net
nslookup github.com
```
将下列内容加入 /etc/hosts文件中:
```
sudo vim /etc/hosts

151.101.76.249 github.global-ssl.fastly.net
192.30.255.113 github.com  #此处112还是113根据自己的情况调整？
```
刷新DNS缓存
linux：
```
sudo /etc/init.d/networking restart
```
windows：
```
ipconfig /flushdns
```
## 加速

### apt 更换阿里云源
```
sudo vim /etc/apt/sources.list
sudo apt update && sudo apt upgrade

适用于 Ubuntu 18.04
deb http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse
```


### pip 更换清华源
Linux下，修改 ~/.pip/pip.conf (没有就创建一个文件夹及文件。文件夹要加“.”，表示是隐藏文件夹)

内容如下：
```
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
[install]
trusted-host=mirrors.aliyun.com
```
windows下，直接在user目录中创建一个pip目录，如：C:\Users\xx\pip，新建文件pip.ini。内容同上。

### npm 更换阿里云源
```
npm install -g cnpm --registry=https://registry.npm.taobao.org
```
```
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"
```
查看源 : `npm config get registry`
切换源 : `npm config set registry https://registry.npm.taobao.org`
## 安装趁手的软件
```
sudo apt update
sudo apt install curl zsh git nodejs npm autojump thefuck
```
### zsh + oh my zsh
```
cat /etc/shells
apt-get install -y zsh git
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

### yarn
```
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn
```
### SpaceVim

https://spacevim.org/cn/quick-start-guide/#linux-%E6%88%96-macos

```
curl -sLf https://spacevim.org/cn/install.sh | bash
```

### npm 不用 sudo
[https://docs.npmjs.com/getting-started/fixing-npm-permissions](https://docs.npmjs.com/getting-started/fixing-npm-permissions)

```shell
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
export PATH=~/.npm-global/bin:$PATH
export NPM_CONFIG_PREFIX=~/.npm-global
source ~/.profile
```


## 安全

修改ssh端口,禁止root登录(安全期间吗)
允许root远程登录

### 修改ssh端口

配置:`/etc/ssh/sshd_config`

编辑:找到`#Port 22`所在行，复制内容并修改`Port 2222`

### 禁止root远程登录

配置:`/etc/ssh/sshd_config`

编辑:找到`PermitRootLogin yes`所在行，复制并修改`PermitRootLogin no`

### 创建非root用户,并赋予sudo权限
```
adduser username
vim /etc/sudoers
```
### 时间同步,并写入硬件时钟
```
apt-get install -y ntpdate
ntpdate time.windows.com
hwclock --localtime --systohc
```

### github ssh

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

## 奇怪的技能点

java
```
apt-cache search java|grep jdk
sudo apt-get install openjdk-8-jdk
```