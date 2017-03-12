# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
* Version control is the standard by which revisions and changes to software projects are managed and organized.  Version control systems allow for multiple people to manipulate software projects without risking harm or conflict between different editor's changes.  Lastly, version control keeps all past iterations of code so that the code can be rolled back if necessary.

* What is a branch and why would you use one?
* Branching is the process of making a copy of the code being worked on in order to make distinct changes or update features.  Once implemented the branch can be merged back into the master branch. Branching allows for multiple coders to work on the same code without possible conflict.  That is, if conflicts arrise during the merge they are dealt with before merging can take place.

* What is a commit? What makes a good commit message?
* Commit is when the changes made to code within a branch is confirmed and finalized.  That save point will then be remembered by git and could be revisited if necessary.  Good commit messages clearly and specifically describe what was changed. 

* What is a merge conflict?
* Merge conflicts can occur when there are changes to the same file on multiple branches.  Git will raise exception when such conflicts arise during the merge attempt.  From there, the coder can confirm just which of the contradictory changes were meant to be made.