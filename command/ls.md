# ls コマンド

- 読み方：エルエス
- 意味：list の略
- 用途：ディレクトリ内のファイルやディレクトリの一覧を表示するためのコマンド

## 利用環境

LinuxやmacOSのターミナル、WSL、Git Bashなど

## 基本操作

### 1. 現在のディレクトリの内容を表示

```bash
ls
```

- 実行結果の例

  ```bash
  file1.txt  file2.txt  ディレクトリa
  ```

### 2. 特定のディレクトリの内容を表示

```bash
ls ディレクトリ名
```

- 実行結果の例

  ```bash
  subfile1.txt  subfile2.txt
  ```

## よく使うオプション

### 1. `-l`（long format）：詳細情報付きで表示

- [パーミッション](permission.md)、所有者、ファイルサイズ、更新日時などを確認可能

```bash
ls -l
```

- 実行結果の例

  ```bash
  -rw-r--r--  1 user user   120  9月  8 12:00 file1.txt
  drwxr-xr-x  2 user user  4096  9月  8 12:01 ディレクトリa
  ```

### 2. `-a`（all）：隠しファイルも表示

- `.` から始まるファイル（例：`.bashrc`）も表示される

```bash
ls -a
```

- 実行結果の例

  ```bash
  .  ..  .bashrc  file1.txt  ディレクトリa
  ```

### 3. `-R`（recursive）：再帰的に表示

- 指定したディレクトリの中身を階層ごとにすべて表示

```bash
ls -R ディレクトリa
```

- 実行結果の例

  ```bash
  ディレクトリa:
  subfile1.txt
  subfile2.txt

  ディレクトリa/subdir:
  subsubfile1.txt
  ```

### 4. `-h`（human-readable）：サイズを人間が読みやすい形式で表示（KB, MBなど）

- `-l` と組み合わせて使うのが一般的

```bash
ls -lh
```

- 実行結果の例

  ```bash
  -rw-r--r--  1 user user 1.2K  9月  8 12:00 file1.txt
  drwxr-xr-x  2 user user 4.0K  9月  8 12:01 ディレクトリa
  ```

## その他オプション

### 1. `-t`：更新日時順に並べる

```bash
ls -lt
```

### 2. `-S`：ファイルサイズ順に並べる

```bash
ls -lS
```

### 3. `--help`：lsコマンドのヘルプを表示

- どのオプションが使えるか確認できる

```bash
ls --help
```

以上
