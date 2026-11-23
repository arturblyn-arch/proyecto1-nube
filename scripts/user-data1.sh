#!/bin/bash
dnf install -y nginx
systemctl enable --now nginx

cat > /usr/share/nginx/html/index.html <<EOF
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<title>Librería Tinta</title>
</head>
<body>
<h1>Librería Tinta</h1>
<p>Tu librería de barrio.</p>
<h2>Horario</h2>
<ul>
  <li>Lunes a viernes: 10:00 – 14:00 y 17:00 – 20:30</li>
  <li>Sábados: 10:30 – 14:00</li>
  <li>Domingos y festivos: cerrado</li>
</ul>
<h2>Dónde estamos</h2>
<p>Calle del Tintero, 12 · 28012 Madrid</p>
<h2>Recomendación del mes</h2>
<p><em>Nada</em>, de Carmen Laforet: la Barcelona de posguerra vista por una joven que acaba de llegar a la ciudad.</p>
<hr>
<small>Desplegado por Artur Balayan en el servidor $(hostname) el $(date '+%d/%m/%Y %H:%M')</small>
</body>
</html>
EOF
