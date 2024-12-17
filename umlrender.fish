function umlrender
echo $argv > /tmp/temp.puml
plantuml -tsvg /tmp/temp.puml
end
