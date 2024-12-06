source "$rvm_path/scripts/rvm"

: prepare
true TMPDIR:${TMPDIR:=/tmp}:
d=$TMPDIR/test-ruby-version
f=$d/.ruby-version
g=$d/.ruby-gemset
e=$d/.ruby-env
mkdir -p $d
cd $d
rvm use --install 2.4.1
rvm use --install 2.4.0
rvm use --install 2.3.4

## simple
: short version
echo "2.4.0" > $f           # env[GEM_HOME]=/2.3.4/
rvm use .                   # env[GEM_HOME]=/2.4.0/

: ruby version
rvm use 2.3.4
echo "ruby-2.4.0" > $f      # env[GEM_HOME]=/2.3.4/
rvm use .                   # env[GEM_HOME]=/2.4.0/

: patch version
rvm use 2.3.4
echo "2.4.1" > $f      # env[GEM_HOME]=/2.3.4/
rvm use .                   # env[GEM_HOME]=/2.4.1/

: full version
rvm use 2.3.4
echo "ruby-2.4.1" > $f # env[GEM_HOME]=/2.3.4/
rvm use .                   # env[GEM_HOME]=/2.4.1/

: gemset
rvm use 2.3.4
echo "veve" > $g            # env[GEM_HOME]=/2.3.4/
rvm use .                   # env[GEM_HOME]=/2.4.1$RVM_GEMSET_SEPARATOR$veve/
rm -f $g

: environment
rvm use 2.3.4
echo "test_me=3" > $e
rvm use .                   # env[GEM_HOME]=/2.4.1/; env[test_me]=/^3$/
rvm use 2.3.4               # env[GEM_HOME]=/2.3.4/; env[test_me]=/^$/

: environment spaces
rvm use 2.3.4
echo 'test_space=test me' > $e
rvm use .                   # env[GEM_HOME]=/2.4.1/; env[test_space]=/^test me$/
rvm use 2.3.4               # env[GEM_HOME]=/2.3.4/; env[test_space]=/^$/

: environment quotes and spaces
rvm use 2.3.4
echo 'test_space="test me"' > $e
rvm use .                   # env[GEM_HOME]=/2.4.1/; env[test_space]=/^test me$/
rvm use 2.3.4               # env[GEM_HOME]=/2.3.4/; env[test_space]=/^$/

: clean
cd ..
rm -rf $d
