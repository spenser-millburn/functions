function cget
curl -X 'GET' '$argv' -H 'accept: application/json' | jq
end
