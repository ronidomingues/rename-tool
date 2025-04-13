#!/bin/bash

# Verifica se ao menos dois argumentos foram passados
if [ "$#" -lt 2 ]; then
    echo "Uso:"
    echo "  ./rename.sh -fd|--folder \"nome da pasta com espaços\""
    echo "  ./rename.sh -f|--file \"nome do arquivo com espaços\""
    echo "  ./rename.sh -mr|--manual-rename \"nome atual\" \"novo nome\""
    exit 1
fi

# Captura a flag
flag="$1"
shift

# Função para converter para minúsculas
to_lowercase() {
    echo "$1" | tr '[:upper:]' '[:lower:]'
}

case "$flag" in
    -fd|--folder)
        original_name="$*"
        new_name="${original_name// /-}"
        new_name=$(to_lowercase "$new_name")

        if [ ! -d "$original_name" ]; then
            echo "Erro: Pasta '$original_name' não encontrada."
            exit 1
        fi

        mv "$original_name" "$new_name"
        echo "Pasta renomeada para: $new_name"
        ;;

    -f|--file)
        original_name="$*"
        new_name="${original_name// /_}"
        new_name=$(to_lowercase "$new_name")

        if [ ! -f "$original_name" ]; then
            echo "Erro: Arquivo '$original_name' não encontrado."
            exit 1
        fi

        mv "$original_name" "$new_name"
        echo "Arquivo renomeado para: $new_name"
        ;;

    -mr|--manual-rename)
        if [ "$#" -ne 2 ]; then
            echo "Erro: Para '-mn' use: ./rename.sh -mn \"nome atual\" \"novo nome\""
            exit 1
        fi

        original_name="$1"
        new_name="$2"

        if [ ! -e "$original_name" ]; then
            echo "Erro: '$original_name' não encontrado."
            exit 1
        fi

        mv "$original_name" "$new_name"
        echo "Renomeado para: $new_name"
        ;;

    *)
        echo "Erro: Flag desconhecida '$flag'"
        echo "Use:"
        echo "  -fd | --folder       para renomear pastas (espaços → hífens, minúsculas)"
        echo "  -f  | --file         para renomear arquivos (espaços → underscores, minúsculas)"
        echo "  -mr | --manual-rename  para renomear com nome novo exato"
        exit 1
        ;;
esac
