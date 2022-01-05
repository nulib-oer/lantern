-- turn fenced div elements with 'question' class into accordion-style drop down
-- adapted from https://github.com/ukgovdatascience/govdown/blob/master/inst/rmarkdown/resources/govuk.lua

local List = require 'pandoc.List'

if FORMAT:match 'html' then
  function Div(el)
    v,i = el.classes:find("question")
    if i ~= nil then
      el.classes[i] = nil
      
      local html
      local res = List:new{}
      
      html =
        '<details>' ..
        '<summary>' ..
        el.attributes["text"] ..
        '</summary>' 
        
      table.insert(res, pandoc.RawBlock('html', html))
      
      for _, block in ipairs(el.content) do
        table.insert(res, block)
      end
      table.insert(res, pandoc.RawBlock('html', '</details>'))
      
    return res
    end
  end
end

if FORMAT:match 'context' then
  function Div(el)
    v,i = el.classes:find("question")
    if i ~= nil then
      el.classes[i] = nil
      
      local context
      local res = List:new{}
      
      context =
        '{\\framed[align={flushleft,nothyphenated,verytolerant}]{' ..
        '\\bf{' ..
        el.attributes["text"] ..
        '}\\blank' .. 
        '\\tf{'
      table.insert(res, pandoc.RawBlock('context', context))

      for _, block in ipairs(el.content) do
        table.insert(res, block)
      end
      table.insert(res, pandoc.RawBlock('context', '}}'))
      
    return res
    end
  end
end