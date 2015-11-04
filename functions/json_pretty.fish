function json_pretty --description "json pretty print, with utf8 encode"
    set outName (basename $argv .json)-pretty.json
    cat $argv | python -m json.tool > $outName
    native2ascii -encoding utf8 -reverse $outName $outName
end
