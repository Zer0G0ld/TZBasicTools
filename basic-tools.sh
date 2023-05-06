#!/usr/bin/env bash

# Author: CodeOpen

# Date: 06/05/2023

pkg install toilet

clear

cd $HOME

toilet BasicTools --metal

echo "Vamo instalar em seu teminal algumas ferramentas e dependências. Você concorda? [ Y ] Yes ou [ N ] No

Let's install some tools and dependencies in your terminal. Do you agree? [ Y  ] Yes or [ N  ] No

"

read soun

if [[ "$soun" == "Y" ]]; then

  echo "Vamos começar atualizando seus pacotes:

  Let's start by updating your packages:

  "

  apt update -y && apt upgrade -y

  termux-change-repo

  pkg update -y && pkg upgrade -y

  clear

  toilet Ferramentas --metal 

  echo "Vamos instalar as linguaguens de programação: 

  Let's install the programming languages:

  * Python, Go, Node.js, Ruby, Perl, PHP e Rust

  "

  toilet Intalando Python.... --metal

  pkg i python -y && pkg i python2 -y && pkg i python3 -y

  echo ""

  echo "Python foi Instalado!"

  toilet Instalando Go... --metal

  pkg i golang -y

  echo ""

  echo "Go foi Instalado!"

  toilet Instalando Node.js ... --metal

  pkg i nodejs -y

  echo ""

  echo "Node.js foi Instalado!"

  toilet Instalando Ruby ... --metal

  pkg i ruby -y

  echo ""

  echo "Ruby foi Instalado!"

  toilet Instalando Perl ... --metal

  pkg i perl -y

  echo ""

  echo "Perl foi Instalado!"

  toilet Instalando PHP ... --metal

  pkg i php -y

  echo ""

  echo "PHP foi Instalado!"

  toilet Instalando Rust ... --metal

  pkg i rust

  echo ""

  echo "Rust foi Instalado!"

#  toilet Instalando Java e Android SDK ... --metal

#  pkg i 

#  echo ""

  clear

  echo "Outras ferramentas importantes como: 

  Other important tools such as:

    Git, Wget, Proot e Curl"

    toilet Intalando Nmap ... --metal

    pkg i nmap -y

    echo ""

    echo "Nmap foi Instalado!"

    clear

    toilet Instalando Git ... --metal

    pkg i git -y

    echo ""

    echo "Git foi Instalado!"

    clear

    toilet Instalando Wget ... --metal

    pkg i wget -y

    echo ""

    echo "Wget foi Instalado!"

    clear

    toilet Instalando Proot ... --metal

    pkg i proot -y

    echo ""

    echo "Proot foi Instalado!"

    clear

    toilet Instalando LolCat ... --metal

    pkg i lolcat -y

    echo ""

    echo "LolCat foi Instalado!"

    clear

    toilet Instalando OPENSSH... --metal

    pkg i openssh

    echo ""

    echo "Openssh foi Insalado!"

    toilet Instalando Curl ... --metal

    echo ""

    echo "Curl foi Instalado!"

    

    clear

    toilet Instalando jupyter notebook ... --metal

    pkg install python build-essential libzmq freetype libjpeg-turbo libpng

    python3 -m venv venv

    source venv/bin/activate

    pip3 install -U pip wheel setuptools

    pip3 install jupyter

    echo ""

    echo "jupyter notebook foi Instalado!"

    clear

    echo "Vamos começar a instalar as ferramentas e criaremos uma pasta onde vai ficar cada ferramenta, então peço sua atenção para preencher as informações que cada ferramenta pede. Você concorda em instalar essas ferramentas? [ Y ] Yes ou [ N ] No

    We are going to start installing the tools and we will create a folder where each tool will be located, so please fill in the information that each tool asks for.Do you agree to install these tools? [ Y  ] Yes or [ N  ] No

    "

    read sim

    if [[ "$sim" == "S" ]]; then

      # Verifica se a pasta "tools" existe

      if [ -d "$HOME/tools" ]; then

        echo "Pasta 'tools' encontrada."

        cd tools

        toilet Instalando Seeker ... --metal

        git clone https://github.com/thewhiteh4t/seeker.git

        cd seeker/

        chmod +x install.sh

        ./install.sh

        cd ..

        echo ""

        echo "Seeker foi Instalado!"

        clear

        

        toilet Instalando o Ngrok ... --metal

        git clone https://github.com/tchelospy/termux-ngrok.git

        cd termux-ngrok

        chmod +x termux-ngrok.sh

        ./termux-ngrok.sh

        cd ..

        echo "Ngrok foi Instalado"

        clear

        toilet Instalando CamHacking ... --metal

        git clone https://github.com/KasRoudra/CamHacker

        cd CamHacker

        termux-setup-storage

        cd ..

        echo "CamHacking foi Instalado"

        clear

        toilet Instalando Mr.Holmes ... --metal

        git clone https://github.com/Lucksi/Mr.Holmes

        cd Mr.Holmes

        proot -0 chmod +x install_Termux.sh

        ./install_Termux.sh

        cd ..

        echo ""

        echo "Mr.Holmes foi Instalado!"

        clear

        toilet Instalando Sherlock ... --metal

        git clone https://github.com/sherlock-project/sherlock.git

        cd sherlock

        python3 -m pip install -r requirements.txt

        cd ..

        echo ""

        echo "Sherlock foi Instalado!"

        clear

        toilet Istalando T-Root ... --metal

        git clone https://github.com/Anonymous-Zpt/T-root

        cd T-root

        bash install.sh

        ./start

        cd ..

        echo ""

        echo "T-Roor foi Instalado!"

        clear

        toilet Instalando Xteam ... --meta

        git clone https://github.com/xploitstech/Xteam

        cd Xteam

        pip3 install -r requirements.txt

        chmod +x *

        bash setup.sh

        bash Xteam.sh

        cd ..

        echo ""

        echo "Xteam foi Instalado!"

        clear

        toilet Intalando Nikto ... --metal

        git clone https://github.com/sullo/nikto

        cd nikto/program

        git checkout nikto-2.5.0

        cd ..

        clear

      else

        echo "Pasta 'tools' não encontrada. Criando pasta..."

        mkdir "$HOME/tools"

        cd tools

        toilet Instalando Seeker ... --metal

        git clone https://github.com/thewhiteh4t/seeker.git

        cd seeker/

        chmod +x install.sh

        ./install.sh

        cd ..

        echo ""

        echo "Seeker foi Instalado!"

        clear

        toilet Instalando o Ngrok ... --metal

        git clone https://github.com/tchelospy/termux-ngrok.git

        cd termux-ngrok

        chmod +x termux-ngrok.sh

        ./termux-ngrok.sh

        cd ..

        echo "Ngrok foi Instalado"

        clear

        toilet Instalando CamHacking ... --metal

        git clone https://github.com/KasRoudra/CamHacker

        cd CamHacker

        termux-setup-storage

        bash ch.sh

        cd ..

        echo "CamHacking foi Instalado"

        clear

        toilet Instalando Mr.Holmes ... --metal

        git clone https://github.com/Lucksi/Mr.Holmes

        cd Mr.Holmes

        proot -0 chmod +x install_Termux.sh

        ./install_Termux.sh

        cd ..

        echo ""

        echo "Mr.Holmes foi Instalado!"

        clear

        toilet Instalando Sherlock ... --metal

        git clone https://github.com/sherlock-project/sherlock.git

        cd sherlock

        python3 -m pip install -r requirements.txt

        cd ..

        echo ""

        echo "Sherlock foi Instalado!"

        clear

        toilet Istalando T-Root ... --metal

        git clone https://github.com/Anonymous-Zpt/T-root

        cd T-root

        bash install.sh

        ./start

        cd ..

        echo ""

        echo "T-Root foi Instalado!"

        clear

        toilet Instalando Xteam ... --metal

        git clone https://github.com/xploitstech/Xteam

        cd Xteam

        pip3 install -r requirements.txt

        chmod +x *

        bash setup.sh

        bash Xteam.sh

        cd ..

        echo ""

        echo "Xteam foi Instalado!"

        clear

        toilet Intalando Nikto ... --metal

        git clone https://github.com/sullo/nikto

        cd nikto/program

        git checkout nikto-2.5.0

        cd ..

        clear

      fi

    fi

fi
