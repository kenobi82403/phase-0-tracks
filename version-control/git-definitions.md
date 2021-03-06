# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful? Version control is a solo/collaboration tool which allow you to keep track of your changes and allow you to go back in time before the change if something went wrong. It is an important tool for developers because as a developer we usually dealing with thousands and thousands of codes and we collaborate with many people. Without a version control tools, it would immediately become a disaster when multiple developers work on one project working on the same thing. With a version control tool like git, the person with the master branch access will be able to review the change and approve it before it changes the master file.

* What is a branch and why would you use one?  A branch is a snapshot/copy of the original (master) file. This is useful because when you are testing out new features you do not want to play with the original or production copy. After your new feature is added, tested, and determined completed, then you can merge it back with the original.

* What is a commit? What makes a good commit message? A commit is the save point in time where the developer wants to save in git work flow time line. Its a point where the developer feels that if anything happen it should revert back to that point. When committing, git automatically generates an ID, save the time stamp, author name, and message. A good commit message is concise, easy to understand, so the next contributor pull your code or review your changes, they will know exactly what were the changes during each commit.

* What is a merge conflict? A merge conflict is when Git is confused on the intention of the merger. For example, if the two person decided to work on the same file and alter the same exact line. One person decided to delete a word, one person decided to modify a word, Git will be confused as to whether to delete the word or modify the word. Merge conflict will need to be resolve before the merge can be completed.

Thanks,
Kendy
