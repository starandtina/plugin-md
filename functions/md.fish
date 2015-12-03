# SYNOPSIS
#   md [options]
#
# USAGE
#   Options
#

function md -d 'make directories with option -p'
  command mkdir -p $argv
  if test $status = 0
    switch $argv[(count $argv)]
      case '-*'
      case '*'
        cd $argv[(count $argv)]
        return
    end
  end
end
