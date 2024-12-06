source "$rvm_path/scripts/rvm"

: prepare
true TMPDIR:${TMPDIR:=/tmp}:
d=$TMPDIR/test-remote
mkdir $d
pushd $d
rvm use 2.3.4 --install # status=0
rvm list
# match=/ruby-2.3.4/

: tast packaging
rvm prepare 2.3.4           # status=0
[[ -f ruby-2.3.4.tar.bz2 ]] # status=0

: remove it
rvm remove --gems 2.3.4     # status=0
rvm list
# match!=/ruby-2.3.4/

: get local ruby
rvm mount -r ruby-2.3.4.tar.bz2 # status=0
rvm list
# match=/ruby-2.3.4/
rvm use 2.3.4 # status=0; match[stderr]=/^$/

: clean
popd
rm -rf $d
