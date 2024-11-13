# docker-spring-boot

Docker 環境で Spring Boot Web サービスを起動する

## 環境

OS：Windows 10 Pro 21H2
Rancher Desktop 1.9.1
Docker version 24.0.2-rd, build e63f5fa

## 実行コマンド

```bash
# ビルド
$ docker-compose up -d

# 動作確認
$ curl -v http://localhost:8080/api/data -w '\n'

* Trying 127.0.0.1:8080...
* Connected to localhost (127.0.0.1) port 8080 (#0)
> GET /api/data HTTP/1.1
> Host: localhost:8080
> User-Agent: curl/7.88.1
> Accept: */*
>
< HTTP/1.1 200
< Content-Type: application/json
< Transfer-Encoding: chunked
< Date: Wed, 13 Nov 2024 03:28:30 GMT
<
{"message":"Hello World!"}* Connection #0 to host localhost left intact

# コンテナ状態確認
$ docker ps
# コンテナ接続
$ docker exec -it jvm-app-container bash

```

## 参考

- [Docker 環境で Spring Boot Web サービスを起動する](https://qiita.com/studio_meowtoon/items/9c07e20b4124d8c5f972)
- [Spring Boot Web サービスで Hello World する](https://qiita.com/studio_meowtoon/items/37ac0082a3228e4de570)
