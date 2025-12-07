# Catalogue des Concepts - LearnByAoc

> Extraction automatique des 257 writeups AoC (2015-2025)

---

## Vue d'ensemble

```
Total writeups analyses : 257
Annees couvertes : 2015-2025
Concepts uniques identifies : ~50+
```

---

## 1. Structures de Donnees

| Structure | Occurrences | Niveau | Description |
|-----------|-------------|--------|-------------|
| `set` | 324 | Debutant | Ensemble sans doublons, recherche O(1) |
| `list` | 245 | Debutant | Tableau dynamique, acces O(1) |
| `queue` | 211 | Intermediaire | File FIFO (souvent pour BFS) |
| `defaultdict` | 121 | Intermediaire | Dict avec valeur par defaut |
| `deque` | 109 | Intermediaire | File double-ended, O(1) aux extremites |
| `stack` | 98 | Debutant | Pile LIFO |
| `Counter` | 93 | Intermediaire | Comptage automatique |
| `tuple` | 69 | Debutant | Sequence immutable |
| `dict` | 43 | Debutant | Table de hachage cle-valeur |
| `heap` | 3 | Avance | File de priorite |

### Prerequis

```
list -> set -> dict -> defaultdict -> Counter
          \-> deque -> queue
               \-> heap
```

---

## 2. Algorithmes

| Algorithme | Occurrences | Niveau | Prerequis |
|------------|-------------|--------|-----------|
| **BFS** | 94 | Intermediaire | queue, set, graphes |
| **DFS** | 32 | Intermediaire | recursion, set, graphes |
| **Dijkstra** | 17 | Avance | BFS, heap |
| **Greedy** | 10 | Intermediaire | tri |
| **Recursion** | 6 | Intermediaire | fonctions |
| **Brute Force** | 6 | Debutant | boucles |
| **Backtracking** | 6 | Avance | recursion, DFS |
| **Memoization** | 3 | Avance | recursion, dict |
| **Sliding Window** | 1 | Intermediaire | boucles |

### Graphe de dependances

```
boucles -> brute_force
       \-> recursion -> DFS -> backtracking
                   \-> memoization -> DP
       \-> tri -> greedy

queue + set -> BFS -> Dijkstra (+ heap)
                  \-> A* (+ heuristique)
```

---

## 3. Concepts Mathematiques

| Concept | Occurrences | Niveau | Application |
|---------|-------------|--------|-------------|
| **Distance** | 170 | Debutant | Grilles, coordonnees |
| **Modulo** | 75 | Debutant | Circulaire, crypto |
| **Manhattan** | 57 | Debutant | Grilles 2D |
| **XOR** | 42 | Intermediaire | Crypto, bit manipulation |
| **Binary** | 41 | Intermediaire | Representation, conversion |
| **GCD** | 15 | Intermediaire | Fractions, LCM |
| **Factorial** | 13 | Debutant | Combinatoire |
| **LCM** | 10 | Intermediaire | Cycles, periodicite |
| **Bitwise** | 3 | Avance | Optimisation, masques |
| **Prime** | 1 | Intermediaire | Crypto, factorisation |

### Prerequis mathematiques

```
arithmetique -> modulo -> arithmetique_modulaire
           \-> GCD -> LCM
           \-> factorial -> combinatoire

binaire -> XOR -> bitwise -> masques
      \-> hexadecimal

geometrie -> distance -> manhattan
                    \-> euclidean
         \-> vecteurs -> rotation
```

---

## 4. Patterns de Programmation

| Pattern | Frequence | Niveau | Exemple |
|---------|-----------|--------|---------|
| **Parsing** | Tres frequent | Debutant | split, strip, int() |
| **Grilles 2D** | Tres frequent | Debutant | list[list], directions |
| **Simulation** | Frequent | Intermediaire | Boucle while, etats |
| **Graphes** | Frequent | Intermediaire | Adjacency list |
| **Intervalles** | Moyen | Intermediaire | Fusion, overlap |
| **Automates** | Moyen | Avance | Etats, transitions |
| **DP** | Moyen | Avance | Memoization, table |

---

## 5. Mapping Concept -> Challenges

### Niveau 1 : Debutant (Lycee)

| Concept | Challenges recommandes |
|---------|------------------------|
| Parsing basique | 2015-01, 2016-01, 2020-01 |
| Boucles et conditions | 2015-01, 2015-02 |
| Listes et strings | 2015-02, 2015-05 |
| Sets (recherche) | 2020-01, 2016-01 |
| Modulo | 2015-01, 2025-01 |
| Grilles 2D simples | 2015-03, 2015-06 |

### Niveau 2 : Intermediaire (Bac/L1)

| Concept | Challenges recommandes |
|---------|------------------------|
| Dictionnaires | 2020-07, 2015-07 |
| BFS basique | 2016-13, 2019-18 |
| DFS basique | 2020-07, 2015-09 |
| Recursion | 2015-10, 2020-07 |
| Simulation | 2015-06, 2020-11 |
| Regex | 2015-05, 2020-04 |

### Niveau 3 : Avance (L2/L3)

| Concept | Challenges recommandes |
|---------|------------------------|
| Dijkstra | 2021-15, 2018-22 |
| Programmation dynamique | 2020-10, 2015-17 |
| Backtracking | 2015-09, 2015-13 |
| Crypto (MD5, XOR) | 2015-04, 2016-05 |
| Automates | 2020-08, 2016-12 |

### Niveau 4 : Expert (Master)

| Concept | Challenges recommandes |
|---------|------------------------|
| A* | 2016-11, 2018-22 |
| DP avancee | 2019-18, 2021-21 |
| Arithmetique modulaire | 2020-13, 2020-25 |
| Optimisation | 2020-23, 2019-22 |

---

## 6. Ordre d'apprentissage suggere

### Phase 1 : Fondations (4-6 semaines)

```
Semaine 1-2 : Variables, boucles, conditions
  -> 2015-01, 2015-02

Semaine 3-4 : Listes, strings, parsing
  -> 2015-03, 2015-05, 2016-01

Semaine 5-6 : Sets, dicts basiques
  -> 2020-01, 2015-07
```

### Phase 2 : Structures (4-6 semaines)

```
Semaine 7-8 : Grilles 2D, directions
  -> 2015-06, 2020-03, 2020-11

Semaine 9-10 : Recursion, piles
  -> 2015-10, 2021-10

Semaine 11-12 : Queues, deques
  -> 2016-13 (intro BFS)
```

### Phase 3 : Algorithmes (6-8 semaines)

```
Semaine 13-14 : BFS
  -> 2016-13, 2019-18

Semaine 15-16 : DFS
  -> 2020-07, 2015-09

Semaine 17-18 : Dijkstra
  -> 2021-15

Semaine 19-20 : DP introduction
  -> 2020-10
```

### Phase 4 : Applications (4+ semaines)

```
Semaine 21+ : Crypto, simulation avancee, optimisation
  -> Selon interets
```

---

## 7. A faire

- [ ] Analyser chaque writeup individuellement pour affiner
- [ ] Creer le graphe de dependances visuel (TikZ)
- [ ] Ecrire les chapitres du livre
- [ ] Ajouter des exercices supplementaires
- [ ] Creer des QCM d'evaluation
