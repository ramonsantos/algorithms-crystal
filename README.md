# Algorithms in Crystal

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

A growing collection of classic algorithms implemented in [Crystal](https://crystal-lang.org/) — a statically typed, compiled language with Ruby-inspired syntax and C-like performance.

This project is meant to be a practical reference: clean, readable implementations you can study, test, and reuse in your own Crystal applications. Each algorithm lives in its own module under `src/algorithms/` and is covered by specs.

## Why Crystal?

Crystal combines the expressiveness of Ruby with compile-time type checking and native speed. That makes it a great fit for algorithm implementations where clarity and performance both matter — you get readable code without sacrificing efficiency.

## Implemented Algorithms

| Algorithm | Category | Time Complexity | Space Complexity | Source |
|-----------|----------|-----------------|------------------|--------|
| [Heap Sort](#heap-sort) | Sorting | O(n log n) | O(1) | [`src/algorithms/heap_sort.cr`](src/algorithms/heap_sort.cr) |

More algorithms will be added over time. Contributions are welcome.

### Heap Sort

Heap Sort is a comparison-based sorting algorithm that uses a binary heap data structure. It works in two phases:

1. **Build a max-heap** from the input array.
2. **Repeatedly extract** the largest element and place it at the end of the array.

The implementation sorts **in-place**, so no extra array is allocated. It performs well on large datasets and guarantees O(n log n) time in all cases — best, average, and worst.

## Requirements

- [Crystal](https://crystal-lang.org/install/) **>= 1.20.2** (see `shard.yml`)
- [Shards](https://github.com/crystal-lang/shards) (Crystal's dependency manager)

## Getting Started

### Clone the repository

```bash
git clone https://github.com/ramonsantos/algorithms-crystal.git
cd algorithms-crystal
```

### Install dependencies

```bash
shards install
```

### Run the test suite

```bash
crystal spec
```

Tests cover sorted, unsorted, and reverse-sorted inputs to ensure correctness across common edge cases.

### Check code formatting

```bash
crystal tool format --check
```

## Usage

Add this shard as a dependency in your project's `shard.yml`:

```yaml
dependencies:
  algorithms-crystal:
    github: ramonsantos/algorithms-crystal
```

Then require and use the algorithm you need:

```crystal
require "algorithms/heap_sort"

sorter = Algorithms::HeapSort.new
sorted = sorter.sort([6, 4, 3, 1, 5, 8, 2, 9, 7])
puts sorted # => [1, 2, 3, 4, 5, 6, 7, 8, 9]
```

When working inside this repository, you can run the same code directly:

```bash
crystal eval 'require "./src/algorithms/heap_sort"; puts Algorithms::HeapSort.new.sort([6, 4, 3, 1, 5, 8, 2, 9, 7])'
```

## Project Structure

```
algorithms-crystal/
├── src/
│   ├── algorithms-crystal.cr   # Main module and version
│   └── algorithms/
│       └── heap_sort.cr        # Heap Sort implementation
├── spec/
│   ├── spec_helper.cr
│   └── algorithms/
│       └── heap_sort_spec.cr   # Heap Sort specs
├── shard.yml
├── shard.lock
└── README.md
```

## Roadmap

Planned additions (not yet implemented):

- Bubble Sort, Insertion Sort, Merge Sort, Quick Sort
- Binary Search
- Graph traversal (BFS, DFS)
- Dynamic programming classics

If you'd like to implement one of these — or suggest another — open an issue or pull request.

## Contributing

1. Fork the repository.
2. Create a feature branch (`git checkout -b add-merge-sort`).
3. Add your algorithm under `src/algorithms/` with corresponding specs under `spec/algorithms/`.
4. Run `crystal spec` and `crystal tool format --check` before submitting.
5. Open a pull request with a short description of the algorithm and its complexity.

Please keep implementations focused and well-tested. One algorithm per file, one spec file per algorithm.

## License

This project is released under the [MIT License](LICENSE).

## Author
[ramonsantos](https://github.com/ramonsantos) - creator and maintainer
