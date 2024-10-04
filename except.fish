function except --argument filename
find .  | grep -v '^.$'| grep -v $filename
end
