function greplogs
ag -l "$argv" --file-search-regex '\.log$'
end
