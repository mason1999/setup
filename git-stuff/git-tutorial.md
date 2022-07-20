<h1>Git tutorial</h1> 

1. <a href="#1">Setup</a>
2. <a href="#2">Getting help</a>
3. <a href="#3">Local directory workflow</a>
4. <a href="#4">Ignoring files</a>
5. <a href="#5">Branches</a>
6. <a href="#6">Merge conflicts</a>
7. <a href="#7">Using Github prerequisite: Personal access token</a>
8. <a href="#8">Using Github</a>
9. <a href="#9">Using Github: Issues tab</a>
10. <a href="#10">Using Github: the other tabs</a>

<h2 id="1">Setup</h2>
To setup, make sure that you have git installed. Check it with: 

    git --version

If not installed, install it.

To setup we need to start off by setting up our email and username. 

    git config --global user.name "mason wong"
    git config --global user.email "masonwong1999@gmail.com"

We also set the default branch name

    git config --global init.defaultBranch main 

We can also see a list of the parameters we have set with

    git config -l

<h2 id="2">Getting help</h2>

To get help and see a list of the common commands used in Git: 

    git # or git --help

To get more help on a single command type in: 

    git help <command>

For example: 

    git help init


<h2 id="3">Local directory workflow</h2>

To initialise a local directory to a git repository, change your working directory and type 

    git init

To see the status of your files type in 

    git status

To track a file and stage it

    git add <filename>
    git add . # or this one as this adds ALL files

To remove files from staging: 

    git restore --staged <filename>
    git restore <filename> # recovers tracked file if you deleted it

To commit a file (take a snapshot) use: 

    git commit -m "<your message>"
    git commit -a -m "<your message>" # commits tracked (but modified/deleted) files

To see the difference between commit and your previous commit 

    git diff 

To remove a file from the git repo

    git rm <filename> # deletes file from git repo AND local machine
    git rm --cached <filename> # delets from from git repo ONLY. Leaves it on local machine

To change the name of a file

    git mv <filename1> <new file name>

To view a log of the commits

    git log 
    git log --oneline # view log in shortened form

<h2 id="4">Ignoring files</h2>

To ignore files go to your git repo and make a file: 

    touch .gitignore

A helpful list of ways you can ignore files is <a href="https://www.atlassian.com/git/tutorials/saving-changes/gitignore" target="_blank">given here</a>. You can write comments in the `.gitignore` file with `#`. Some examples include
- `\*\*/logs` : Example matches include `logs/debug.log`, `logs/monday/foo.bar` and `build/logs/debug.log`
- `**/logs/debug.log`: Example matches include `logs/debug.log`, `build/logs/debug.log` BUT NOT `logs/build/debug.log`
- `*.log`: Example matches include `debug.log`, `foo.log`, `.log` and `logs/debug.log`

Next example: 

    *.log
    !important.log

Note that they're on different lines. Example matches include `debug.log`, `trace.log`, BUT NOT `important.log` and `logs/important.log`

<h2 id="5">Branches</h2>

To see the number of branches you have

    git branch

To make a new branch

    git branch <new branch name> 
    git checkout -b <new branch name> <old branch name> # create new branch from old one

To jump to another branch use 

    git switch <branch name>

To merge a branch back to main

    git switch main # switch back to main branch
    git merge -m "<a message for merge>" <branch name to merge back to main>

To delete a branch

    git branch -d <branch name>
    git branch -D <branch name> # force delete branch

<h2 id="6">Merge conflicts</h2>

In merge conflicts you'll see something that looks like this: 

    <<<<<<< HEAD 
    ...
    <the reality of what's in main>
    ...
    =======
    ...
    <What you're trying to merge into main>
    ...
    >>>>>>> <branch name>

One way to resolve this conflict is to only keep the stuff in your `<branch name>` section. So you'll only have something like this

    # Deleted HEAD and everything up to and including =======
    ...
    <What you're trying to merge into main>
    ...

<h2 id="7">Using Github prerequisite: Personal access token</h2>

When Github asks for our credentials, in place of our password we use the generated personal access token...

To generate a personal access token. You must copy the personal access token (perhaps to keyboard)...

    Settings --> Developer settings --> Personal Access Tokens --> 
    Generate new Token --> Put an optional Note --> Put 'repo' as 
    the only scope (this is all you'll ever need) --> Generate Token

To change/update personal access Tokens

    Settings --> Developer Settings --> Personal access Tokens --> 
    click on token repo --> Regenerate Token (If you've forgotten) | 
    Update Token (If you need to make a new one) | Delete Token (If 
    you don't need it anymore). 

To avoid typing in the token all the time

    git config --global --unset credential.helper # clears the cache for the username and token-password. 
    git config --global credential.helper cache # git caches the next user name and password we give it

<h2 id="8">Using Github</h2>

To create a new repository on the command line and link it to a repository you just made

    echo "# test" >> README.md # a template README.md file
    git init
    git add README.md
    git commit -m "my first commit"
    git branch -M main # rename and reset current branch
    git remote add origin https://github.com/mason1999/test.git # origin is the conventional name and the URL is the copied URL they offer on Github
    git push -u origin main # set upstream for argumentless pulling

Or if you already had an existing `git` repo...

    git remote add origin <https url of Github repo>
    git branch -M main
    git push -u origin main

Or we can clone down the repo with 
  
    git clone <https url of Github repo>

To push all your branches up to Github

    git push --all 

To pull down changes we can use: 

    git fetch 
    git merge

Or done all in one command 

    git pull 

We can edit files and commit directly on Github. Just click: 

    pencil icon --> Edit the file directly --> scroll down
    type message --> commit directly to main Branch. 

<h2 id="9">Using Github: Issues tab</h2>

    new issue --> Give issue a Title --> Leave a comment type more info
    --> assignees (right hand side) to assign to people on project -->
    Labels (Explain what the issue goes under) --> submit issue -->
    Can optionally comment

When resolving issues we Can

    make commit to new branch --> make new pull request --> potentially
    comment on the pull request --> Go to development (on the RHS) and can
    assign this pull request to an issue --> merging pull request will 
    automatically close corresponding issue. 

<h2 id="10">Using Github: the other tabs</h2>

- Actions tab: Can run different tests and run programs to manage the repository
- Projects tab: Project manager view --> where you can view all your issues and pull requests. You can filter different views and it's easier to manage the project
- Wiki tab: Can document your code. Like wikipedia for your project. 
- Security: Can define policies to explain what should happen and when (e.g security bug)
- Insights: Who is contributing to your project, what does the traffic look like, how many issues have been closed and how many commits have there been? 
- Settings: Can alter things. For example in the `collaborators` subtab you can add additional people with you to work on your project. 
