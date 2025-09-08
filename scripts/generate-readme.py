import re
import os

links = []

# .mdファイルを再帰的に探索
for root, dirs, files in os.walk("."):
    for file in files:
        if file.endswith(".md") and file != "README.md":
            path = os.path.join(root, file)
            with open(path, "r", encoding="utf-8") as f:
                text = f.read()
                # Markdownリンク [タイトル](xxx.md) を抽出
                matches = re.findall(r"\[([^\]]+)\]\(([^\)]+\.md)\)", text)
                for title, link in matches:
                    # 相対パスを正規化
                    rel_path = os.path.relpath(os.path.join(root, link), ".")
                    links.append((title, rel_path))

# 名前順にソート
links.sort(key=lambda x: x[0].lower())

# README.md を生成
with open("README.md", "w", encoding="utf-8") as f:
    f.write("# Index\n\n")
    for title, link in links:
        f.write(f"- [{title}]({link})\n")
