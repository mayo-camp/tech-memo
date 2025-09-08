-- bw-codeblock.lua
-- Lua フィルター: Pandoc Markdown → LaTeX tcolorbox（白黒印刷用）
-- 特殊文字 (# % $ _ { } \) をエスケープして安全に出力

-- LaTeX 用に特殊文字をエスケープする関数
local function escape_latex(str)
  str = str:gsub("\\", "\\textbackslash{}")  -- バックスラッシュ
  str = str:gsub("([#%%&$_{}])", "\\%1")     -- # % & $ _ { }
  return str
end

-- コードブロック変換
function CodeBlock(block)
  local content = escape_latex(block.text)
  return pandoc.RawBlock(
    'latex',
    string.format("\\begin{codeblock}\n%s\n\\end{codeblock}", content)
  )
end
