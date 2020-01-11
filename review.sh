## General Linux Review
### Instructions
In this activity, you will complete a review of core Linux concepts.
- You can work on this activity with a partner. However, feel free to work by yourself if you wish to gauge your Linux knowledge.
- Take your time and be thorough when answering each question. Once you have finished, be prepared to be called on to answer questions during our review.
### Questions
- What are some Text Editors?
emacs, nano, vim
- What is the Top of the Linux file structure?
the root directory '/'  
- Name the directory that contains:
  - Binaries / Executables 
/bin
  - Files associated to the Kernel(core part of OS)
/boot
  - Log Files
/var/log
  - Temporary Files
/tmp, /var/tmp 
  - Configuration Files
/etc 
  - Process Files
/proc 
  - Files the user wants to save
/documents 
- Name the command you use to:
  - Install a package
apt install <package> 
  - Add a user (*Note*: Name two commands.)
add user
user add 
  - Change a password
passwd <user>
  - Create a neww group
groupadd <group>
  - Add a user to a group
usermod -aG examplegroup exampleusername
  - Check which groups you’re in
groups 
  - Find your user ID
usermod -u 1004 user_2 
- What are the 3 types of file permissions?
r, w, ex
Owner, Group,and World/Other 
- Which command displays a file’s permissions?
chmod 
- Which file gets modified when a user is added to the system?
users
- Which file contains hashed passwords?
passwd
- How can you tell which algorithm was used to hash a password in the file above?
the number in the dollar sign ($6$=sha512-crypt hash) 
- Which command changes file permissions?
chmod 
- What are the 2 types of ways to change file permissions?
Symbolic and octal
- What is the command to change ownership permissions?
chown
- How do you edit the sudoers file?
visudo
- How do you use sudo?
sudo
- What is the command to switch to another user?
su <user>
- What is the command to archive files?
tar cvf <archieve name> <file>
- What is the command to view running processes?
top
ps 
-kill processes 
kill and kill all 
only kill requires PID 
