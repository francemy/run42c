#!/bin/bash

# ==========================================
# INSTALL RUN42C
# ==========================================

SCRIPT_NAME="run42c"
LOCAL_BIN="$HOME/.local/bin"
CURRENT_DIR="$(pwd)"

echo "========================================="
echo "     Instalando $SCRIPT_NAME"
echo "========================================="

# ==========================================
# CHECK FILE
# ==========================================

if [ ! -f "$CURRENT_DIR/cmd/$SCRIPT_NAME" ]; then
    echo "Erro: ficheiro cmd/$SCRIPT_NAME não encontrado."
    exit 1
fi

# ==========================================
# CREATE BIN
# ==========================================

mkdir -p "$LOCAL_BIN"

# ==========================================
# COPY SCRIPT
# ==========================================

cp "$CURRENT_DIR/cmd/$SCRIPT_NAME" "$LOCAL_BIN/$SCRIPT_NAME"

# ==========================================
# PERMISSION
# ==========================================

chmod +x "$LOCAL_BIN/$SCRIPT_NAME"

echo "Script copiado para:"
echo "$LOCAL_BIN/$SCRIPT_NAME"

# ==========================================
# ADD PATH
# ==========================================

ADD_PATH='export PATH="$HOME/.local/bin:$PATH"'

add_to_file() {
    FILE=$1

    if [ -f "$FILE" ]; then
        grep -qxF "$ADD_PATH" "$FILE" || echo "$ADD_PATH" >> "$FILE"
        echo "PATH adicionado em $FILE"
    fi
}

add_to_file "$HOME/.bashrc"
add_to_file "$HOME/.zshrc"
add_to_file "$HOME/.profile"

# ==========================================
# APPLY
# ==========================================

export PATH="$HOME/.local/bin:$PATH"

echo ""
echo "========================================="
echo "Instalação concluída."
echo "========================================="
echo ""
echo "Testa com:"
echo ""
echo "    run42c"
echo ""
