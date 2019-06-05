# ssh_server

## 準備
```bash
docker-compose build
```

## サーバ起動
```bash
docker-compose run --rm --service-ports share
```

## 外部からSSH
```bash
ssh guest@xxx.xxx.xxx.xxx -p 10022
# pass: abc123
```
