#FileSystemNavigation
ls
cd var/log
which bash
echo $SHELL
mkdir linux_fundamentals

#File&DirectoryOperations
mkdir linux_fundamentals/scripts
touch example.txt
cp example.txt scripts/example.txt
mv example.txt backup.Permissions

touch commands.sh

chmod 644 example.txt
ls -l

##FileModification
touch example.txt

sudo chown student example.txt

sudo chgrp student example.txt

#Ownership
mkdir project
touch report.txt

chmod 644 report.txt
ls -la
chmod 755 project
ls -la

#UserAdd/Modify
sudo useradd developer
sudo usermod -d /home/developer_home -m developer


sudo usermod -s /bin/sh developer
cat /etc/passwd
sudo usermod -l devuser developer

sudo groupadd devgroup
sudo usermod -a -G devgroup devuser
sudo passwd devuser
cat /etc/passwd

#Hard/SoftLink
touch original.txt
ln -s scripts/original.txt softlink.txt
ls -lh

rm original.txt
ls -lh

touch datafile.txt
ln ../datafile.txt hardlink.txt
ls -i hardlink.txt
ls -i datafile.txt

rm datafile.txt
ls 
ls -i
find .  -type f -name "*.txt"

#Package Installation
sudo apt update
sudo apt install tree
gcloud init