source "$rvm_path/scripts/rvm"

rvm use 2.3.4 --install
rvm use 2.4.0 --install
rvm gemset create test_gemset

rvm alias create default 2.4.0$RVM_GEMSET_SEPARATOR$test_gemset # status=0
ls -l $rvm_path/environments/default       # status=0; match=/2.4.0$RVM_GEMSET_SEPARATOR$test_gemset/
rvm alias list                             # match=/^default => ruby-2.4.0$RVM_GEMSET_SEPARATOR$test_gemset$/
rvm alias delete default                   # status=0
ls -l $rvm_path/environments/default       # status!=0

rvm alias create ruby-test-default 2.4.0$RVM_GEMSET_SEPARATOR$test_gemset # status=0
ls -l $rvm_path/environments/ruby-test-default       # status=0
rvm alias list                                       # match=/^ruby-test-default => ruby-2.4.0$RVM_GEMSET_SEPARATOR$test_gemset$/
rvm alias list names                                 # match=/^ruby-test-default$/
rvm alias delete ruby-test-default                   # status=0
ls -l $rvm_path/environments/ruby-test-default       # status!=0

rvm --force gemset delete test_gemset

: overwrite existing aliases
rvm alias create veve 2.3.4  # status=0
ls -l $rvm_path/environments/veve # status=0; match=/2.3.4/
ls -l $rvm_path/wrappers/veve     # status=0; match=/2.3.4/
rvm alias list                    # match=/^veve => ruby-2.3.4$/
rvm alias create veve 2.4.0       # status=0
ls -l $rvm_path/environments/veve # status=0; match=/2.4.0/
ls -l $rvm_path/wrappers/veve     # status=0; match=/2.4.0/
rvm alias list                    # match=/^veve => ruby-2.4.0$/
rvm alias delete veve             # status=0
ls -l $rvm_path/environments/veve # status!=0
rvm alias list                    # match!=/^veve => /
