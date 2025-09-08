# [sudo コマンド](sudo.md)

- 読み方：スードゥ、またはスード
- 意味：superuser do の略
- 用途：管理者（root）権限でコマンドを実行するためのコマンド

## 利用環境

LinuxやmacOSのターミナル、WSL など

## 基本操作

### 1. 管理者権限でコマンドを実行

```bash
sudo コマンド
```

- 例：システムパッケージを更新する場合（Ubuntu）

  ```bash
  sudo apt update
  ```

- 実行結果の例

  ```bash
  Hit:1 http://archive.ubuntu.com/ubuntu focal InRelease
  Get:2 http://archive.ubuntu.com/ubuntu focal-updates InRelease [114 kB]
  ...
  Reading package lists... Done
  ```

### 2. root ユーザーとしてシェルを起動

```bash
sudo -i
```

- 実行結果の例

  ```bash
  root@hostname:~#
  ```

## よく使うオプション

### 1. `-i`（login shell）：ログインシェルを起動

```bash
sudo -i
```

### 2. `-s`（shell）：シェルを起動

```bash
sudo -s
```

### 3. `-u`（user）：指定ユーザーとしてコマンドを実行

```bash
sudo -u ユーザー名 コマンド
```

- 実行例

  ```bash
  sudo -u user2 ls /home/user2
  ```

- 実行結果の例：

  ```bash
  fileA.txt  fileB.txt  documents
  ```

### 4. `-v`（validate）：認証の有効期限を延長

```bash
sudo -v
```

### 5. `--help`：ヘルプを表示

```bash
sudo --help
```

## よく使う実務例

### 1. パッケージのインストール

```bash
sudo apt install git
```

- 実行結果の例

  ```bash
  Reading package lists... Done
  Building dependency tree
  Reading state information... Done
  The following NEW packages will be installed:
    git
  0 upgraded, 1 newly installed, 0 to remove and 3 not upgraded.
  Need to get 21.3 MB of archives.
  After this operation, 80.0 MB of additional disk space will be used.
  Do you want to continue? [Y/n]
  ```

### 2. ファイルの権限変更

```bash
sudo chown root:root /path/to/file
sudo chmod 644 /path/to/file
```

- 実行結果の例（`ls -l` で確認）

  ```bash
  -rw-r--r-- 1 root root 1024 9月  9 03:00 /path/to/file
  ```

### 3. サービスの再起動

```bash
sudo systemctl restart nginx
```

- 実行結果の例（ステータス確認）

  ```bash
  sudo systemctl status nginx
  ● nginx.service - A high performance web server
     Loaded: loaded (/lib/systemd/system/nginx.service; enabled; vendor preset: enabled)
     Active: active (running) since Tue 2025-09-09 03:05:10 JST; 5s ago
  ```

### 4. ファイルの編集（管理者権限）

```bash
sudo nano /etc/hosts
```

- 実行結果の例（nano 画面）

  ```
  127.0.0.1   localhost
  127.0.1.1   myhostname # 新しいエントリを追加可能
  ```

### 5. ディレクトリの作成・削除（管理者権限）

```bash
sudo mkdir /opt/myapp
sudo rm -rf /opt/myapp
```

- 実行結果の例（作成後 `ls /opt` で確認）

  ```bash
  myapp
  ```

## [sudo と su コマンドの違い](sudo-su-compare.md)

## 注意点

- sudo を使うとシステムに大きな変更を加える可能性があるため、実行するコマンドは正確に確認すること
- 誤ってシステムファイルを削除したり変更したりすると、OS が起動しなくなる場合がある

以上
