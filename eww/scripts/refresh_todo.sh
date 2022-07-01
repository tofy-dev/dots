TODO_1=`cat /tmp/todo | awk 'NR == 1 { print }'`
TODO_2=`cat /tmp/todo | awk 'NR == 2 { print }'`
TODO_3=`cat /tmp/todo | awk 'NR == 3 { print }'`
TODO_4=`cat /tmp/todo | awk 'NR == 4 { print }'`
TODO_5=`cat /tmp/todo | awk 'NR == 5 { print }'`

eww --config ~/.config/eww/windows/menu/ update todo1="${TODO_1}"
eww --config ~/.config/eww/windows/menu/ update todo2="${TODO_2}"
eww --config ~/.config/eww/windows/menu/ update todo3="${TODO_3}"
eww --config ~/.config/eww/windows/menu/ update todo4="${TODO_4}"
eww --config ~/.config/eww/windows/menu/ update todo5="${TODO_5}"
