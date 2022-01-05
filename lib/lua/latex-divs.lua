function Div(el)
-- this function takes in an element as a parameter
  if el.classes[1] == "box" then
  -- classes is a field of a Div element; if the class of the element is solution, perform the table.insert function
  -- Pandoc can determine the class of the Div by interpreting it in fenced div notation (i.e. ::: notes)
  table.insert(
      el.content, 1,
      pandoc.RawBlock("latex", "\\begin{shaded*}"))
      -- table.insert takes in 3 paramters: the array to be modified, the index at which 
      -- the new element should be inserted (where 1 is the first index), and the element to be inserted
      -- this function inserts "\\begin{solution}" at the beginning of the Div element
    table.insert(
      el.content,
      pandoc.RawBlock("latex", "\\end{shaded*}"))
      -- this function inserts "\\end{solution}" at the end of the Div element
  end
  -- the following if statement performs the same function as the previous, but for the "notes" custom block instead
  if el.classes[1] == "notes" then
    table.insert(
      el.content, 1,
      pandoc.RawBlock("latex", "\\begin{notes}"))
    table.insert(
      el.content,
      pandoc.RawBlock("latex", "\\end{notes}"))
  end
  if el.classes[1] == "learning-objectives" then
    table.insert(
      el.content, 1,
      pandoc.RawBlock("latex", "\\begin{learning-objectives}"))
    table.insert(
      el.content,
      pandoc.RawBlock("latex", "\\end{learning-objectives}"))
  end
  if el.classes[1] == "authors" then
    table.insert(
      el.content, 1,
      pandoc.RawBlock("latex", "\\begin{authors}"))
    table.insert(
      el.content,
      pandoc.RawBlock("latex", "\\end{authors}"))
  end
  return el
  -- return the Div element with modifications made
end