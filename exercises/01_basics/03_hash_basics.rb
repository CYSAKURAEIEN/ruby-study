# 练习 03: 哈希基础

# 任务 1: 合并哈希
# 编写一个方法,合并两个哈希,如果有相同的 key,值相加
# 例如: merge_hashes({a: 1, b: 2}, {b: 3, c: 4}) => {a: 1, b: 5, c: 4}
def merge_hashes(hash1, hash2)
  # 在这里编写你的代码
end

# 任务 2: 反转哈希
# 编写一个方法,交换哈希的 key 和 value
# 例如: invert_hash({a: 1, b: 2}) => {1 => :a, 2 => :b}
def invert_hash(hash)
  # 在这里编写你的代码
end

# 任务 3: 单词频率
# 编写一个方法,统计字符串中每个单词出现的次数
# 例如: word_frequency("hello world hello") => {"hello" => 2, "world" => 1}
def word_frequency(text)
  # 在这里编写你的代码
end

# 任务 4: 按值排序
# 编写一个方法,按值对哈希进行排序,返回数组
# 例如: sort_by_value({a: 3, b: 1, c: 2}) => [[:b, 1], [:c, 2], [:a, 3]]
def sort_by_value(hash)
  # 在这里编写你的代码
end

# 任务 5: 深度合并
# 编写一个方法,深度合并嵌套的哈希
# 例如: deep_merge({a: {b: 1}}, {a: {c: 2}}) => {a: {b: 1, c: 2}}
def deep_merge(hash1, hash2)
  # 在这里编写你的代码
end

# 任务 6: 按条件过滤
# 编写一个方法,根据条件过滤哈希
# 例如: filter_hash({a: 1, b: 2, c: 3, d: 4}) { |k, v| v.even? } => {b: 2, d: 4}
def filter_hash(hash, &block)
  # 在这里编写你的代码
end

# 测试代码
if __FILE__ == $0
  # 测试 merge_hashes
  # result = merge_hashes({a: 1, b: 2}, {b: 3, c: 4})
  # p result == {a: 1, b: 5, c: 4}

  # 测试 invert_hash
  # result = invert_hash({a: 1, b: 2})
  # p result == {1 => :a, 2 => :b}

  # 测试 word_frequency
  # result = word_frequency("hello world hello")
  # p result == {"hello" => 2, "world" => 1}

  # 测试 sort_by_value
  # result = sort_by_value({a: 3, b: 1, c: 2})
  # p result == [[:b, 1], [:c, 2], [:a, 3]]

  # 测试 deep_merge
  # result = deep_merge({a: {b: 1}}, {a: {c: 2}})
  # p result == {a: {b: 1, c: 2}}

  # 测试 filter_hash
  # result = filter_hash({a: 1, b: 2, c: 3, d: 4}) { |k, v| v.even? }
  # p result == {b: 2, d: 4}
end
