

New changes.

https://docs.confluent.io/3.2.0/connect/managing.html


Contol + Shift + P on atom


echo "# kafka-dev" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/dipuwork99/kafka-dev.git
git push -u origin master

You have two options here. You can either add the untracked files to your Git repository (as the warning message suggested), or you can add the files to your .gitignore file, if you want Git to ignore them.

To add the files use git add:

git add Optimization/language/languageUpdate.php
git add email_test.php
To ignore the files, add the following lines to your .gitignore:

/Optimization/language/languageUpdate.php
/email_test.php
Either option should allow the git pull to succeed afterwards.

52

Also instead of adding each file manually, we could do something like:

git add --all
OR

git add -A
This will also remove any files not present or deleted (Tracked files in the current working directory which are now absent).

If you only want to add files which are tracked and have changed, you would want to do

git add -u


# Exceute permission on scripts

chmod a+x filename.sh
