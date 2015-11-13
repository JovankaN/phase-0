
# How does tracking and adding changes make developers' lives easier?
-it is way much easier to work on changes locally you can add and commit and roll back all on you computer and it saves all your changes, once you ready to go online ,you'll get notification when some changes will be done to the repo you worked on, discuss about them, make other changes etc.

## What is a commit?
- Commit saves all the changes made , added to a file , once you make all of the changes you gotta commit them, save them, without it the changes won't be applied to a given assignment!

### What are the best practices for commit messages?
-hmm... write a short meaningfull message , always use present tense instead "committed" use "commit" , what motivated you to do those changes,pretty much what've you done in those changes (i deff need to get used to this!)

#### What does the HEAD^ argument mean?
-HEAD^ is the commit you are currently on, it is the last commit you've done.

##### What are the 3 stages of a git change and how do you move a file from one stage to the other?
- 1st Track changes (git status),
-2nd Make changes :Navigate to your local repo,create new branch-name, in that branch create new directory, navigate inside that directory through command line and create new file then:
-Create headers in a file,
-write a text ,code or copy a link and save it under that header,
-check your git status , Add and Commit your changes ;,

-3rd stage Push changes online on Github:by typing  git push origin branch-name,.

###### Write a handy cheatsheet of the commands you need to commit your changes?
-Create a new branch (git checkout -b new-branch)
Create new directory (mkdir new dir.), navigate in that directory then,
Create a new file (touch new_file),
Create headers
Write , add(git add),check status(git status) and commit(git commit) some code
Push the branch online to Github (git push origin branch-name)
Compare and pull request
Open a pull request
Create the pull request

####### What is a pull request and how do you create and merge one?
- Pull request let you tell you team or collaborators about all the changes you've pushed to a repo on Github.
Once we've pushed the repo on Github we want to create a pull request, we got on our GitHub profile and we should be able to see "compare and pull request", click that to open the pull request, verify your base branch in this case should be master and verify your comparison branch which should be your new branch-name, udate the changes by typing what you've changed to the file and then you are ready to click the Create pull request button .Apparently it is not good to merge your changes but lets pretend we are the other developer so since you know you want to merge those changes you can press the Merge button in the Conversation tab and then Confirm merge , after thet you can delete the branch once it is succesfully done.

######## Why are pull requests preferred when working with teams?
-They are preffered because they will now about the changes , once the push is sent your collaborators can review them , discuss about them , modify or change them if needed etc.
