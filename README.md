# SALETI - Ambulâncias de Aluguel - Site Recuperado

Este diretório contém uma versão estática do site da SALETI Ambulâncias de aluguel, recuperada do Wayback Machine (archive.org) a partir de um snapshot de 02/04/2025.

## 📁 Estrutura de Arquivos

```
SALETI/
├── index.html
├── assets/
│   ├── css/
│   │   └── style.css
│   ├── img/
│   │   ├── download-images.sh  # Script para baixar as imagens
│   │   └── [imagens serão baixadas aqui]
│   └── js/
│       └── lightbox.min.js     # Biblioteca para a galeria de imagens
└── README.md                   # Este arquivo
```

## 🚀 Como usar

1. **Baixar as imagens**:
   ```bash
   cd SALETI/assets/img/
   chmod +x download-images.sh
   ./download-images.sh
   ```
   
   Ou baixe manualmente cada imagem usando:
   ```bash
   wget "https://web.archive.org/web/20250402200917im_/https://www.ambulanciasdealuguel.com.br/assets/img/logo.png" -O logo.png
   # Repetir para cada imagem
   ```

2. **Testar localmente**:
   Após baixar as imagens, basta abrir o `index.html` em qualquer navegador web.

3. **Hospedagem**:
   Para colocar online, faça upload de todo o diretório `SALETI` para qualquer serviço de hospedagem estática (Netlify, Vercel, GitHub Pages, ou um servidor web tradicional).

## 📝 Observações importantes

- Esta é uma **versão estática** do site - apenas o que era visível publicamente na web foi recuperado
- Não inclui: banco de dados, scripts de backend, funcionalidades dinâmicas (como formulários que enviavam emails)
- O formulário de WhatsApp está funcional apontando para o número original
- Todas as cores, fontes e estilos foram preservados conforme o snapshot de 02/04/2025
- A galeria de imagens utiliza a biblioteca Lightbox2 (versão 2.11.3)

## 🔗 Links originais (Wayback Machine)

- Site completo: https://web.archive.org/web/20250402200917/https://www.ambulanciasdealuguel.com.br/
- CSS: https://web.archive.org/web/20250402200920/https://www.ambulanciasdealuguel.com.br/assets/css/style.css
- Imagens: Use o padrão `https://web.archive.org/web/20250402200917im_/https://www.ambulanciasdealuguel.com.br/assets/img/[nome-da-imagem]`

## 🛠️ Tecnologias detectadas

- HTML5
- CSS3 com variáveis CSS
- Bootstrap 5.3.3
- Font Awesome 4.7.0
- Google Material Icons
- Lightbox2 2.11.3 (para galeria de imagens)
- JavaScript vanilla

## 💡 Dicas de personalização

- Para alterar o telefone ou WhatsApp, edite o `index.html`
- Para mudar cores principais, edite as variáveis CSS em `assets/css/style.css`:
  --primary-color: #f2b821; (amarelo)
  --secondary-color: #05213c; (azul escuro)
- Para atualizar o texto ou conteúdo, edite diretamente o `index.html`

---

Site recuperado em: 21/09/2026
Fonte: Wayback Machine (archive.org) - snapshot de 02/04/2025