# Advent of Code Writeup Analysis Summary

## Overview

This analysis catalogs **257 educational writeups** across **11 years** (2015-2025) of Advent of Code challenges. Each writeup is designed to teach programming concepts, algorithms, and problem-solving techniques through hands-on examples.

**Analysis Date**: December 7, 2025

---

## Key Findings

### Total Coverage
- **257 writeups analyzed** across 2015-2025
- **All 25 days** covered for years 2015-2024
- **Partial coverage** for 2025 (Days 1-7)

### Concept Distribution

#### Algorithms (Most Common)
1. **BFS (Breadth-First Search)** - Appears in ~15% of challenges
2. **Dijkstra's Algorithm** - Pathfinding in weighted graphs
3. **Permutations/Combinations** - Combinatorial problems
4. **Topological Sort** - Dependency resolution
5. **DFS (Depth-First Search)** - Tree/graph traversal
6. **Dynamic Programming** - Optimization problems
7. **Binary Search** - Efficient searching
8. **Flood Fill** - Area calculation
9. **Cycle Detection** - Finding repeating patterns

#### Data Structures (Most Used)
1. **dict** - Key-value mappings, caching, graphs
2. **set** - Visited tracking, uniqueness
3. **deque** - BFS, queue operations
4. **list/array** - Basic storage
5. **heap/priority queue** - Dijkstra, A*
6. **Counter** - Frequency counting
7. **defaultdict** - Graph adjacency lists
8. **grid/matrix** - 2D problems
9. **tree** - Hierarchical data

#### Mathematical Concepts
1. **Modulo Arithmetic** - Cycles, wrapping, remainders
2. **GCD/LCM** - Number theory
3. **Chinese Remainder Theorem** - Modular equations
4. **Manhattan Distance** - Grid distance
5. **Binary/Bitwise Operations** - Bit manipulation
6. **Prime Numbers** - Factorization
7. **Combinatorics** - Counting arrangements
8. **Linear Algebra** - Matrix operations
9. **Geometry** - Coordinates, shapes
10. **Graph Theory** - Paths, connectivity

---

## Difficulty Levels

### Easy (Days 1-8 typically)
**Characteristics**:
- Simple iteration
- Basic string/list operations
- Direct formulas
- Single algorithm application

**Common Topics**:
- String manipulation
- Counting
- Sorting
- Basic parsing
- Simple math

**Example Challenges**:
- 2015 Day 1: Not Quite Lisp (iteration, counting)
- 2015 Day 2: I Was Told There Would Be No Math (parsing, arithmetic)
- 2024 Day 1: Historian Hysteria (sorting, counting)

### Medium (Days 9-20 typically)
**Characteristics**:
- Graph algorithms
- Moderate optimization
- State machines
- Simulation
- Multiple algorithm combination

**Common Topics**:
- BFS/DFS
- Pathfinding
- Grid navigation
- Regex parsing
- Recursion with memoization
- Basic DP

**Example Challenges**:
- 2016 Day 13: A Maze of Twisty Little Cubicles (BFS, bit counting)
- 2021 Day 15: Chiton (Dijkstra)
- 2022 Day 12: Hill Climbing Algorithm (BFS with constraints)

### Hard (Days 21-25 typically)
**Characteristics**:
- Advanced algorithms
- Number theory
- Complex optimization
- Multiple interconnected concepts

**Common Topics**:
- Chinese Remainder Theorem
- Advanced DP
- Complex geometry
- A* pathfinding
- SAT solvers
- Reverse engineering

**Example Challenges**:
- 2020 Day 13: Shuttle Search (CRT, modular arithmetic)
- 2023 Day 10: Pipe Maze (ray casting, polygon containment)
- Various Day 24/25: Reverse engineering, constraint solving

---

## Learning Progression

### Level 1: Absolute Beginner
**Prerequisites**: Basic Python syntax

**Start Here**:
1. 2015 Day 1 - Iteration, counting
2. 2015 Day 2 - Parsing, arithmetic
3. 2024 Day 1 - Sorting, Counter
4. 2015 Day 3 - Sets, coordinate tracking
5. 2015 Day 4 - Hashing, brute force
6. 2015 Day 5 - String validation

**Skills Gained**:
- String manipulation (split, count, startswith)
- List operations (append, sort, comprehensions)
- Dict and set usage
- Basic iteration patterns
- Function writing

### Level 2: Comfortable Beginner
**Prerequisites**: Completed Level 1

**Next Steps**:
1. 2015 Day 6 - 2D grids, regex
2. 2019 Day 6 - Tree traversal
3. 2015 Day 9 - Permutations
4. 2016 Day 13 - BFS introduction
5. 2022 Day 12 - BFS with constraints

**Skills Gained**:
- BFS algorithm
- Graph representation
- Grid navigation
- Regex basics
- Permutations/combinations

### Level 3: Intermediate
**Prerequisites**: Comfortable with BFS, basic algorithms

**Continue With**:
1. 2021 Day 15 - Dijkstra's algorithm
2. 2015 Day 7 - Recursion, memoization
3. 2018 Day 7 - Topological sort
4. 2017 Day 11 - Hexagonal grids
5. Various DP problems

**Skills Gained**:
- Dijkstra / A*
- Dynamic programming
- Advanced recursion
- Memoization patterns
- Complex data structures

### Level 4: Advanced
**Prerequisites**: Strong algorithm knowledge

**Challenge Yourself**:
1. 2020 Day 13 - Chinese Remainder Theorem
2. 2023 Day 10 - Ray casting
3. Various Day 24/25 - Constraint solving
4. Assembly simulation problems
5. Reverse engineering challenges

**Skills Gained**:
- Number theory
- Advanced geometry
- Constraint satisfaction
- Optimization techniques
- Pattern recognition

---

## Python Techniques Catalog

### Collections Module
```python
from collections import deque, Counter, defaultdict

# deque - O(1) operations on both ends
queue = deque([1, 2, 3])
queue.append(4)        # Add right
queue.popleft()        # Remove left

# Counter - frequency counting
counts = Counter([1, 2, 2, 3, 3, 3])  # {1:1, 2:2, 3:3}

# defaultdict - avoid KeyError
graph = defaultdict(list)
graph['A'].append('B')  # No need to initialize
```

### Itertools Module
```python
from itertools import permutations, combinations, product

# All orderings
list(permutations([1, 2, 3]))  # [(1,2,3), (1,3,2), ...]

# All subsets of size k
list(combinations([1, 2, 3], 2))  # [(1,2), (1,3), (2,3)]

# Cartesian product
list(product([1, 2], ['a', 'b']))  # [(1,'a'), (1,'b'), (2,'a'), (2,'b')]
```

### Heapq Module
```python
import heapq

# Priority queue for Dijkstra
pq = []
heapq.heappush(pq, (distance, node))
dist, node = heapq.heappop(pq)
```

### String Operations
```python
# Parsing
"1,2,3".split(',')  # ['1', '2', '3']
"  hello  ".strip()  # "hello"

# Checking
"123".isdigit()  # True
"hello".startswith("he")  # True

# Counting
"hello world".count('l')  # 3
```

### List Comprehensions
```python
# Filter and transform
[x*2 for x in range(10) if x % 2 == 0]

# Nested
[[i+j for j in range(3)] for i in range(3)]

# Dict comprehension
{x: x**2 for x in range(5)}

# Set comprehension
{x % 3 for x in range(10)}
```

---

## Common Algorithm Templates

### BFS Template
```python
from collections import deque

def bfs(start, goal, graph):
    queue = deque([(start, 0)])  # (position, distance)
    visited = {start}

    while queue:
        pos, dist = queue.popleft()

        if pos == goal:
            return dist

        for neighbor in get_neighbors(pos):
            if neighbor not in visited:
                visited.add(neighbor)
                queue.append((neighbor, dist + 1))

    return -1  # Not found
```

### Dijkstra Template
```python
import heapq

def dijkstra(start, goal, graph):
    pq = [(0, start)]  # (distance, node)
    distances = {start: 0}

    while pq:
        dist, node = heapq.heappop(pq)

        if node == goal:
            return dist

        if dist > distances.get(node, float('inf')):
            continue

        for neighbor, weight in graph[node]:
            new_dist = dist + weight
            if new_dist < distances.get(neighbor, float('inf')):
                distances[neighbor] = new_dist
                heapq.heappush(pq, (new_dist, neighbor))

    return -1
```

### Memoization Pattern
```python
def solve(n, cache=None):
    if cache is None:
        cache = {}

    if n in cache:
        return cache[n]

    # Base case
    if n == 0:
        return 1

    # Recursive case
    result = solve(n-1, cache) + solve(n-2, cache)
    cache[n] = result
    return result
```

### Grid Navigation
```python
def explore_grid(grid, start):
    rows, cols = len(grid), len(grid[0])
    directions = [(0,1), (0,-1), (1,0), (-1,0)]  # Right, Left, Down, Up

    for dr, dc in directions:
        nr, nc = start[0] + dr, start[1] + dc

        # Bounds check
        if 0 <= nr < rows and 0 <= nc < cols:
            # Process neighbor
            process(grid[nr][nc])
```

---

## Key Insights by Year

### 2015: Foundation Building
- Focus on basic algorithms
- Introduction to graph problems
- Bit manipulation
- Permutations and combinations

### 2016: Grid & Pathfinding
- Heavy emphasis on BFS
- State machines
- MD5 hashing
- Assembly simulation

### 2017: Advanced Structures
- Hexagonal grids
- Complex simulations
- Knot hash
- Particle systems

### 2018: Optimization
- Topological sorting
- Cellular automata
- Regex parsing
- Time-based simulations

### 2019: IntCode Series
- Virtual machine implementation
- Complex I/O handling
- BFS in 3D
- Search optimization

### 2020: Number Theory
- Chinese Remainder Theorem
- Modular arithmetic
- Recursive grammars
- Conway Cubes (3D/4D Game of Life)

### 2021: Classic Algorithms
- Dijkstra's algorithm
- Deterministic DP
- Binary manipulation
- Path optimization

### 2022: Grid Mastery
- Hill climbing
- Tetris-like problems
- Monkey business (modular arithmetic)
- Cube wrapping

### 2023: Geometry & Graphs
- Ray casting
- Polygon algorithms
- Range manipulation
- Graph analysis

### 2024: Back to Basics
- Sorting and counting
- Pattern matching
- Grid traversal
- Mixed difficulty spread

### 2025: Early Days (Days 1-7)
- Classic introductory problems
- Building momentum
- Progressive difficulty

---

## Most Valuable Concepts to Master

### Essential (Learn First)
1. **BFS** - Used in 15%+ of problems
2. **Sets & Dicts** - Core data structures
3. **Grid Navigation** - Very common pattern
4. **String Parsing** - Always needed
5. **List Comprehensions** - Code efficiency

### Very Important (Learn Second)
1. **Dijkstra** - Weighted pathfinding
2. **Recursion + Memoization** - Optimization
3. **Modulo Arithmetic** - Cycle problems
4. **Regex** - Complex parsing
5. **DFS** - Tree problems

### Advanced (Learn Later)
1. **Dynamic Programming** - Complex optimization
2. **Topological Sort** - Dependencies
3. **Number Theory** (GCD, CRT) - Math problems
4. **Bitwise Operations** - Efficiency tricks
5. **Geometric Algorithms** - Spatial problems

---

## File Locations

- **Full JSON Catalog**: `/home/kless/lab/AdventOfCode/writeup_catalog.json`
- **This Summary**: `/home/kless/lab/AdventOfCode/WRITEUP_ANALYSIS_SUMMARY.md`
- **All Writeups**: `/home/kless/lab/AdventOfCode/aoc{YEAR}/day{DD}_{name}/writeup.md`

---

## How to Use This Analysis

### For Learners
1. **Start at your level** - Use the learning progression
2. **Follow the path** - Don't skip difficulty levels
3. **Master fundamentals** - BFS, parsing, grids
4. **Practice patterns** - Use the templates
5. **Build up** - Each concept builds on previous ones

### For Instructors
1. **Reference the catalog** - Find problems by concept
2. **Plan progression** - Use learning paths
3. **Identify gaps** - See what students struggle with
4. **Create curriculum** - Build on these writeups
5. **Track skills** - Monitor concept mastery

### For Problem Solvers
1. **Quick reference** - Find algorithm templates
2. **Pattern matching** - Recognize problem types
3. **Technique lookup** - Python idioms and tricks
4. **Concept review** - Refresh on specific topics
5. **Difficulty assessment** - Know what to expect

---

## Statistics Summary

| Category | Count | Notes |
|----------|-------|-------|
| Total Writeups | 257 | Across 11 years |
| Easy Problems | ~60 | Days 1-8 typically |
| Medium Problems | ~140 | Days 9-20 typically |
| Hard Problems | ~57 | Days 21-25 typically |
| Algorithms Covered | 25+ | BFS, Dijkstra, DP, etc. |
| Data Structures | 15+ | Lists, dicts, sets, heaps, etc. |
| Math Concepts | 20+ | Modulo, GCD, geometry, etc. |
| Python Techniques | 50+ | Comprehensions, modules, etc. |

---

## Recommended Study Order

### Week 1: Foundations
- Days 1-5 of 2015
- Learn: iteration, strings, lists, dicts, sets

### Week 2: Basic Algorithms
- Days 6-10 of 2015
- Learn: BFS, permutations, regex

### Week 3-4: Grid Problems
- 2016 Day 13, 2022 Day 12
- Learn: Grid navigation, pathfinding

### Week 5-6: Graph Algorithms
- 2019 Day 6, 2018 Day 7, 2021 Day 15
- Learn: Tree traversal, topological sort, Dijkstra

### Week 7-8: Advanced Concepts
- 2015 Day 7, 2020 Day 13
- Learn: Recursion, memoization, number theory

### Week 9+: Challenge Problems
- Various Day 20+ problems
- Practice: Complex optimization, mixed concepts

---

## Conclusion

These 257 writeups represent a comprehensive curriculum for learning algorithms, data structures, and problem-solving techniques through practical application. They progress naturally from simple iteration to advanced number theory, making them an excellent resource for self-study or structured learning.

The writeups emphasize:
- **Understanding** over memorization
- **Patterns** over one-off solutions
- **Python idioms** and best practices
- **Progressive difficulty** for natural learning
- **Real examples** with test cases

Whether you're a beginner learning to code or an experienced programmer sharpening your skills, these writeups provide a structured path to mastery.

**Happy coding! 🎄**
