#!/bin/bash
# Parámetro 1: usuario base (de donde se toma la clave)
# Parámetro 2: archivo de lista de usuarios

# Verifica que se pasen los 2 parámetros
if [ "$#" -ne 2 ]; then
	  echo "Uso: $0 <usuario_base> <ruta_Lista_Usuarios.txt>"
	    exit 1
fi

USUARIO_BASE="$1"
LISTA="$2"

# Verifica que el usuario base exista
if ! id "$USUARIO_BASE" &>/dev/null; then
	  echo "El usuario base '$USUARIO_BASE' no existe."
	    exit 2
fi

# Obtiene la clave encriptada del usuario base
CLAVE=$(sudo getent shadow "$USUARIO_BASE" | cut -d: -f2)

# Lee línea por línea el archivo
while IFS=',' read -r USUARIO GRUPO HOME; do
	  # Ignora comentarios o líneas vacías
	    [[ "$USUARIO" =~ ^#.*$ || -z "$USUARIO" ]] && continue

	      # Crear grupo si no existe
	        if ! getent group "$GRUPO" > /dev/null; then
			    sudo groupadd "$GRUPO"
			        echo "Grupo creado: $GRUPO"
				  fi

				    # Crear usuario si no existe
				      if ! id "$USUARIO" &>/dev/null; then
					          sudo useradd -m -d "$HOME" -g "$GRUPO" -p "$CLAVE" "$USUARIO"
						      echo "Usuario creado: $USUARIO"
						        else
								    echo "El usuario $USUARIO ya existe. Se omite."
								      fi
							      done < "$LISTA"
