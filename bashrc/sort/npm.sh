alias linked="ls -l node_modules/|grep "^l"|sed -e 's/.* \([^ ][^ ]*\) ->/ \1 ->/'"
alias npmunlink="linked |sed -e 's/ ->.*//'|xargs yarn unlink"
alias lastVer='npm info $(jq -r .name package.json) --json versions|jq -r ".[]" |sort -V|tail -1'
