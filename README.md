# ssh_server

## パスワード認証の場合
### 準備 (省略可)
```bash
docker-compose build
```

### サーバ起動
```bash
docker-compose up -d
```
もしくは
```bash
./scripts/0_server.sh
```

### 外部からSSH
```bash
ssh guest@xxx.xxx.xxx.xxx -p 10022
# pass: abc123
```

## 鍵認証の場合

### 鍵の用意

公開鍵(id_rsa.pub)/秘密鍵(id_rsa)のペアを用意し、公開鍵(id_rsa.pub)を `keys` ディレクトリ下に配置する  
(新たに生成するには `ssh-keygen`)

### 準備
```bash
docker-compose -f docker-compose.pubkey.yml build
```
もしくは
```bash
./scripts/1_pubkey.sh
```

### サーバ起動
```bash
docker-compose up -d
```
もしくは
```bash
./scripts/0_server.sh
```

### 外部から秘密鍵(id_rsa)を用いてSSH
```bash
ssh guest@xxx.xxx.xxx.xxx -p 10022 -i path/to/id_rsa
```
