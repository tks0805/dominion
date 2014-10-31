module CardsHelper

def aaa(str)
html_escape(str).gsub(/\r\n|\r|\n/, "<br />") 
end

end
