source "$rvm_path/scripts/rvm"

: prepare
unset __rvmrc_warning_path
true TMPDIR:${TMPDIR:=/tmp}:
d=$TMPDIR/test-rvmrc-warning
f=$d/Gemfile
mkdir -p $d
touch $f
mv $rvm_path/user/rvmrc_ignored $d/rvmrc_ignored

: single file
rvm rvmrc warning list      # match!=/Gemfile/
rvm --debug rvmrc warning check  $f # status=1 ; match=/is not ignored/
rvm rvmrc warning ignore $f # status=0
rvm rvmrc warning check  $f # status=0 ; match=/is ignored/
rvm rvmrc warning list      # match=/test-rvmrc-warning/Gemfile/
rvm rvmrc warning reset  $f # status=0
rvm rvmrc warning check  $f # status=1 ; match=/is not ignored/
rvm rvmrc warning list      # match!=/Gemfile/

: all files
rvm rvmrc warning check  allGemfiles # status=1 ; match=/is not ignored/
rvm rvmrc warning ignore allGemfiles # status=0
rvm rvmrc warning check  $f          # status=0 ; match=/is ignored/
rvm rvmrc warning check  allGemfiles # status=0 ; match=/is ignored/
rvm rvmrc warning list               # match=/allGemfiles/
rvm rvmrc warning reset  allGemfiles # status=0
rvm rvmrc warning check  $f          # status=1 ; match=/is not ignored/
rvm rvmrc warning check  allGemfiles # status=1 ; match=/is not ignored/
rvm rvmrc warning list               # match!=/Gemfile/

: single + all
rvm rvmrc warning ignore $f          # status=0
rvm rvmrc warning ignore allGemfiles # status=0
rvm rvmrc warning list               # match=/allGemfiles/ ; match=/test-rvmrc-warning/Gemfile/
rvm rvmrc warning check  $f          # status=0 ; match=/is ignored/
rvm rvmrc warning check  allGemfiles # status=0 ; match=/is ignored/

: clean
mv -f $d/rvmrc_ignored $rvm_path/user/rvmrc_ignored
rm -rf $d
