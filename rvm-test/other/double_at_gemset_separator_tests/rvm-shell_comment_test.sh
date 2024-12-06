source "$rvm_path/scripts/rvm"

: prepare
d=${TMPDIR:=/tmp}/test-rvm-shell/ # status=0
mkdir -p $d                       # status=0
echo "rvm current" > $d/rvm-shell-rvm-current-script.sh # status=0
chmod +x $d/rvm-shell-rvm-current-script.sh
rvm use 2.3.4 --install
rvm use system

: Test1
echo "rvm use 2.3.4@@acme --create" > $d/.rvmrc     # status=0
ls -ld $d/.rvmrc
rvm rvmrc trust $d/.rvmrc                               # status=0
rvm $d do rvm current                                   # match=/ruby-2.3.4@@acme/
rvm-shell --path $d -c "rvm current"                    # match=/ruby-2.3.4@@acme/
rvm $d do $d/rvm-shell-rvm-current-script.sh            # match=/ruby-2.3.4@@acme/
rvm-shell --path $d $d/rvm-shell-rvm-current-script.sh  # match=/ruby-2.3.4@@acme/
rvm use $d                                              # env[GEM_HOME]=/ruby-2.3.4@@acme$/
rvm use system

: Test2
echo "rvm 2.3.4@@acme --create" > $d/.rvmrc         # status=0
ls -ld $d/.rvmrc
rvm rvmrc trust $d/.rvmrc                               # status=0
rvm $d do rvm current                                   # match=/ruby-2.3.4@@acme/
rvm-shell --path $d -c "rvm current"                    # match=/ruby-2.3.4@@acme/
rvm $d do $d/rvm-shell-rvm-current-script.sh            # match=/ruby-2.3.4@@acme/
rvm-shell --path $d $d/rvm-shell-rvm-current-script.sh  # match=/ruby-2.3.4@@acme/
rvm $d                                                  # env[GEM_HOME]=/ruby-2.3.4@@acme$/

: Cleaning
rm -rf $d # status=0
