function tlog() {
  if test "$1" = ""; then
    tail -f log/development.log
  else
    tail -f "log/$1.log"
  fi
}

function track_git_branch() {
  if test "`current_branch`" = ""; then
    echo 'Not in git repo.';
  else
    echo "running: git branch --set-upstream `current_branch` origin/`current_branch`";
    git branch --set-upstream `current_branch` origin/`current_branch`;
  fi
}

function _findproc {
  ps ax | grep -v grep | grep -q "$1"
}

function whatsup {
  _findproc resque-web && echo resque-web
  _findproc mailcatcher && echo mailcatcher
  _findproc unicorn && echo unicorn
  _findproc mysql && echo mysql
  _findproc postgres && echo postgres
  _findproc riak && echo riak
  _findproc redis && echo redis
  _findproc resque && echo resque
  _findproc irb && echo irb
  _findproc rasterizer && echo rasterizer
  _findproc elasticsearch && echo elasticsearch
  _findproc "rails server" && echo '"rails server"'
  _findproc spring && echo spring
}
