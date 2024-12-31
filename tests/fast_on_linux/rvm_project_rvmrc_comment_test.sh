source "$rvm_path/scripts/rvm"
export rvm_rubies_path

: prepare
true TMPDIR:${TMPDIR:=/tmp}:
d=$TMPDIR/test-user
mkdir -p $d
cd $d
rvm use 3.0.5 --install           # status=0
rvm use 3.1.2 --install --default # status=0

## use system
: loads default if nothing else set
rvm use system
# env[GEM_HOME]=/^$/
source "$rvm_path/scripts/initialize"
# env[rvm_rubies_path]!=/^$/
rvm_current_rvmrc=""
rvm_previous_environment=""
rvm_project_rvmrc_default=1 rvm_promptless=1 __rvm_project_rvmrc
# env[GEM_HOME]=/3.1.2$/
# env[PATH]=/3.1.2/

: load project
echo "3.0.5" > .ruby-version
rvm use system
# env[GEM_HOME]=/^$/
source "$rvm_path/scripts/initialize"
# env[rvm_rubies_path]!=/^$/
rvm_current_rvmrc=""
rvm_previous_environment=""
rvm_project_rvmrc_default=1
rvm_promptless=1
__rvm_project_rvmrc
# env[GEM_HOME]=/3.0.5$/
# env[PATH]=/3.0.5/

: load project and gemset
echo "@test" > .ruby-gemset
rvm use system
# env[GEM_HOME]=/^$/
source "$rvm_path/scripts/initialize"
# env[rvm_rubies_path]!=/^$/
rvm_current_rvmrc=""
rvm_previous_environment=""
rvm_create_flag=1
rvm_project_rvmrc_default=1
rvm_promptless=1
## ( set -x ; PS4=="+ \${BASH_SOURCE} : \${FUNCNAME[0]:+\${FUNCNAME[0]}()}  \${LINENO} > " ; __rvm_project_rvmrc )
__rvm_project_rvmrc
# env[GEM_HOME]=/3.0.5@test$/
# env[PATH]=/3.0.5@test/

## use default
: loads default if nothing else set
rm .ruby-version .ruby-gemset
rvm use default
# env[GEM_HOME]=/3.1.2$/
# env[PATH]=/3.1.2/
source "$rvm_path/scripts/initialize"
# env[rvm_rubies_path]!=/^$/
rvm_current_rvmrc=""
rvm_previous_environment=""
rvm_project_rvmrc_default=1 rvm_promptless=1 __rvm_project_rvmrc
# env[GEM_HOME]=/3.1.2$/
# env[PATH]=/3.1.2/

: load project
echo "3.0.5" > .ruby-version
rvm use default
# env[GEM_HOME]=/3.1.2$/
# env[PATH]=/3.1.2/
source "$rvm_path/scripts/initialize"
# env[rvm_rubies_path]!=/^$/
rvm_current_rvmrc=""
rvm_previous_environment=""
rvm_project_rvmrc_default=1
rvm_promptless=1
__rvm_project_rvmrc
# env[GEM_HOME]=/3.0.5$/
# env[PATH]=/3.0.5/

: load project and gemset
echo "@test" > .ruby-gemset
rvm use default
# env[GEM_HOME]=/3.1.2$/
# env[PATH]=/3.1.2/
source "$rvm_path/scripts/initialize"
# env[rvm_rubies_path]!=/^$/
rvm_current_rvmrc=""
rvm_previous_environment=""
rvm_create_flag=1
rvm_project_rvmrc_default=1
rvm_promptless=1
## ( set -x ; PS4=="+ \${BASH_SOURCE} : \${FUNCNAME[0]:+\${FUNCNAME[0]}()}  \${LINENO} > " ; __rvm_project_rvmrc )
__rvm_project_rvmrc
# env[GEM_HOME]=/3.0.5@test$/
# env[PATH]=/3.0.5@test/

## source default
: loads default if nothing else set
rm .ruby-version .ruby-gemset
rvm use system
source "$rvm_path/scripts/initialize"
# env[rvm_rubies_path]!=/^$/
source $rvm_path/environments/default
# env[GEM_HOME]=/3.1.2$/
# env[PATH]=/3.1.2/
rvm_current_rvmrc=""
rvm_previous_environment=""
rvm_project_rvmrc_default=1 rvm_promptless=1 __rvm_project_rvmrc
# env[GEM_HOME]=/3.1.2$/
# env[PATH]=/3.1.2/

: load project
echo "3.0.5" > .ruby-version
rvm use system
source "$rvm_path/scripts/initialize"
# env[rvm_rubies_path]!=/^$/
source $rvm_path/environments/default
# env[GEM_HOME]=/3.1.2$/
# env[PATH]=/3.1.2/
rvm_current_rvmrc=""
rvm_previous_environment=""
rvm_project_rvmrc_default=1
rvm_promptless=1
__rvm_project_rvmrc
# env[GEM_HOME]=/3.0.5$/
# env[PATH]=/3.0.5/

: load project and gemset
echo "@test" > .ruby-gemset
rvm use system
source "$rvm_path/scripts/initialize"
# env[rvm_rubies_path]!=/^$/
source $rvm_path/environments/default
# env[GEM_HOME]=/3.1.2$/
# env[PATH]=/3.1.2/
rvm_current_rvmrc=""
rvm_previous_environment=""
rvm_create_flag=1
rvm_project_rvmrc_default=1
rvm_promptless=1
## ( set -x ; PS4=="+ \${BASH_SOURCE} : \${FUNCNAME[0]:+\${FUNCNAME[0]}()}  \${LINENO} > " ; __rvm_project_rvmrc )
__rvm_project_rvmrc
# env[GEM_HOME]=/3.0.5@test$/
# env[PATH]=/3.0.5@test/

: teardown
rvm alias delete default 3.1.2
rm -rf $d
