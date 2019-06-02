alias linked="ls -l node_modules/|grep "^l"|sed -e 's/.* \([^ ][^ ]*\) ->/ \1 ->/'"
alias lastVer='npm info $(jq -r .name package.json) --json versions|jq -r ".[]" |sort -V|tail -1'
