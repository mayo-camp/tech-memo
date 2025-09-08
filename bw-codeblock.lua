-- Lua フィルター: コードブロック＆インラインコードの高度対応

local function escape_latex(str)
  str = str:gsub("\\", "\\textbackslash{}")
  str = str:gsub("([#%%&$_{}])", "\\%1")
  return str
end

-- コードブロック
function CodeBlock(block)
  local content = escape_latex(block.text)
  -- 改行長い行にも対応する tcolorbox
  return pandoc.RawBlock(
    'latex',
    string.format("\\begin{codeblock}\n%s\n\\end{codeblock}", content)
  )
end

-- インラインコード
function Code(el)
  return pandoc.RawInline('latex', string.format("\\inlinecode{%s}", escape_latex(el.text)))
end
