#!/bin/bash
#!/bin/bash
set -e
cd "$(dirname "$0")/.."

sed '/^---$/,/^---$/d' _pages/cv.md | \
  sed '/{: \.pdf-download-link}/d' | \
  sed 's|](/assets/|](https://pedroanguloumana.github.io/assets/|g' | \
  pandoc -o assets/cv/angulo-umana-cv.pdf \
    --pdf-engine=xelatex \
    --metadata title="Pedro Angulo-Umana" \
    --metadata author="pangulo96@snu.ac.kr · pedroanguloumana.github.io" \
    --metadata date="$(date '+%B %Y')" \
    -V geometry:margin=0.75in \
    -V fontsize=11pt \
    -V colorlinks=true \
    -V linkcolor=blue \
    -V urlcolor=blue \
    -V mainfont="Charter" \
    -V sansfont="Helvetica Neue" \
    -V monofont="Menlo" \
    -V section-titles=false \
    -V parskip=4pt \
    -V linestretch=1.05 \
    --include-in-header=scripts/cv-style.tex

echo "Generated assets/cv/angulo-umana-cv.pdf"