#!/bin/bash

# Script de configuração para Exercício 06 - Organização de Arquivos
# Este script cria a estrutura inicial do exercício

echo "Criando estrutura do exercício 06..."

# Criar diretórios
mkdir -p images music video documents

# Criar 10+ arquivos de IMAGEM (prefixo: imagem)
touch imagem_001.jpg imagem_002.jpeg imagem_003.gif imagem_004.bmp imagem_005.png
touch imagem_006.jpg imagem_007.tiff imagem_008.gif imagem_009.webp imagem_010.jpeg
touch imagem_011.bmp imagem_012.svg

# Criar 10+ arquivos de MÚSICA (prefixo: musica)
touch musica_001.mp3 musica_002.wav musica_003.flac musica_004.aac musica_005.ogg
touch musica_006.m4a musica_007.wma musica_008.opus musica_009.mp3 musica_010.wav
touch musica_011.flac musica_012.aac

# Criar 10+ arquivos de VÍDEO (prefixo: video)
touch video_001.mp4 video_002.avi video_003.mkv video_004.mov video_005.flv
touch video_006.wmv video_007.webm video_008.m4v video_009.mp4 video_010.avi
touch video_011.mkv video_012.mov

# Criar 10+ arquivos de DOCUMENTO (prefixo: documento)
touch documento_001.pdf documento_002.txt documento_003.docx documento_004.doc documento_005.xlsx
touch documento_006.csv documento_007.odt documento_008.rtf documento_009.pdf documento_010.docx
touch documento_011.txt documento_012.xls

echo "✓ Estrutura do exercício criada com sucesso!"
echo ""
echo "Diretórios criados:"
echo "  • images"
echo "  • music"
echo "  • video"
echo "  • documents"
echo ""
echo "Arquivos criados na pasta atual:"
echo "  • 12 imagens (prefixo: imagem)"
echo "  • 12 músicas (prefixo: musica)"
echo "  • 12 vídeos (prefixo: video)"
echo "  • 12 documentos (prefixo: documento)"
echo ""
echo "🎯 Objetivo do exercício:"
echo "Use 'ls' para listar os arquivos e 'cp' para copiar cada arquivo"
echo "para o diretório correto (images, music, video, documents)"
