source "$rvm_path/scripts/rvm"

rvm use 3.1.3 --install # status=0
rvm gemset create test1 # status=0
rvm gemset create test2 # status=0
rvm use 3.0.5 --install # status=0

: do
rvm 8.9.9 do rvm gemdir # status=1; match=/is not installed/
rvm 3.1.3 do rvm gemdir # status=0; match=/3.1.3/
rvm 3.1.3@test0 do rvm gemdir # status=2; match=/Gemset .* does not exist/
rvm 3.1.3@test1 do rvm gemdir # status=0; match=/3.1.3@test1/
rvm 3.1.3@test2 do rvm gemdir # status=0; match=/3.1.3@test2/

rvm 3.1.3@global,3.1.3 do rvm gemdir
# status=0
# match=/ruby-3.1.3/lib/ruby/gems/3.1.0$/
# match=/3.1.3$/

rvm --force gemset delete test1 # status=0
rvm --force gemset delete test2 # status=0

: FIXME: The following tests have awful duplication due to https://github.com/mpapis/tf/issues/6

: -----------------------------------------------------------------
: do in directory with no version

true TMPDIR:${TMPDIR:=/tmp}:
d=$TMPDIR/test-rvm-do-in
mkdir -p $d

: absolute directory
rvm in $d do rvm info ruby  # status=1; match=/Could not determine which Ruby to use/
rvm in $d do ruby --version # status=1; match=/Could not determine which Ruby to use/

: relative directory
cd $TMPDIR
rvm in test-rvm-do-in do rvm info ruby  # status=1; match=/Could not determine which Ruby to use/
rvm in test-rvm-do-in do ruby --version # status=1; match=/Could not determine which Ruby to use/

: current directory
cd $d
rvm in . do rvm info ruby  # status=1; match=/Could not determine which Ruby to use/
rvm in . do ruby --version # status=1; match=/Could not determine which Ruby to use/
rvm    . do rvm info ruby  # status=1; match=/Could not determine which Ruby to use/
rvm    . do ruby --version # status=1; match=/Could not determine which Ruby to use/

: -----------------------------------------------------------------
mkdir -p $d/3.1.3
echo "3.1.3" > $d/3.1.3/.ruby-version

: absolute directory
rvm in $d/3.1.3 do rvm info ruby  # status=0; match=/version: *"3.1.3/
rvm in $d/3.1.3 do ruby --version # status=0; match=/^ruby 3.1.3/

: relative directory
cd $d
rvm in 3.1.3 do rvm info ruby  # status=0; match=/version: *"3.1.3/
rvm in 3.1.3 do ruby --version # status=0; match=/^ruby 3.1.3/

: current directory
cd $d/3.1.3
rvm . do rvm info ruby  # status=0; match=/version: *"3.1.3/
rvm . do ruby --version # status=0; match=/^ruby 3.1.3/

: -----------------------------------------------------------------
ver=3.0.5
mkdir -p $d/3.0.5
echo "3.0.5" > $d/3.0.5/.ruby-version

: absolute directory
rvm in $d/3.0.5 do rvm info ruby  # status=0; match=/version: *"3.0.5/
rvm in $d/3.0.5 do ruby --version # status=0; match=/^ruby 3.0.5/

: relative directory
cd $d
rvm in 3.0.5 do rvm info ruby  # status=0; match=/version: *"3.0.5/
rvm in 3.0.5 do ruby --version # status=0; match=/^ruby 3.0.5/

: current directory
cd $d/3.0.5
rvm . do rvm info ruby  # status=0; match=/version: *"3.0.5/
rvm . do ruby --version # status=0; match=/^ruby 3.0.5/

## cleanup
rm -rf $d
