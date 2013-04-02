export PATH=/usr/local/share/npm/bin:$PATH:$DOTF/scripts
export SHORT_HOSTNAME=`short-hostname`

fpath=(/usr/local/share/npm/lib/node_modules/tailr/completions $fpath)
fpath=(/usr/local/share/npm/lib/node_modules/dns-switcher/completions $fpath)
fpath=(/Users/3david/.rvm/gems/ruby-2.0.0-p0/gems/shaft-0.8/completions $fpath)

prompt sorin
