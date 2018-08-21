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
