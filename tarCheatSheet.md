Cheatsheet:
Creating files:
touch file1.sh file2.sh file3.sh
Creating a tar archive including specific files:
tar cvfW sample.tar file1.sh file2.sh file3.sh
Viewing tarball contents:
tar tf sample.tar
Creating a tar archive of multiple folders:
tar cvfW multi.tar 'TarDocs/Pictures' 'TarDocs/Documents'
Creating a tar archive of only XML files:
tar cvfW xmlfiles.tar $(find TarDocs -iname "*.xml")
Excluding a directory:
tar cvfW mytest.tar --exclude="TarDocs/Documents" TarDocs/
