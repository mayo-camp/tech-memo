# [dos2unix と unix2dos の比較](dos2unix-unix2dos-compare.md)

- **読み方**：ドス・トゥ・ユニックス と ユニックス・トゥ・ドス
- **用途**：Windows形式と Unix/Linux形式の改行コードを相互に変換するコマンドの違いを整理

## dos2unix

- **変換方向**：Windows (CRLF) → Unix (LF)
- **用途**：Windowsで作成されたテキストファイルを Linux/Unix 環境で扱いやすくする
- **特徴**：元のファイルを上書きする場合は注意。スクリプトや設定ファイルの改行が変わるため、実行権限や内容に影響する場合がある

### 実務上の例

#### Windowsで作成したスクリプトを Linux で実行

```bash
dos2unix script.sh
./script.sh
```

## unix2dos

- **変換方向**：Unix (LF) → Windows (CRLF)
- **用途**：Unix/Linux で作成したテキストを Windows 環境で扱う
- **特徴**：改行コードが変わることで Git の差分やエディタ表示に影響する可能性がある。上書き変換時は必ずバックアップを取る

### 実務上の例

#### Linuxで作成したテキストを Windows 環境で開く

```bash
unix2dos report.txt
```

## 注意点

- dos2unix は LF に変換するため、スクリプトや設定ファイルの改行に影響する場合がある
- unix2dos は CRLF に変換するため、Git の差分やエディタでの表示に注意
- 上書き変換を行う場合は、必ずバックアップを取ってから実施すること
- 複数ファイルを一括変換する場合は、対象を誤ると大量のファイルに影響する可能性がある

以上
