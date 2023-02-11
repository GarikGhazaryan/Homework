#! /bin/bash





select opts in "Currently logged users" "Your shell directory" "Home directory" "OS name & version" "Current working directory" "Number of users logged in" "Show all available shells in your system" "Hard disk information" "CPU information" "Memory information" "File system information" "Currently running process" "Quit"
do
    case $opts in
        "Currently logged users")
            who
            ;;
        "Your shell directory")
            echo "I can not find a comand for Your shell directory"
            ;;
        "Home directory")
            echo $HOME
            ;;
        "OS name & version")
            cat /etc/os-release
            ;;
        "Current working directory")
            pwd
            ;;
        "Number of users logged in")
            who | wc -l
            ;;
        "Show all available shells in your system")
            cat /etc/shells
            ;;
        "Hard disk information")
            sudo lshw -class disk
            ;;
        "CPU information")
            cat /proc/cpuinfo
            ;;
        "Memory information")
            cat /proc/meminfo
            ;;
        "File system information")
            df -T
            ;;
        "Currently running process")
            ps aux
            ;;
        "Quit")
            break
            ;;
        *) echo "the comand is not a find";;
    esac
done


