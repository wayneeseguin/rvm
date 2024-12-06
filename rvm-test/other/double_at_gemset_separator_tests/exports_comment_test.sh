source "$rvm_path/scripts/rvm"

export TEST_VAR=2     # env[TEST_VAR]=/^2$/
rvm export TEST_VAR=3 # env[TEST_VAR]=/^3$/
rvm unexport          # env[TEST_VAR]=/^2$/

unset TEST_VAR        # env[TEST_VAR]=/^$/
rvm export TEST_VAR=3 # env[TEST_VAR]=/^3$/
rvm unexport          # env[TEST_VAR]=/^$/
