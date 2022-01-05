-- addresses the conflict between --shift-heading-level=1 and --number-sections for HTML output
-- issue explanation: https://groups.google.com/g/pandoc-discuss/c/X15YmSjoPS0/m/u_oK1KtmBAAJ
-- solution: https://groups.google.com/g/pandoc-discuss/c/_WU9R4i2Y2M/m/fx8OOylkAAAJ
return { 
    { Pandoc = function(el) 
        el.blocks = pandoc.utils.make_sections(true, 1, el.blocks) 
        return el 
      end 
    }, 
    { Header = function(el) 
        print(el.attributes.number) 
      end 
    } 
  }