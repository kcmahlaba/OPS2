az vm create \
  --resource-group learn-0126dd69-2665-47b6-b81c-10df910b9644 \
  --name my-vm \
  --public-ip-sku Standard \
  --image Ubuntu2204 \
  --admin-username kcmahlaba \
  --generate-ssh-keys

    ssh kcmahlaba@pubAdress
    sudo apt-get update
    sudo apt-get -y install nginx
    systemctl is-active nginx
    sudo systemctl start nginx
    systemctl is-active
    sudo systemctl is-active nginx
    sudo mkdir /var/www/html/labs
    ls -ld /var/www/html/labs
    sudo chown kcmahlaba:root /var/www/html/labs
    ls -ld /var/www/html/labs
    ln -s /var/www/html/labs html
    ls -l
    cd html
    touch index.html
    sudo nano index.html
    cat index.html


    <html>
<body>

<h1> STUDENT INFORMATION PAGE</h1>
<h2> KC Mahlaba</h2>
<h2> 221851216</h>
<h2>Computer Systems</h>

</body>
    </html>

    cat index.html
    mkdir bin
    cd bin
    touch websvr_config_script.bash
    ls -l
    chmod u+x websvr_config_script.bash
    ls -l
    ./websvr_config_script.bash
    nano websvr_config_script.bash

    #!/bin/bash
    dir="labs"
    link = "html"
    page = "index.html"
    echo "*************************"
    echo "NGINX IS ACTIVE"
    echo "*************************"
    sleep 1
    echo "CREATING A DIRECTORY"
    mkdir /var/www/html$dir
    sleep 1
    echo "*************************"
    echo "DIRECTORY CREATED"
    sleep 1
    echo "*************************"
    echo "CHANGE OWNERSHIP"
    chown $USER:root /var/www/html/labs
    echo "*************************"
    echo "OWNERSHIP CHANGED"
    echo "*************************"
    sleep 1
    echo "CREATING SYMBOLIC LINK"
    ln -s /var/www/html/$dir $link
    echo "*************************"
    echo "SYMBOLIC CREATED"
    echo "*************************"
    sleep 1
    echo "CREATING A TEST PAGE"
    cat /var/html/$page
  else
    echo "NGINX NOT ACTIVE"
  exit 1

  fi

./websvr_config_script.bash
