local siteurl = ''
function Meta (meta) siteurl = meta.siteurl end
function fix_link (url) return url:sub(1,1) == '/' and siteurl .. url or url end
function Link (link) link.target = fix_link(link.target); return link end
function Image (img) img.src = fix_link(img.src); return src end
return {{Meta = Meta}, {Link = Link, Image = Image}}