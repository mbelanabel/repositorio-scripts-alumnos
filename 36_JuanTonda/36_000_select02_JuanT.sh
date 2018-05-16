PS3=" Introduce una opción "
options=("s" "n" "x")
select opt in "${options[@]}"
do
    case $opt in
        "s")
            echo "you chose choice 1"
            opt="x"
            ;;
        "n")
            echo "you chose choice 2"
            ;;
        "x")
            break
            ;;
        *) echo invalid option;;
    esac
done
