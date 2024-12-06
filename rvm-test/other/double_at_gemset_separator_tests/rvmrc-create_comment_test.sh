source "$rvm_path/scripts/rvm"

: prepare
true TMPDIR:${TMPDIR:=/tmp}:
d=$TMPDIR/test-rvmrc
mkdir $d
pushd $d
command rvm install 2.4.1
rvm 2.4.1 do rvm gemset reset_env
rvm use 2.3.4 --install

: .rvmrc generated
rvm rvmrc create 2.4.1
[ -f .rvmrc ]         # status=0
rvm current           # match=/2.3.4/
rvm rvmrc trust .rvmrc
rvm rvmrc load .rvmrc # env[GEM_HOME]=/2.4.1$/ ; env[PATH]=/2.4.1/
rvm current           # match=/2.4.1/

: .rvmrc with use
rvm_current_rvmrc=""
echo "rvm use 2.3.4" > .rvmrc
rvm rvmrc trust .
rvm rvmrc load .
rvm current           # match=/2.3.4/

: .rvmrc without use
rvm_current_rvmrc=""
echo "rvm 2.4.0" > .rvmrc
rvm rvmrc trust
rvm rvmrc load
rvm current           # match=/2.4.0/

rm -f .rvmrc
rvm use 2.3.4

: .versions.conf
rvm rvmrc create 2.4.0 .versions.conf
[ -f .versions.conf ] # status=0
rvm current           # match=/2.3.4/
rvm rvmrc load .
rvm current           # match=/2.4.0/

rm -f .versions.conf
rvm use 2.3.4

: .ruby-version
rvm rvmrc create 2.4.0 .ruby-version
[ -f .ruby-version ]  # status=0
rvm current           # match=/2.3.4/
rvm rvmrc load .
rvm current           # match=/2.4.0/

rm -f .ruby-version
rvm use 2.3.4

: clean
popd
rm -rf $d
