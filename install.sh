#!/bin/bash

# Definindo as cores
GREEN='\033[0;32m'   # Verde
RED='\033[0;31m'     # Vermelho
NC='\033[0m'         # Sem cor (reset)

# Instalando o Git
echo -e "${GREEN}Instalando Git...${NC}"
sudo apt-get update
sudo apt-get install git-all -y || {
    echo -e "${RED}❌ Falha ao instalar o Git. Verifique sua conexão ou repositórios.${NC}";
    exit 1;
}

# Clonando o repositório ScriptsShelLinux
echo -e "${GREEN}Clonando repositório ScriptsShelLinux...${NC}"
git clone https://github.com/YuriGonzaga/ScriptsShelLinux.git || {
    echo -e "${RED}❌ Falha ao clonar o repositório. Verifique o link e sua conexão.${NC}";
    exit 1;
}

# Acessando a pasta ScriptsShelLinux
cd ScriptsShelLinux || {
    echo -e "${RED}❌ Pasta ScriptsShelLinux não encontrada.${NC}";
    exit 1;
}

# Movendo os scripts para /bin
echo -e "${GREEN}Movendo scripts para /bin...${NC}"
sudo mv SSHOnRoot up /bin/ || {
    echo -e "${RED}❌ Falha ao mover os scripts para /bin.${NC}";
    exit 1;
}

# Limpando arquivos temporários
echo -e "${GREEN}Limpando arquivos temporários...${NC}"
cd .. || {
    echo -e "${RED}❌ Não foi possível retornar ao diretório anterior.${NC}";
    exit 1;
}
rm -rf ScriptsShelLinux || {
    echo -e "${RED}❌ Falha ao remover a pasta ScriptsShelLinux.${NC}";
    exit 1;
}

# Tornando os scripts executáveis
echo -e "${GREEN}Tornando scripts executáveis...${NC}"
sudo chmod +x /bin/SSHOnRoot /bin/up || {
    echo -e "${RED}❌ Falha ao tornar os scripts executáveis.${NC}";
    exit 1;
}

# Mensagem final
echo -e "${GREEN}Instalação concluída! Você pode rodar os scripts com:${NC}"
echo -e "${GREEN}    SSHOnRoot${NC}"
echo -e "${GREEN}    up${NC}"
