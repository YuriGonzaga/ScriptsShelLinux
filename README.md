# ScriptsShelLinux

Scripts úteis para administração de sistemas Linux, com foco em automações rápidas.

## 📥 Instalação automática

Execute os comandos abaixo em sua máquina Linux para instalar o `git`, clonar este repositório, mover os scripts para `/bin` e torná-los executáveis:

```bash
# Instala o Git
sudo apt-get update
sudo apt-get install git-all -y

# Clona o repositório
git clone https://github.com/YuriGonzaga/ScriptsShelLinux.git

# Acessa a pasta clonada
cd ScriptsShelLinux

# Move os scripts desejados para /bin
sudo mv SSHOnRoot up /bin/

# Remove a pasta clonada
cd ..
rm -rf ScriptsShelLinux

# Torna os scripts executáveis
sudo chmod +x /bin/SSHOnRoot /bin/up
