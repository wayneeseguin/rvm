source "$rvm_path/scripts/rvm"

rvm use 2.3.4 --install                           # status=0; env[GEM_HOME]=/2.3.4/
rvm --force gemset globalcache disable
rvm gemset globalcache enabled                    # match=/Disabled/

[[ -L "$rvm_path/gems/cache" ]]                   # status!=0

rvm gemset globalcache enable                     # status=0; match=/ global cache /
rvm gemset globalcache enabled                    # status=0; match=/Enabled/
rvm gemset list                                   # status=0; match!=/ testset$/

rvm gemset create testset                         # status=0; match=/gemset created/
rvm gemset list                                   # status=0; match=/ testset$/

[[ -L "$rvm_path/gems/cache" ]]                   # status!=0
[[ -d "$rvm_path/gems/cache" ]]                   # status=0

rvm gemset copy 2.3.4@@testset 2.3.4@@testset2
# status=0
# match=/Copying gemset/
# match!=/Unknown file type/
# match!=/cannot overwrite directory/
# match!=/with non-directory/
# match!=/Error running/
# match[stderr]=/^$/
rvm gemset list                                   # status=0; match=/ testset2$/

rvm gemset --force delete testset                 # status=0; match=/Removing gemset testset/
rvm gemset --force delete testset2                # status=0; match=/Removing gemset testset2/

rvm system                                        # status=0

[[ -L "$rvm_path/gems/cache" ]]                   # status!=0
[[ -d "$rvm_path/gems/cache" ]]                   # status=0
[[ -d "$rvm_path/gems/cache/cache" ]]             ## status!=0 ... need more testing for this

rvm --force gemset globalcache disable            # status=0;  match=/Removing the global cache/
rvm gemset globalcache enabled                    # status!=0; match=/Disabled/
