#!/bin/bash/sh
tput setaf 3
echo "--------------------------Software to install-----------------------------------"
echo "
      1. GIT
      2. PYTHON
      3. Java
      4. ANSIBLE
      5. KUBECTL
      6. KEYPASS
      7. DOCKER
      8. AWS CLI
      9. TERRAFORM
      10. HELM
      11. LENS
      12. MULTIPASS
      13. TMUX
      14. WATCH
      15. TREE
      16. JQ
      17. GOLANG
      18. VSCODE
      19. PYCHARM
      20. pre-commit
      21. NODE JS"
name=$(grep '^ID=' /etc/os-release | awk -F= {'print$2'})
if [ '"rhel"' = "$name" ]
then
o="yum"
elif [ '"ubuntu"' = "$name" ]
then
o="apt-get"
fi
echo "if you want to install all software than press 0 else press particular number:-"
read -a b 
if [ $b -eq 0 ]
then
b=( 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 )
fi
for i in "${b[@]}"
do
case $i in
	1)
	git --version > /dev/null 2>&1
        x=$(echo $?)
        if [ $x -eq 0 ]
	then
	echo "git is already installed";
        else
	echo "--------------1. installing git"	
	$o install git -y;
	tput setaf 5	
	fi;;
	2)
	python3 --version > /dev/null 2>&1
	x=$(echo $?)
	if [ $x -eq 0 ]
        then
        echo "python3 is already installed";
        else
	echo "--------------2. installing python"
	$o install python3 -y;
	tput setaf 4
	fi;;

	3)
	java --version > /dev/null 2>&1
        x=$(echo $?)
        if [ $x -eq 0 ]
	then 
        echo "Java is already installed";
        else
        echo "--------------2. installing java"
        curl -sfL https://get.k3s.io | sudo sh - 
        $o install python3 -y;
        tput setaf 4
        fi;;


	4)
	ansible --version > /dev/null 2>&1
        x=$(echo $?)
        if [ $x -eq 0 ]
        then
        echo "ansible is already installed";
        else
	echo "--------------4. installing ansible"
	$o install ansible -y;
	tput setaf 6
	fi;;

	5)
	kubectl --version > /dev/null 2>&1
        x=$(echo $?)
        if [ $x -eq 0 ]
        then
        echo "kubectl is already installed";
        else
	echo "--------------5. installing kubectl"
	curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
	curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
	sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
	tput setaf 4
	fi;;
	
	6)
	KeePass --version > /dev/null 2>&1
        x=$(echo $?)
        if [ $x -eq 0 ]
        then
        echo "KeePass is already installed";
        else
        echo "--------------6. installing keypass"
        sudo $o install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y
	sudo $o install keepass -y
        tput setaf 6
	fi;;

	7)
	docker --version > /dev/null 2>&1
        x=$(echo $?)
        if [ $x -eq 0 ]
        then
        echo "docker is already installed";
        else
	echo "--------------7. installing docker";
	sudo yum install -y yum-utils;
	sudo yum-config-manager \
    	--add-repo \
    	https://download.docker.com/linux/centos/docker-ce.repo;
	sudo yum install docker-ce docker-ce-cli containerd.io;
	tput setaf 6
        fi;;

	8)
	aws --version > /dev/null 2>&1
        x=$(echo $?)
        if [ $x -eq 0 ]
        then
        echo "aws is already installed";
        else

	echo "---------------8. installing aws cli"
	curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
	unzip awscli-bundle.zip
	sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
	tput setaf 7
	fi;;

	9)
	terraform --version > /dev/null 2>&1
        x=$(echo $?)
        if [ $x -eq 0 ]
        then
        echo "terraform is already installed";
        else
	echo "---------------9. installing Terraform"
	sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo;
	sudo yum -y install terraform;
	tput setaf 6 
	fi;;

	10)
        helm version > /dev/null 2>&1
        x=$(echo $?)
        if [ $x -eq 0 ]
        then
        echo "helm is already installed";
        else
	echo "---------------10. installing helm"
	wget https://get.helm.sh/helm-v3.6.0-linux-amd64.tar.gz
        tar xvf helm-v3.6.0-linux-amd64.tar.gz
	sudo mv linux-amd64/helm /usr/local/bin
	rm helm-v3.6.0-linux-amd64.tar.gz -y
	rm -rf linux-amd64
	fi;;

        11)
        lens --version > /dev/null 2>&1
        x=$(echo $?)
        if [ $x -eq 0 ]
        then
        echo "LENS is already installed";
        else
        echo "--------------2. installing LENS"
	curl -sfL https://get.k3s.io | sudo sh -

        $o install python3 -y;
        tput setaf 4
        fi;;

        12)
	Multi-pass --version > /dev/null 2>&1
        x=$(echo $?)
        if [ $x -eq 0 ]
        then
        echo "Multi-pass is already installed";
        else
        echo "--------------2. installing MULTI-PASS"
        curl -sfL https://get.k3s.io | sudo sh -

        $o install python3 -y;
        tput setaf 4
        fi;;

	13)
        TMUX --version > /dev/null 2>&1
        x=$(echo $?)
        if [ $x -eq 0 ]
        then
        echo "TMUX is already installed";
        else
        echo "--------------2. installing TMUX"
        curl -sfL https://get.k3s.io | sudo sh -

        $o install python3 -y;
        tput setaf 4
        fi;;
         
	14)
        Watch --version > /dev/null 2>&1
        x=$(echo $?)
        if [ $x -eq 0 ]
        then
        echo "Watch is already installed";
        else
        echo "--------------2. installing Watch"
        curl -sfL https://get.k3s.io | sudo sh -

        $o install python3 -y;
        tput setaf 4
        fi;;
        
	15)
        Tree --version > /dev/null 2>&1
        x=$(echo $?)
        if [ $x -eq 0 ]
        then
        echo "Tree is already installed";
        else
        echo "--------------2. installing Tree"
        curl -sfL https://get.k3s.io | sudo sh -

        $o install python3 -y;
        tput setaf 4
        fi;;

	16)
        JQ --version > /dev/null 2>&1
        x=$(echo $?)
        if [ $x -eq 0 ]
        then
        echo "JQ is already installed";
        else
        echo "--------------2. installing JQ"
        curl -sfL https://get.k3s.io | sudo sh -

        $o install python3 -y;
        tput setaf 4
        fi;;

	17)
        export PATH=$PATH:/usr/local/go/bin
        go version > /dev/null 2>&1
        x=$(echo $?)
        if [ $x -eq 0 ]
        then
        echo "Golang is already installed";
        else
        echo :	"--------------17. installing Golang"
        wget https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz
        sudo tar -C /usr/local -xf go1.13.5.linux-amd64.tar.gz
        echo export PATH=$PATH >> ~/.bashrc
        tput setaf 4
        fi;;

	18)
        code --version > /dev/null 2>&1
        x=$(echo $?)
        if [ $x -eq 0 ]
        then
        echo "vs-code is already installed";
        else
        echo "--------------2. installing vs-code"
        curl -sfL https://get.k3s.io | sudo sh -

        $o install python3 -y;
        tput setaf 4
        fi;;

	19)
        pycharm --version > /dev/null 2>&1
        x=$(echo $?)
        if [ $x -eq 0 ]
        then
        echo "pycharm is already installed";
        else
        echo "--------------2. installing pycharm"
        curl -sfL https://get.k3s.io | sudo sh -

        $o install python3 -y;
        tput setaf 4
        fi;;

	20)
        pre-commit --version > /dev/null 2>&1
        x=$(echo $?)
        if [ $x -eq 0 ]
        then
        echo "pre-commit is already installed";
        else
        echo "--------------3. installing pre-commit";
        pip3 install pre-commit;
        tput setaf 3
        fi;;

        21)
	java --version > /dev/null 2>&1
        x=$(echo $?)
        if [ $x -eq 0 ]
        then
        echo "Java is already installed";
        else
        echo "--------------2. installing java"
        curl -sfL https://get.k3s.io | sudo sh -

        $o iinstall python3 -y;
        tput setaf 4
        fi;;

	21)
        node -v > /dev/null 2>&1
        x=$(echo $?)
        if [ $x -eq 0 ]
        then
        echo "node js is already installed";
        else
        echo "--------------2. installing nodejs"
        sudo $o groupinstall 'Development tools'
	sudo $o module install nodejs/development
        tput setaf 4
        fi;;
esac
done
