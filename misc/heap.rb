class MaxHeap
  def initialize(elements)
    @store = []

    elements.each { |element| insert(element) }
  end

  def insert(element)
    @store.push(element)

    bubble_up!
  end

  def extract_max
    return nil if size.zero?

    max_element = max
    @store[0] = @store.pop

    sink_down!

    max_element
  end

  def max
    @store.first
  end

  def size
    @store.length
  end

  private

  def bubble_up!
    idx = size - 1

    while idx > 0
      parent_idx = parent_idx(idx)

      break if @store[parent_idx] > @store[idx]

      swap!(idx, parent_idx)
      idx = parent_index
    end
  end

  def sink_down!
    idx = 0
    parent_idx = parent_idx(size - 1)

    while idx < parent_idx
      child = children_idx(parent_idx).max_by { |i| @store[i] }

      break if @store[idx] > @store[child]

      swap!(idx, child)
      idx = child
    end
  end

  def parent_idx(idx)
    idx.zero? ? 0 : (idx - 1) / 2
  end

  def children_idx(idx)
    [(2 * idx) + 1, (2 * idx) + 2].select { |idx| idx < size }
  end

  def swap!(idx1, idx2)
    @store[idx1], @store[idx2] = @store[idx2], @store[idx1]
  end
end
