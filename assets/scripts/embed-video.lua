-- See if current link is of the format {{youtube:XXXXXXXXXXX}}
function youtube_link_bool(inputstr)
    if inputstr == nil then
        return false
    end
    md_string = string.match(inputstr, "{{".."youtube:".."...........".."}}")
    if md_string == nil then
        return false
    else
        return true
    end
end


-- If we do have a video placeholder, find the key from the markdown string
function get_key(inputstr)
    len = string.len(inputstr)
    key = string.sub(inputstr, 11, len-2)
    print(key)
    return key
end


-- Go through markdown document to replace all {{youtube:XXXXXXXXXXX}}
-- placeholders with html embedded video    
return {
    {
        Para = function(elem)
            if youtube_link_bool(elem.content[1].text) == true then
                key = get_key(elem.content[1].text)
                return pandoc.RawBlock('html', '<iframe allowfullscreen mozallowfullscreen frameborder=\"0\" src=\"https://www.youtube.com/embed/'..key..'\" webkitallowfullscreen> </iframe>')
            else
                return elem
            end
        end,
    }
}
