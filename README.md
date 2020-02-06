# Dev evn

## steps
### install Ubuntu
### [about ssh key](https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
```
# example
# ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
# for me
ssh-keygen -t rsa -b 4096 -C "565407548@qq.com"

cat ~/.ssh/id_rsa.pub
echo "copy the content of ~/.ssh/id_rsa.pub to "

```
### [cp ssh key to github](https://help.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account)
```
cat ~/.ssh/id_rsa.pub
echo "copy the content of ~/.ssh/id_rsa.pub to https://github.com/settings/keys"
```
### sh 0.pull\_dev\_evn.sh
### sh 1.repos.sh
### then exec x... by self
