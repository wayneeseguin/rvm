source "$rvm_path/scripts/rvm"
rvm_scripts_path="$rvm_path/scripts" rvm_project_rvmrc=cd source "$rvm_path/scripts/cd"

: prepare
true TMPDIR:${TMPDIR:=/tmp}:
d=$TMPDIR/test-rvmrc
f=$d/.rvmrc
mkdir -p $d
echo "echo loading-rvmrc" > $f
rvm use 2.4.0 --install # status=0
rvm use 2.4.1 --install # status=0

## simple
: trust
rvm rvmrc trust $d     # match=/ as trusted$/
rvm rvmrc trusted $d   # match=/is currently trusted/

: untrust
rvm rvmrc untrust $d   # match=/ as untrusted$/
rvm rvmrc trusted $d   # match=/is currently untrusted/

: reset
rvm rvmrc reset $d     # match=/^Reset/
rvm rvmrc trusted $d   # match=/contains unreviewed changes/

## spaces
ds="$d/with spaces"
mkdir -p "$ds"
echo "echo loading-rvmrc" > "$ds/.rvmrc"
rvm rvmrc trust "$ds"     # match=/ as trusted$/
rvm rvmrc trusted "$ds"   # match=/is currently trusted/
rvm rvmrc reset "$ds"     # match=/^Reset/

## brackets
ds="$d/with(brackets)"
mkdir -p "$ds"
echo "echo loading-rvmrc" > "$ds/.rvmrc"
rvm rvmrc trust "$ds"     # match=/ as trusted$/
rvm rvmrc trusted "$ds"   # match=/is currently trusted/
rvm rvmrc reset "$ds"     # match=/^Reset/

: prepare for load/cd test
rvm alias create default 2.4.1
rvm alias list            # match=/default => ruby-2.4.1/
export rvm_project_rvmrc_default=1

## load default
builtin cd
rvm use 2.4.0
rvm rvmrc load            # env[GEM_HOME]!=/^$/

## load ruby
cd
rvm use 2.4.0
echo "rvm use 2.4.1" > "$d/.rvmrc"
rvm rvmrc trust "$d"      # match=/ as trusted$/
cd "$d"                   # env[GEM_HOME]=/2.4.1$/

## load ruby$RVM_GEMSET_SEPARATOR$gemset
cd
rvm use 2.4.0
echo "rvm use 2.4.1$RVM_GEMSET_SEPARATOR$vee --create" > "$d/.rvmrc"
rvm rvmrc trust "$d"      # match=/ as trusted$/
cd "$d"                   # env[GEM_HOME]=/2.4.1$RVM_GEMSET_SEPARATOR$vee$/

## load $RVM_GEMSET_SEPARATOR$gemset
cd
rvm use 2.4.0
echo "rvm use $RVM_GEMSET_SEPARATOR$vee --create" > "$d/.rvmrc"
rvm rvmrc trust "$d"      # match=/ as trusted$/
cd "$d"                   # env[GEM_HOME]=/2.4.0$RVM_GEMSET_SEPARATOR$vee$/

## load $RVM_GEMSET_SEPARATOR$gemset after system
cd
rvm use system
echo "rvm use $RVM_GEMSET_SEPARATOR$vee --create" > "$d/.rvmrc"
rvm rvmrc trust "$d"      # match=/ as trusted$/
cd "$d"                   # env[GEM_HOME]=/2.4.1$RVM_GEMSET_SEPARATOR$vee$/

: clean
rvm alias delete default  # status=0
rm -rf $d
