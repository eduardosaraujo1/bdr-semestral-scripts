#!/usr/bin/env python3

import sys
from collections import defaultdict

# Agrupa linhas por slot de horário
grupos = defaultdict(list)

# Preserva ordem original
linhas = []

for linha in sys.stdin:
    linha = linha.rstrip("\n")

    # Ignora linhas vazias/comentários
    if (
        not linha.strip()
        or linha.strip().startswith("#")
        or linha.strip().startswith("NM_CURSO")
    ):
        linhas.append((None, linha))
        continue

    partes = [p.strip() for p in linha.split(",")]

    curso = partes[0]
    semestre = partes[1]
    dia = partes[2]
    inicio = partes[3]
    fim = partes[4]

    chave = (dia, inicio, fim)

    grupos[chave].append(len(linhas))

    linhas.append((chave, partes))

# Atribui salas sem colisão
for chave, indices in grupos.items():
    for sala, idx in enumerate(indices, start=1):
        partes = linhas[idx][1]

        # Substitui último campo pela sala
        partes[-1] = f"[{sala}]"

# Output final
for chave, item in linhas:
    if chave is None:
        print(item)
    else:
        print(", ".join(item))
