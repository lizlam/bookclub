# Guided Exercise #11 - First 500 words (again)
# Title: A Gentle Introduction to the Git Command Line

Git is a version control system written by Linus Torvalds in 2005. 
It was created specifically to manage the Linux Kernel Project.
One could say it was written by Linux Kernel Developers for Linux Kernel Developers.
As a result, the initial environment for working with git is the command line.
Now, if you're not familiar with the command line (like a Linux Kernel Developer), this
can feel scary.  With so many GUI tools out there, you may feel it's not even
necessary to learn.  

## Let's get started by creating a new git repository.

Open a terminal and run the following commands:
```
    $ mkdir project 
    $ cd project
    $ git init

```

What did we just do?  We just created an empty git repository.

Let’s take a look at .git directory:
```
    $ ls -la .git 
```

You will see the following directory structure:
```
.
|____.git
| |____config
| |____objects
| | |____pack
| | |____info
| |____HEAD
| |____info
| | |____exclude
| |____description
| |____hooks
| | |____commit-msg.sample
| | |____pre-rebase.sample
| | |____pre-commit.sample
| | |____applypatch-msg.sample
| | |____fsmonitor-watchman.sample
| | |____pre-receive.sample
| | |____prepare-commit-msg.sample
| | |____post-update.sample
| | |____pre-applypatch.sample
| | |____pre-push.sample
| | |____update.sample
| |____refs
| | |____heads
| | |____tags
| |____branches
```
Also, let take a look at the state of the git workspace:
```
    $ git status
    On branch master

    No commits yet

    nothing to commit (create/copy files and use "git add" to track)
```

## Let’s add a file to our working directory.

Type the following command:
```
    $ echo ‘hello world’ > hello.txt
```    
Take a look at the status again:
```
    $ git status
    On branch master

    No commits yet

    Untracked files:
    (use "git add <file>..." to include in what will be committed)

	  hello.txt

    nothing added to commit but untracked files present (use "git add" to track)

```
The status gives us a clue on what we need to do next:
```
    $ git add .
```    
Git knows we have a new file with the intention to add it to the system but we have not committed it yet.

## Let’s commit our file to the repo.

Type the following:
```
    $ git commit -m “Commit first file to the repo”
```
Congratulations! We have made our first commit to the master branch!
How do we know what branch we are currently on? 
```
     $ git branch
     * master
```
Curious about our .git directory?

Let’s see what our .git directory looks like now:
```
    $ ls -la .git/objects
```    
You should see a directory structure that looks like this:
```
.
|____68
| |____aba62e560c0ebc3396e8ae9335232cd93a3f60
|____3b
| |____18e512dba79e4c8300dd08aeb37f8e728b8dad
|____pack
|____11
| |____3f69060fab658b60408369029c008cdcdbf9c1
|____info
```
The objects directory contain the actual files that our stored.  They are organized by subdirectories of the first 2 characters of the SHA1 of the file.
For example, look at subdirectory *3b* that contains the file: *18e512dba79e4c8300dd08aeb37f8e728b8dad*
For those who are curious, run: `git hash-object hello.txt` 

## Let’s create a new branch

Type the following in your terminal:
```
    $ git checkout -b dev_llam
```
This will create a new branch and switch to that branch.  
We should be able to see both branches now:
```
    $ git branch
    * dev_llam
    master
```
## Let’s make a change on our new branch

Edit hello.txt by adding a 2nd line saying who you are.  (Example: “I am Liz.”)
If you check the status, you will see git knows we made changes:
```
    $ git status
```  
We want to add our changes:
```
    $ git add .
```    
Now we want to commit them:
```
    $ git commit -m “Saying who I am”
```
## Let's take a look at our history so far.

Type in the terminal:
```
    $ git log --oneline
```
We now have two commits in our history in our dev branch.
Let’s check on master:
```
    $ git checkout master
    $ git log --oneline
    $ cat hello.txt
```
## Time to merge!

We want to merge our changes from dev to master.
Remember, the target branch is always the branch you are on.  Use ‘git branch’ if you are not sure where you are.
```
    $ git merge dev_llam
```   
Now we should see that master has the same changes as our dev branch.
```
    $ git log --oneline
    $ cat hello.txt
```
## What about cloning?

Open another terminal window and clone the repo we just created:
```
    $ git clone /path/to/git/project project2
```
You should see an exact copy of what we had in the original project:
```
    $ cd project2
    $ git log --oneline 
    $ cat hello.txt 
```
## What about pulling?

To keep our repo updated, we need to pull from the original/remote.
Go to the first terminal window with the original project open and make a change and commit it.   
Go back to the second terminal window with project2 open and check its status:
```
    $ git status
```
Let’s pull!

Our cloned project (project2) does not know it is out of date with the original.
Let’s start by fetching the changes (note: fetching is different from pulling).
```
    $ git fetch origin dev_llam
    $ git status
```    
Now our repo is updated but our working directory is not.
```
    $ git pull
    $ git log --oneline
```
Yay! We’re done!

You now know how to:
* Create a new git repository
* Add and commit files to a repo
* Create and merge branches
* Clone a repository
* Fetch and pull changes

