#!/bin/bash
dnf install -y nginx
systemctl enable --now nginx

cat > /usr/share/nginx/html/index.html <<EOF
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<title>Librería Tinta · Servidor 2</title>
</head>
<body style="background:#fdf3e1">
<h1>Librería Tinta — versión 2 (SERVIDOR 2)</h1>
<p>Tu librería de barrio, ahora con club de lectura.</p>
<h2>Horario</h2>
<ul>
  <li>Lunes a viernes: 10:00 – 14:00 y 17:00 – 20:30</li>
  <li>Sábados: 10:30 – 14:00</li>
</ul>
<h2>Dónde estamos</h2>
<p>Calle del Tintero, 12 · 28012 Madrid</p>
<h2>Club de lectura</h2>
<p>Jueves alternos a las 19:00. Este mes: <em>Los santos inocentes</em>, de Miguel Delibes.</p>
<hr>
<small>SERVIDOR 2 · Desplegado por Artur Balayan en el servidor $(hostname) el $(date '+%d/%m/%Y %H:%M')</small>
</body>
</html>
EOF
