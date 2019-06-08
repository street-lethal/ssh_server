# ssh_server

## 準備 (省略可)
```bash
docker-compose build
```

## サーバ起動
```bash
docker-compose up -d
```
もしくは
```bash
./scripts/0_server.sh
```

## 外部からSSH
```bash
ssh guest@xxx.xxx.xxx.xxx -p 10022
# pass: abc123
```
