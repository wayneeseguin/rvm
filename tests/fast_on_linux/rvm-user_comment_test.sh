source "$rvm_path/scripts/rvm"
rvm_scripts_path=$rvm_path/scripts
source "$rvm_path/scripts/tools"

: prepare
true TMPDIR:${TMPDIR:=/tmp}:
d=$TMPDIR/test-user
mkdir -p $d

: rvm user none
printf "rvm_path=a\nrvm_gemset_path=b\n" > $d/.fake-rvmrc
tools_user_none $d/.fake-rvmrc
# status=0
cat $d/.fake-rvmrc
# match=/rvm_path=/
# match!=/rvm_gemset_path=/

: __rvm_env_string
rvm use 3.1.2 --install
__rvm_env_string # match=/3.1.2/

: __rvm_env_string fake + gems_path
export rvm_gems_path=/tmp/gems2
export GEM_HOME=$rvm_gems_path/3.0.0-p1000
export PATH=$GEM_HOME/bin:$PATH
__rvm_env_string # match=/^3.0.0-p1000$/
: __rvm_env_string fake + gems_path

export rvm_gems_path=/tmp/gems2
export GEM_HOME=$rvm_path/gems/3.0.0-p9000
export PATH=$GEM_HOME/bin:$PATH
__rvm_env_string # match=/^3.0.0-p9000$/

rvm use 3.1.2
