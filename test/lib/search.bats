#!/usr/bin/env bats

load ../test_helper
<<<<<<< HEAD

load ../../lib/composure
load ../../plugins/available/base.plugin
=======
load ../../lib/composure
load ../../lib/helpers
load ../../lib/utilities
load ../../lib/search
load ../../plugins/available/base.plugin
load ../../aliases/available/git.aliases
load ../../plugins/available/ruby.plugin
load ../../plugins/available/rails.plugin
load ../../completion/available/bundler.completion
load ../../completion/available/gem.completion
load ../../completion/available/rake.completion
>>>>>>> 9c6ad0d35a1ad4275be4edb0831855c02997a2ef

cite _about _param _example _group _author _version

load ../../lib/helpers
<<<<<<< HEAD
load ../../lib/search

NO_COLOR=true
=======
>>>>>>> 9c6ad0d35a1ad4275be4edb0831855c02997a2ef

function local_setup {
  mkdir -p "$BASH_IT"
  lib_directory="$(cd "$(dirname "$0")" && pwd)"
  # Use rsync to copy Bash-it to the temp folder
  # rsync is faster than cp, since we can exclude the large ".git" folder
  rsync -qavrKL -d --delete-excluded --exclude=.git $lib_directory/../../.. "$BASH_IT"

  rm -rf "$BASH_IT"/enabled
  rm -rf "$BASH_IT"/aliases/enabled
  rm -rf "$BASH_IT"/completion/enabled
  rm -rf "$BASH_IT"/plugins/enabled
<<<<<<< HEAD
}

@test "search: plugin base" {
  run _bash-it-search-component 'plugins' 'base'
  [[ "${lines[0]}" =~ 'plugins' && "${lines[0]}" =~ 'base' ]]
}

@test "search: ruby gem bundle rake rails" {
  # first disable them all, so that  the output does not appear with a checkbox
  # and we can compare the result
  run _bash-it-search 'ruby' 'gem' 'bundle' 'rake' 'rails' '--disable'
  # Now perform the search
  run _bash-it-search 'ruby' 'gem' 'bundle' 'rake' 'rails'
  # And verify
  assert [ "${lines[0]/✓/}" == '      aliases  =>   bundler rails' ]
  assert [ "${lines[1]/✓/}" == '      plugins  =>   chruby chruby-auto rails ruby' ]
  assert [ "${lines[2]/✓/}" == '  completions  =>   bundler gem rake' ]
}

@test "search: ruby gem bundle -chruby rake rails" {
  run _bash-it-search 'ruby' 'gem' 'bundle' 'rake' 'rails' '--disable'
  run _bash-it-search 'ruby' 'gem' 'bundle' '-chruby' 'rake' 'rails'
  assert [ "${lines[0]/✓/}" == '      aliases  =>   bundler rails' ]
  assert [ "${lines[1]/✓/}" == '      plugins  =>   rails ruby' ]
  assert [ "${lines[2]/✓/}" == '  completions  =>   bundler gem rake' ]
}

@test "search: (rails enabled) ruby gem bundle rake rails" {
  run _bash-it-search 'ruby' 'gem' 'bundle' 'rake' 'rails' '--disable'
  run _enable-alias 'rails'
  run _bash-it-search 'ruby' 'gem' 'bundle' 'rake' 'rails'
  assert_line -n 0 '      aliases  =>   bundler ✓rails'
  assert_line -n 1 '      plugins  =>   chruby chruby-auto rails ruby'
  assert_line -n 2 '  completions  =>   bundler gem rake'
}

@test "search: (all enabled) ruby gem bundle rake rails" {
  run _bash-it-search 'ruby' 'gem' 'bundle' 'rake' '-chruby' 'rails' '--enable'
  run _bash-it-search 'ruby' 'gem' 'bundle' 'rake' '-chruby' 'rails'
  assert_line -n 0 '      aliases  =>   ✓bundler ✓rails'
  assert_line -n 1 '      plugins  =>   ✓rails ✓ruby'
  assert_line -n 2 '  completions  =>   ✓bundler ✓gem ✓rake'
=======
  rm -rf "$BASH_IT"/tmp/cache

  mkdir -p "$BASH_IT"/enabled
  mkdir -p "$BASH_IT"/aliases/enabled
  mkdir -p "$BASH_IT"/completion/enabled
  mkdir -p "$BASH_IT"/plugins/enabled

  export OLD_PATH="$PATH"
  export PATH="/usr/bin:/bin:/usr/sbin"
}

function local_teardown {
  export PATH="$OLD_PATH"
  unset OLD_PATH
}

@test "search: plugin base" {
  export BASH_IT_SEARCH_USE_COLOR=false
  run _bash-it-search-component 'plugins' 'base'
  assert_line -n 0 '      plugins:  base  '
}

@test "search: git" {
  run _bash-it-search 'git' --no-color
  assert_line -n 0 '      aliases:  git   gitsvn  '
  assert_line -n 1 '      plugins:  autojump   fasd   git   git-subrepo   jgitflow   jump  '
  assert_line -n 2 '  completions:  git   git_flow   git_flow_avh  '
}

@test "search: ruby gem bundle rake rails" {
  run _bash-it-search rails ruby gem bundler rake --no-color

  assert_line -n 0 '      aliases:  bundler   rails  '
  assert_line -n 1 '      plugins:  chruby   chruby-auto   rails   ruby  '
  assert_line -n 2 '  completions:  bundler   gem   rake  '
}

@test "search: rails ruby gem bundler rake -chruby" {
  run _bash-it-search rails ruby gem bundler rake -chruby --no-color

  assert_line -n 0 '      aliases:  bundler   rails  '
  assert_line -n 1 '      plugins:  rails   ruby  '
  assert_line -n 2 '  completions:  bundler   gem   rake  '
}

@test "search: @git" {
  run _bash-it-search '@git' --no-color
  assert_line -n 0 '      aliases:  git  '
  assert_line -n 1 '      plugins:  git  '
  assert_line -n 2 '  completions:  git  '
}

@test "search: @git --enable / --disable" {
  set -e
  run _bash-it-search '@git' --enable --no-color
  run _bash-it-search '@git' --no-color

  [[ "${lines[0]}"  =~ '✓' ]]

  run _bash-it-search '@git' --disable --no-color
  run _bash-it-search '@git' --no-color

  assert_line -n 0 '      aliases:  git  '
  assert_line -n 0 '      aliases:  git  '
  assert_line -n 2 '  completions:  git  '
>>>>>>> 9c6ad0d35a1ad4275be4edb0831855c02997a2ef
}
