# Challenge - Configure Network Services in Linux

Refer to the [Problem Statement](./PROBLEM.md) and understand the practice and the expected solution output format.

# Setup Instructions

1. Fork this repository - Refer [Git Usage Instruction](#git-reference)
2. Clone the repository - Refer [Git Usage Instruction](#git-reference)
3. For each exercise `Vagrantfile` is present in the respective folder. cd into the exercise folder and use vagrant commands to start and stop the virtual machine - Refer [Vagrant command reference to setup and teardown VMs](#vagrant-reference)


## VLab Setup Instructions

All practices and challenges will require a lab environment which you can access through the following link. 

https://vlabs.stackroute.com/store/view?name=eebbdc6f-f5fd-4d0e-ac02-ac277d921c4f&target=sso 

Access the VLab and then perform the following instructions.

<section id="git-reference">

# Git Usage Instructions 

Note: The gitlab names used in the instructions below will change according to the practice or challenge that you refer to.

1. Fork this repository to create a repository at https://myrepos.stackroute.com:{{yourusername}}/{{gitlab_name}} 
2. Clone the repository using the Clone button and select `Clone with SSH` 

Cloned link will be like this:- git@myrepos.stackroute.com:{{yourusername}}/{{gitlab_name}}.git.

Replace the {{yourusername}} with your username like john.doe.

Replace the {{gitlab_name}} with your gitlab name like practice_installing_upgrading_applications.

3. In VLAB, open the terminal and enter the following command:
```
git clone git@myrepos.stackroute.com:{{yourusername}}/{{gitlab_name}}.git
```
4. Enter your credentials.
5. The commands will create a folder with **gitlab_name**. Navigate to this folder using the following command:
```
cd <gitlab_name>
```
6. Check that the repo files have been cloned to your directory using the following command: 
```
ls
```
7. If there is any issue repeat the cloning steps.

# Git Submission Instructions

After completing the exercise or challenge, refer to the following instructions to submit your solutions.

1. Check the status of your repo
```
git status
```
2. Use the following command to add your modified files to commit.
```
git add .
```
3. Commit and Push the project to git using the following commands:
```
git commit -a -m <any-commit-message>
```
```
git push origin master
```
Note: Provide a suitable commit message such as "Final Solution", "First draft", etc.

4. Check that all files have been pushed in your namespace repo  https://myrepos.stackroute.com:{{yourusername}}/{{gitlab_name}} 

</section>

# Problem Statement
1. Refer to the [PROBLEM.md](./PROBLEM.md) file for the problem description.
2. Vagrantfiles for each exercise are given in their respective directories.

# Vagrant command reference to setup and teardown VMs

Refer to the below instructions to understand how to set up and teardown the VM for each exercise. You can refer to the below commands 

1. Start vagrant environment with
```
vagrant up
```
Restart vagrant machine loads new vagrantfile configuration with
```
vagrant reload
```
2. Get into a VM: Connect to the machine via SSH with
```
vagrant ssh
``` 
If there are multiple machines in your Vagrantfile, you can ssh into a specific machine with
```
vagrant ssh <machine name>
```
3. Stop the vagrant machine with
```
vagrant halt 
```
4. Clean up a VM: Stop and delete all traces of the vagrant machine with
```
vagrant destroy
```
# Submit Instructions
1. Capture each step involved in the challenge, along with any Linux commands in the solution.md file.  ​
2. You have been provided a solution.md in respective exercise file. ​
3. To submit your solutions, take screenshots of each command output and save into the folder. 
4. Each screenshots name starts with the serial number. Upload image files in images folder 
5. Example - Screenshotname_screen-1​​
6. Once the exercise is completed and pushed into the repository submit your repository URL to the mentor.

