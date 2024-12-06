source "$rvm_path/scripts/rvm"

: prepare
true TMPDIR:${TMPDIR:=/tmp}:
d=$TMPDIR/test-wrappers
mkdir $d
pushd $d
rvm install 2.4.0 # status=0
rvm use --install 2.3.4 # status=0
rvm 2.3.4@@global do gem install rake -v "<10.2"

: help
rvm wrapper      # status!=0; match=/Usage/
rvm wrapper help # status=0;  match=/Usage/

: show
rvm wrapper show
# status=0
# match=/Wrappers path: .*/gems/ruby-2.3.4\/wrappers/
# match=/Environment file: .*/gems/ruby-2.3.4/environment/
# match=/Executables: .*, rake, /

: show rake
rvm wrapper show rake
# status=0
# match=/.*/gems/ruby-2.3.4\/wrappers\/rake/

: for file
echo 'echo "$GEM_HOME"' > $d/custom-script
chmod +x $d/custom-script
rvm 2.4.0 do rvm wrapper $d/custom-script # status=0
wrapper_script=`rvm 2.4.0 do rvm wrapper show custom-script`
# status=0
# env[wrapper_script]=/.*/gems/ruby-2.4.0\/wrappers\/custom-script/
$wrapper_script
# status=0
# match=/.*/gems/ruby-2.4.0\Z/
# env[GEM_HOME]=/.*/gems/ruby-2.3.4\Z/

: regenerate
rm -f $GEM_HOME/wrappers/rake
rvm wrapper show rake   # status!=0
rvm wrapper regenerate  # status=0
rvm wrapper show rake   # status=0

: clean
popd
rm -rf $d
