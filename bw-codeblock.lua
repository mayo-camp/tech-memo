-- Lua フィルター: fenced code blocks を codeblock 環境で出力
function CodeBlock(block)
  local lang = block.classes[1] or ""
  local content = block.text
  return pandoc.RawBlock('latex', string.format("\\begin{codeblock}\n%s\n\\end{codeblock}", content))
end
