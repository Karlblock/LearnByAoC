# LearnByAoc - Apprendre la Cyber par les Challenges

Livre LaTeX pour apprendre la programmation et les algorithmes a travers les challenges Advent of Code.

## Structure

```
LearnByAoc/
├── main.tex           # Document principal
├── chapters/          # Chapitres du livre
│   ├── 01_parsing.tex
│   ├── 02_arithmetique.tex
│   └── ...
├── assets/            # Images et diagrammes
├── exercises/         # Exercices supplementaires
├── src/               # Code source des solutions
└── Makefile           # Compilation
```

## Compilation

```bash
# Compiler le PDF
make

# Compilation rapide (1 passe)
make quick

# Nettoyer les fichiers temporaires
make clean

# Voir le PDF
make view
```

## Prerequis

- LaTeX (texlive-full recommande)
- Packages: tcolorbox, listings, algorithm2e, tikz, fontawesome5

### Installation Ubuntu/Debian

```bash
sudo apt install texlive-full
```

### Installation Arch

```bash
sudo pacman -S texlive-most
```

## Organisation des concepts

Le livre est organise par **concept**, pas par annee d'AoC :

1. **Fondations** : Parsing, Arithmetique, Recherche, Grilles
2. **Structures** : Sets, Dicts, Piles, Arbres
3. **Algorithmes** : Recursion, Graphes, DP, Simulation
4. **Applications** : Crypto, Parsing avance, Optimisation

Chaque concept reference les challenges AoC pertinents de toutes les annees.

## Source des challenges

Les challenges proviennent de [Advent of Code](https://adventofcode.com) (2015-2025).
Credits: Eric Wastl.
