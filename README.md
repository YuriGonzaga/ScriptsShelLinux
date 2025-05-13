# 🐧 ScriptsShelLinux

Coleção de scripts simples e úteis para auxiliar na administração de sistemas Linux. Este projeto automatiza tarefas básicas como ativar SSH para root e atualizar o sistema com um único comando.

---

## ⚙️ Instalação

Você pode instalar os scripts de duas formas:

---

### 🔹 Opção 1 – Instalação Automática (Recomendada)

Execute o comando abaixo no terminal:

```bash
bash <(curl -s https://raw.githubusercontent.com/YuriGonzaga/ScriptsShelLinux/main/install.sh)
```

Ou, com `wget`:

```bash
wget -qO- https://raw.githubusercontent.com/YuriGonzaga/ScriptsShelLinux/main/install.sh | bash
```

Esse script automático realiza:

* Instalação do Git (caso necessário);
* Clonagem do repositório;
* Movimento dos scripts para `/bin`;
* Aplicação de permissões de execução;
* Limpeza dos arquivos temporários.

---

### 🔹 Opção 2 – Instalação Manual

Siga os passos abaixo se preferir instalar manualmente:

#### 📥 1. Instalar o Git (caso não tenha)

```bash
sudo apt-get update
sudo apt-get install git-all -y
```

#### 🔽 2. Clonar o repositório

```bash
git clone https://github.com/YuriGonzaga/ScriptsShelLinux.git
```

#### 📂 3. Acessar o diretório clonado

```bash
cd ScriptsShelLinux
```

#### 📤 4. Mover os scripts para o diretório global

```bash
sudo mv SSHOnRoot up /bin/
```

#### ✅ 5. Tornar os scripts executáveis

```bash
sudo chmod +x /bin/SSHOnRoot /bin/up
```

#### 🧹 6. Limpar arquivos temporários

```bash
cd ..
rm -rf ScriptsShelLinux
```

---

## 🚀 Como usar

Após a instalação, use os scripts diretamente no terminal:

```bash
SSHOnRoot   # Ativa SSH para o usuário root
up          # Atualiza o sistema (apt update && upgrade)
```

---

## 📄 Scripts incluídos

| Script      | Descrição                                              |
| ----------- | ------------------------------------------------------ |
| `SSHOnRoot` | Ativa o login SSH para o usuário root.                 |
| `up`        | Atualiza o sistema                                     |  
| `portrainer`| Instala Docker e Portrainer                            |              


---

## 📁 Estrutura do repositório

```
ScriptsShelLinux/
├── SSHOnRoot         # Script para ativar SSH como root
├── up                # Script para atualizar o sistema
├── install.sh        # Instalador automático
└── README.md         # Este arquivo
```

---

## 📜 Licença

Este projeto está licenciado sob a [MIT License](LICENSE).

---

## ✍️ Autor

Feito com 💻 por [Yuri Gonzaga](https://github.com/YuriGonzaga)

Contribuições são bem-vindas!
