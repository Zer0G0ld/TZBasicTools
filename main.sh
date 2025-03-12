#!/usr/bin/env bash

# Autor: CodeOpen
# Data: 06/05/2023

pkg install -y
clear

cd "$HOME"

echo -e "\e[1;32mTZBasicTools Setup\e[0m"

# Função para exibir mensagens formatadas
mensagem() {
  echo -e "\e[1;34m$1\e[0m"
  sleep 1
}

# Função para atualizar pacotes
atualizar_pacotes() {
  mensagem "Atualizando Pacotes..."
  apt update -y && apt upgrade -y
  termux-change-repo
  pkg update -y && pkg upgrade -y
  mensagem "Pacotes atualizados com sucesso!"
}

# Função para instalar pacotes evitando reinstalação
instalar_pacote() {
  local pacote=$1
  if dpkg -s "$pacote" &>/dev/null; then
    mensagem "$pacote já está instalado. Pulando..."
  else
    mensagem "Instalando $pacote..."
    pkg install "$pacote" -y > /dev/null 2>&1
    mensagem "$pacote instalado com sucesso!"
  fi
}

# Função para instalar linguagens de programação
instalar_linguagens() {
  for lang in python python2 python3 golang nodejs ruby perl php rust; do
    instalar_pacote "$lang"
  done
  mensagem "Todas as linguagens foram instaladas!"
}

# Função para instalar ferramentas essenciais
instalar_ferramentas() {
  for tool in nmap git wget proot openssh curl; do
    instalar_pacote "$tool"
  done
  mensagem "Todas as ferramentas essenciais foram instaladas!"
}

# Função para instalar ferramentas adicionais
instalar_ferramentas_extras() {
  mkdir -p "$HOME/tools"
  cd "$HOME/tools"

  # Função para instalar ferramentas de repositórios Git
  instalar_git_tool() {
    local repo=$1
    local pasta=$(basename "$repo" .git)
    
    if [ -d "$HOME/tools/$pasta" ]; then
      mensagem "$pasta já instalado. Pulando..."
    else
      mensagem "Baixando $pasta..."
      git clone "$repo" > /dev/null 2>&1
      
      # Verifica qual nome de pasta foi criado
      local pasta_real=$(ls -td "$HOME/tools"/*/ | head -1 | tr -d '/')

      if [[ -d "$HOME/tools/$pasta_real" ]]; then
        cd "$HOME/tools/$pasta_real" || { mensagem "Erro ao acessar $pasta_real"; return; }
        
        # Executa os scripts de instalação se existirem
        [[ -f install.sh ]] && chmod +x install.sh && ./install.sh
        [[ -f setup.sh ]] && chmod +x setup.sh && ./setup.sh
        
        mensagem "$pasta_real instalado com sucesso!"
      else
        mensagem "Erro: diretório da ferramenta não encontrado após clone!"
      fi
    fi
  }

  # Lista de ferramentas para instalar
  ferramentas=(
    "https://github.com/thewhiteh4t/seeker.git"
    "https://github.com/tchelospy/termux-ngrok.git"
    "https://github.com/KasRoudra/CamHacker.git"
    "https://github.com/Lucksi/Mr.Holmes.git"
    "https://github.com/sherlock-project/sherlock.git"
    "https://github.com/Anonymous-Zpt/T-root.git"
    "https://github.com/xploitstech/Xteam.git"
    "https://github.com/sullo/nikto.git"
  )

  for ferramenta in "${ferramentas[@]}"; do
    instalar_git_tool "$ferramenta"
  done

  mensagem "Todas as ferramentas adicionais foram instaladas!"
}

# Função para exibir o menu principal
setup() {
  while true; do
    clear
    echo -e "\e[1;36m===== MENU =====\e[0m"
    echo "1) Atualizar pacotes"
    echo "2) Instalar linguagens de programação"
    echo "3) Instalar ferramentas essenciais"
    echo "4) Baixar e instalar ferramentas extras"
    echo "5) Sair"
    
    read -r opcao
    
    case "$opcao" in
      1) atualizar_pacotes ;;
      2) instalar_linguagens ;;
      3) instalar_ferramentas ;;
      4) instalar_ferramentas_extras ;;
      5) echo -e "\e[1;33mSaindo...\e[0m"; exit ;;
      *) echo -e "\e[1;31mOpção inválida!\e[0m"; sleep 1 ;;
    esac
  done
}

# Iniciando o menu
setup

