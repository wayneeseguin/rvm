source "$rvm_path/scripts/rvm"

command rvm install 2.3.4
command rvm install 2.4.0

rvm use 8.9.9           # status=1; match!=/Using /; env[GEM_HOME]!=/8.9.9/ ; match=/Unknown ruby interpreter version/
rvm reset               # env[GEM_HOME]=/^$/
rvm current             # match=/system/
rvm use 2.3.4      # status=0; match=/Using / ; env[GEM_HOME]=/2.3.4/
rvm current             # match=/2.3.4/
command rvm use 2.4.0   # status=0; match!=/Using /; env[GEM_HOME]!=/2.4.0/ ; match=/RVM is not a function/
rvm use 2.4.0           # status=0; match=/Using / ; env[GEM_HOME]=/2.4.0/
rvm use 1.9.1           # status=1; env[rvm_recommended_ruby]=/rvm install ruby-1.9.1/
