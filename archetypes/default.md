+++
date = '{{ .Date }}'
draft = true
title = '{{ replace .File.ContentBaseName "-" " " | title }}'
# Global signature is injected by layout.
# Set true only for special cases.
hideSignature = false
+++
