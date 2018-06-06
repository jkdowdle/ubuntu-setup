sudo apt-get install git

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
git config --global alias.rbi !f(){ git rebase --ignore-date "${1}" && git rebase -i --no-ff "${1}"; };f
