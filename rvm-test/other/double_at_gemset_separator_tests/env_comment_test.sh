source "$rvm_path/scripts/rvm"

rvm use 2.4.0 --install

rvm env 2.4.0           # match=/2.4.0/; match=/GEM_HOME=/; match=/GEM_PATH=/
rvm env 2.4.0 --path    # match=/2.4.0/; match=/environments/
rvm env 2.4.0 -- --path # match=/2.4.0/; match=/environments/
