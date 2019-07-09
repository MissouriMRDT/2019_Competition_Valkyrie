# 2019_Competition_Valkyrie
All Hardware and Software Files Used on the 2019 Rover 

How to add repos to this while retaining commit history:

1. Clone this repo onto your pc
2. Make branch on here for the repo you're about to copy in
3. Make sure that you've merged the final release branch of the target repo into master
4. In gitshell inside of the 2018 Competition Atlas folder:

git checkout [name of branch you're going to copy the repo into]

git remote add x [url of deprecated repo]

git fetch x

git merge x/master --allow-unrelated-histories

git remote rm x
