# [history コマンド](history.md)

* **読み方**：ヒストリー
* **意味**：履歴（history）
* **用途**：シェルで実行したコマンドの履歴を表示・利用するためのコマンド

## 利用環境

LinuxやmacOSのターミナル、WSL、Git Bash、その他Bash/Zshなどのシェル環境

## 基本操作

### 1. コマンド履歴を表示

```bash
history
```

- 実行結果の例

  ```bash
    1  ls
    2  cd /var
    3  mkdir testdir
    4  history
  ```

### 2. 直近の指定数だけ表示

```bash
history 10
```

- 実行結果の例

  ```bash
   95  ls -l
   96  cd /etc
   97  cat hosts
   98  vim test.txt
   99  pwd
  100  history 10
  ```

## よく使う機能

### 1. `!番号`：指定した履歴番号のコマンドを再実行

#### 例：履歴番号 100 のコマンドを再実行する

```bash
!100
```

### 2. `!!`：直前のコマンドを再実行

```bash
!!
```

### 3. `!文字列`：直近で「文字列」から始まるコマンドを再実行

#### 例：直近の `ls` コマンドを再実行する

```bash
!ls
```

## オプション

### 1. `-c`：履歴をすべてクリア

```bash
history -c
```

### 2. `-d 番号`：指定した履歴を削除

```bash
history -d 100
```

### 3. `-w`：現在の履歴を履歴ファイル（通常 `~/.bash_history`）に書き込む

```bash
history -w
```

### 4. `-r`：履歴ファイルを読み込む

```bash
history -r
```

## 補足

- Bash では履歴は `~/.bash_history` に保存される
- Zsh では `~/.zsh_history` に保存される
- [環境変数](環境変数.md) `HISTSIZE` で記憶される履歴数を設定可能

以上