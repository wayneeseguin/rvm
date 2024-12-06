#!/bin/bash
# This prepocess the gemset_separator_tests for running with tf.
# The tests inside rvm-test/gemset_separator_tests are copies of the the tests in rvm-test/fast with all
# the '@' replaced with a $RVM_GEMSET_SEPARATOR$ so you can test with differnt gemset separators.
#
# Please run this from the root directory of the project since it uses relative paths
# bash rvm-test/run_gemset_separator_tests.sh
# sed 's/\$RVM_GEMSET_SEPARATOR\$/'$RVM_GEMSET_SEPARATOR'/g'
echo "Preprocessing tests..."
export RVM_GEMSET_SEPARATOR='@@'
if [[ ! -d  rvm-test/gemset_separator_tests_preprocessed ]]
then
  mkdir rvm-test/gemset_separator_tests_preprocessed
fi
for entry in rvm-test/gemset_separator_tests/*
do
  file="$(basename -- $entry)"
  sed 's/\$RVM_GEMSET_SEPARATOR\$/'$RVM_GEMSET_SEPARATOR'/g' "$entry" > rvm-test/gemset_separator_tests_preprocessed/${file}
done
tf rvm-test/gemset_separator_tests_preprocessed/*
