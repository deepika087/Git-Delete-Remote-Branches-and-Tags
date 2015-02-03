# Git-Delete-Remote-Branches-and-Tags
I had created a Jenkins(continuous integration and continuous deployment) script. The requirement of the script was such that the Integration test cases of the project should run on remote server rather than jenkins itself, therefore it was required to create a temporary branch with some changes, which was later checkout out on the remote server and used to run the integration test cases.
However, as part of this process, a lot of branches and tags used to get created with prefix "release_". Here is the sample Shell script which makes use of git commands with awk. This script will delete all remote branches and tags with "release_" as the prefix and then prunes the local and remote repository.

Copy the script on your git repository structure. 
Open Git command line.
Replace XYZ Folder names with the complete path name of your git repository.
sh [Name of shell scipt].sh

Result:
Automatically deletes all remote branches and tags with prefix release_. You may change this prefix as per your requirement.
