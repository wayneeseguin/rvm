source "$rvm_path/scripts/rvm"

command rvm install 2.4.1
command rvm install 2.4.0
command rvm install 2.3.4

rvm 1.9.1 do rvm-prompt      # match=/Ruby (ruby-)?1.9.1(-p[[:digit:]]+)? is not installed./
rvm 2.4.0 do rvm-prompt      # match=/^ruby-2.4.0$/
rvm 2.3.4 do rvm-prompt i    # match=/^ruby$/
rvm 2.3.4 do rvm-prompt i v  # match=/^ruby-2.3.4$/
rvm 2.3.4 do rvm-prompt v    # match=/^2.3.4$/
rvm system do rvm-prompt     # match=/^$/
rvm system do rvm-prompt s v # match=/^system$/
rvm 2.4.1 do rvm-prompt s v  # match=/^2.4.1$/
