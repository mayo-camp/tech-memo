# [環境変数](environment-variable.md)

- **読み方**：かんきょうへんすう
- **意味**：Environment Variable
- **用途**：シェルやプログラムが動作する際の設定値や情報を格納するための仕組み

## 利用環境

- Linux, macOS のターミナル
- WSL, Git Bash
- Windows のコマンドプロンプトや PowerShell

## 基本操作（Linux / macOS）

### 1. 環境変数の一覧を表示

```bash
printenv
```

### 2. 特定の環境変数を表示

```bash
echo $HOME
```

### 3. 一時的に設定

```bash
export VAR_NAME="test"
```

### 4. 永続的に設定

```bash
echo 'export VAR_NAME="test"' >> ~/.bashrc
source ~/.bashrc
```

## よく使う環境変数一覧（Linux / macOS）

| 変数名        | 説明                         | 例                              |
| ---------- | -------------------------- | ------------------------------ |
| `PATH`     | コマンド検索パス（実行可能ファイルを探す場所の一覧） | `/usr/local/bin:/usr/bin:/bin` |
| `HOME`     | ユーザーのホームディレクトリ             | `/home/user`                   |
| `SHELL`    | 使用中のシェル                    | `/bin/bash`                    |
| `USER`     | 現在のユーザー名                   | `user`                         |
| `LANG`     | 言語・文字コードの設定                | `ja_JP.UTF-8`                  |
| `PWD`      | 現在の作業ディレクトリ                | `/home/user/project`           |
| `EDITOR`   | デフォルトのエディタ                 | `vim` / `nano`                 |
| `HISTSIZE` | 記録するコマンド履歴の数               | `1000`                         |

## よく使う環境変数一覧（Windows）

| 変数名                | 説明                   | 例                                              |
| ------------------ | -------------------- | ---------------------------------------------- |
| `%PATH%`           | 実行可能ファイルを探すディレクトリの一覧 | `C:\Windows\System32;C:\Program Files\nodejs\` |
| `%USERPROFILE%`    | ユーザーのホームディレクトリ       | `C:\Users\Username`                            |
| `%HOMEDRIVE%`      | ホームディレクトリのドライブ       | `C:`                                           |
| `%HOMEPATH%`       | ホームディレクトリのパス部分       | `\Users\Username`                              |
| `%USERNAME%`       | 現在のユーザー名             | `Username`                                     |
| `%COMPUTERNAME%`   | コンピュータ名              | `MY-PC`                                        |
| `%TEMP%` / `%TMP%` | 一時ファイルの保存場所          | `C:\Users\Username\AppData\Local\Temp`         |
| `%APPDATA%`        | アプリケーションの設定保存先       | `C:\Users\Username\AppData\Roaming`            |
| `%PROGRAMFILES%`   | アプリケーションのインストール先     | `C:\Program Files`                             |

## その他の操作

### Linux/macOS

* 環境変数を削除

```bash
unset VAR_NAME
```

* 一時的に環境変数を指定してコマンドを実行

```bash
VAR_NAME=value command
```

### Windows

* 環境変数を表示

```powershell
echo $Env:PATH
```

* 環境変数を設定（セッション中のみ有効）

```powershell
$Env:VAR_NAME="test"
```

* 永続的に設定する場合は **システムの詳細設定 > 環境変数** から登録

以上