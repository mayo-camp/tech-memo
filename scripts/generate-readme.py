import re
import os

# setで重複排除（タイトル＋リンクの組み合わせ）
links_set = set()

# リポジトリ内の .md ファイルを再帰的に探索
for root, dirs, files in os.walk("."):
    for file in files:
        if file.endswith(".md") and file != "README.md":
            path = os.path.join(root, file)
            with open(path, "r", encoding="utf-8") as f:
                text = f.read()
                matches = re.findall(r"\[([^\]]+)\]\(([^\)]+\.md)\)", text)
                for title, link in matches:
                    # 相対パスを正規化
                    rel_path = os.path.relpath(os.path.join(root, link), ".")
                    links_set.add((title, rel_path))

# リストに変換して名前順にソート
links_list = sorted(links_set, key=lambda x: x[0].lower())

# README.md を生成（完全上書き）
with open("README.md", "w", encoding="utf-8") as f:
    f.write("# Index\n\n")
    for title, link in links_list:
        f.write(f"- [{title}]({link})\n")
