```
sudo apt install curl git-core gcc make zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev libssl-dev
curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
```

Append the `.bashrc` in this repo to the existing one.

```
pyenv install --list | grep 3.7
pyenv install 3.7.0
```
