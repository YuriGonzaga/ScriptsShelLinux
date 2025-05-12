#!/bin/bash

echo "🔧 Instalando Git..."
sudo apt-get update
sudo apt-get install git-all -y

echo "📥 Clonando repositório ScriptsShelLinux..."
git clone https://github.com/YuriGonzaga/ScriptsShelLinux.git || {
    echo "❌ Falha ao clonar o repositório. Verifique o link e sua conexão.";
    exit 1;
}

cd ScriptsShelLinux || {
    echo "❌ Pasta ScriptsShelLinux não encontrada.";
    exit 1;
}

echo "📂 Movendo scripts para /bin..."
sudo mv SSHOnRoot up /bin/

echo "🧹 Limpando arquivos temporários..."
cd ..
rm -rf ScriptsShelLinux

echo "🔒 Tornando scripts executáveis..."
sudo chmod +x /bin/SSHOnRoot /bin/up

echo "✅ Instalação concluída! Você pode rodar os scripts com:"
echo "    SSHOnRoot"
echo "    up"
