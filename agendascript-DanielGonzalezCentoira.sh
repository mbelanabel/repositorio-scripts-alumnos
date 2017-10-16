    barra(){
    echo "----------------"
    }
    buscar(){
    echo "Inserte nombre, correo o telefono a buscar"
    read busqueda
    cat ~/.alibdt | grep ${busqueda}
    echo "Presione enter para continuar"
    read xd
    barra
    menu
    }
    anadir(){
    echo "Inserte nombre" && read nombre
    barra
    echo "Inserte telefono(s)" && read telefono
    barra
    echo "Inserte correo electronico" && read correo
    echo "Nombre: ${nombre} - Telefono(s): ${telefono} - E-mail : ${correo}" >> ~/.alibdt
    barra
    menu
    }
    borrar(){
    echo "Inserte nombre a borrar"
    read nombre_borrar
    cat ~/.alibdt | grep -v "${nombre_borrar}" > ~/.alibdt2 && mv ~/.alibdt2 ~/.alibdt
    barra
    menu
    }
    menu(){
    echo "Que desea hacer?"
    echo "1.- Buscar un contacto"
    echo "2.- Añadir un contacto"
    echo "3.- Borrar un contacto"
    echo "4.- Salir"
    read seleccion
    case ${seleccion} in
    1)
    barra
    buscar
    ;;
    2)
    barra
    anadir
    ;;
    3)
    barra
    borrar
    ;;
    4)
    exit
    ;;
    *)
    echo "Error"
    echo "Se va a repetir el menu"
    menu
    ;;
    esac
    }
    echo "Bienvenido a mi agenda"
    menu


