#!/bin/bash

# Script para criar estrutura desorganizada do exercício 7
# Objetivo: Praticar mover arquivos e diretórios usando caminhos relativos

set -e

EXERCISE_DIR="exercicio-7"

# Verificar se o diretório já existe
if [ -d "$EXERCISE_DIR" ]; then
    echo "⚠️  O diretório '$EXERCISE_DIR' já existe."
    echo ""
    read -p "Deseja remover o diretório existente e criar um novo? (s/N): " -n 1 -r
    echo ""

    if [[ ! $REPLY =~ ^[SsYy]$ ]]; then
        echo "❌ Operação cancelada. O diretório existente foi mantido."
        exit 0
    fi

    echo "🗑️  Removendo diretório existente..."
    rm -rf "$EXERCISE_DIR"
fi

echo "📁 Criando estrutura desorganizada para o exercício 7..."

# Criar estrutura de diretórios
mkdir -p "$EXERCISE_DIR/filmes"
mkdir -p "$EXERCISE_DIR/livros/series/dinossauros"

# Criar arquivos desorganizados
# Dinossauro na raiz
echo "O Velociraptor é um dinossauro carnívoro que viveu há 75 milhões de anos." > "$EXERCISE_DIR/velociraptor.txt"

# Livro dentro de filmes
echo "A Bíblia é uma coleção de textos religiosos sagrados." > "$EXERCISE_DIR/filmes/biblia.txt"

# Filme correto
echo "Matrix (1999) é um filme de ficção científica dirigido pelas irmãs Wachowski." > "$EXERCISE_DIR/filmes/matrix.txt"

# Livros corretos
echo "Harry Potter é uma série de livros de fantasia escrita por J.K. Rowling." > "$EXERCISE_DIR/livros/harry-potter.txt"
echo "O Senhor dos Anéis é uma obra de alta fantasia escrita por J.R.R. Tolkien." > "$EXERCISE_DIR/livros/senhor-dos-aneis.txt"

# Filme dentro de séries
echo "O Exterminador do Futuro (1984) é um filme de ficção científica." > "$EXERCISE_DIR/livros/series/o-exterminador-do-futuro-1.txt"

# Filme dentro de dinossauros
echo "Parque dos Dinossauros (1993), também conhecido como Jurassic Park, é um filme dirigido por Steven Spielberg." > "$EXERCISE_DIR/livros/series/dinossauros/parque-dos-dinossauros-1.txt"

# Séries dentro de dinossauros
echo "Friends (1994-2004) é uma série de comédia sobre seis amigos em Nova York." > "$EXERCISE_DIR/livros/series/dinossauros/friends.txt"
echo "Chaves é uma série mexicana de comédia criada por Roberto Gómez Bolaños." > "$EXERCISE_DIR/livros/series/dinossauros/chaves.txt"
echo "Chapolin Colorado é uma série mexicana de super-herói paródia." > "$EXERCISE_DIR/livros/series/dinossauros/chapolim.txt"

echo ""
echo "✅ Estrutura criada com sucesso!"
echo ""
echo "📋 Estrutura atual (desorganizada):"
echo ""
tree "$EXERCISE_DIR" || find "$EXERCISE_DIR" -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
echo ""
echo "🎯 OBJETIVO DO EXERCÍCIO:"
echo "   Organize os arquivos nas pastas corretas usando comandos 'mv' com caminhos relativos."
echo ""
echo "💡 DICAS:"
echo "   - Crie a estrutura correta de pastas primeiro: filmes/, livros/, series/, dinossauros/"
echo "   - Use 'cd' para navegar entre diretórios"
echo "   - Use '..' para voltar um nível"
echo "   - Use caminhos relativos como '../../destino/arquivo.txt'"
echo "   - Use 'mv' para MOVER arquivos que pertencem a apenas uma categoria"
echo "   - Use 'cp' para COPIAR arquivos que pertencem a múltiplas categorias"
echo "   - Exemplo: Harry Potter é tanto um livro quanto um filme!"
echo ""
echo "📍 COMANDOS ÚTEIS (use e abuse!):"
echo "   - 'pwd' → Mostra onde você está agora"
echo "   - 'ls -lp' → Lista arquivos (diretórios aparecem com /)"
echo "   - 'tree' → Mostra toda a estrutura em árvore"
echo "   - 'cat arquivo.txt' → Visualiza o conteúdo do arquivo"
echo "   - Use estes comandos constantemente para saber o estado atual!"
echo ""
echo "📂 ESTRUTURA ESPERADA:"
echo "   exercicio-7/"
echo "   ├── dinossauros/"
echo "   │   ├── velociraptor.txt"
echo "   │   └── parque-dos-dinossauros-1.txt"
echo "   ├── filmes/"
echo "   │   ├── matrix.txt"
echo "   │   ├── o-exterminador-do-futuro-1.txt"
echo "   │   ├── harry-potter.txt"
echo "   │   └── senhor-dos-aneis.txt"
echo "   ├── livros/"
echo "   │   ├── biblia.txt"
echo "   │   ├── harry-potter.txt"
echo "   │   └── senhor-dos-aneis.txt"
echo "   └── series/"
echo "       ├── friends.txt"
echo "       ├── chaves.txt"
echo "       └── chapolim.txt"
echo ""
echo "⚠️  ATENÇÃO: Alguns arquivos pertencem a múltiplas categorias!"
echo "   Exemplo: 'Harry Potter' e 'Senhor dos Anéis' são LIVROS e FILMES."
echo "   Nestes casos, use 'cp' (copiar) ao invés de 'mv' (mover)."
echo "   Assim o arquivo aparecerá em ambas as categorias corretas!"
echo ""
