# 练习 02: 数组基础

# 任务 1: 找最大值
# 编写一个方法,找到数组中的最大值(不使用 max 方法)
def find_max(arr)
  # 在这里编写你的代码
end

# 任务 2: 去除重复
# 编写一个方法,去除数组中的重复元素(不使用 uniq 方法)
def remove_duplicates(arr)
  # 在这里编写你的代码
end

# 任务 3: 找共同元素
# 编写一个方法,找到两个数组的共同元素
def find_common(arr1, arr2)
  # 在这里编写你的代码
end

# 任务 4: 数组求和
# 编写一个方法,计算数组中所有元素的和(不使用 sum 方法)
def array_sum(arr)
  # 在这里编写你的代码
end

# 任务 5: 数组翻转
# 编写一个方法,翻转数组(不使用 reverse 方法)
def reverse_array(arr)
  # 在这里编写你的代码
end

# 任务 6: 第二大的数
# 编写一个方法,找到数组中第二大的数
def second_largest(arr)
  # 在这里编写你的代码
end

# 任务 7: 数组分块
# 编写一个方法,将数组分成指定大小的块
# 例如: chunk([1,2,3,4,5], 2) => [[1,2], [3,4], [5]]
def chunk(arr, size)
  # 在这里编写你的代码
end

# 测试代码
if __FILE__ == $0
  # 测试 find_max
  # puts find_max([1, 5, 3, 9, 2]) == 9
  # puts find_max([-1, -5, -3]) == -1

  # 测试 remove_duplicates
  # p remove_duplicates([1, 2, 2, 3, 3, 3, 4]) == [1, 2, 3, 4]

  # 测试 find_common
  # p find_common([1, 2, 3], [2, 3, 4]) == [2, 3]

  # 测试 array_sum
  # puts array_sum([1, 2, 3, 4, 5]) == 15

  # 测试 reverse_array
  # p reverse_array([1, 2, 3, 4]) == [4, 3, 2, 1]

  # 测试 second_largest
  # puts second_largest([1, 5, 3, 9, 2]) == 5

  # 测试 chunk
  # p chunk([1, 2, 3, 4, 5], 2) == [[1, 2], [3, 4], [5]]
end
