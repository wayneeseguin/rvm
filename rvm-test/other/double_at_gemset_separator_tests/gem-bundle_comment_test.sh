source "$rvm_path/scripts/rvm"

: setup/pretest
export BUNDLE_GEMFILE=${TMPDIR:-/tmp}/Gemfile
touch ${BUNDLE_GEMFILE}
rvm alias delete default
rvm use 2.3.4 --install
rvm @@global do gem uninstall bundler
rvm gemset create gemtest
rvm gemset use gemtest # status=0

: test
## this only happens after installing rvm: match=/Gem bundler is not installed/
bundle config             # status=127
gem install bundler --pre # status=0
bundle config             # status=0 ; match=/Settings are listed in order of priority/

: reset
rvm gemset use default
rvm --force gemset delete gemtest # status=0
rm -f ${BUNDLE_GEMFILE}
