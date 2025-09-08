-- GitHub風 コードブロック & インラインコード 用 Pandoc Luaフィルタ

function CodeBlock(block)
  return pandoc.RawBlock("latex", "\\begin{codeblock}\n" .. block.text .. "\n\\end{codeblock}")
end

function Code(block)
  return pandoc.RawInline("latex", "\\icode{" .. block.text .. "}")
end
