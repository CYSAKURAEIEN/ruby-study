# 练习 01: 字符串操作

# 任务 1: 反转单词
# 编写一个方法,反转句子中的每个单词,但保持单词顺序不变
# 例如: "Hello World" => "olleH dlroW"
def reverse_words(sentence)
  # 在这里编写你的代码
end

# 任务 2: 统计元音
# 编写一个方法,统计字符串中元音字母(a, e, i, o, u)的数量(不区分大小写)
def count_vowels(str)
  # 在这里编写你的代码
end

# 任务 3: 标题格式化
# 编写一个方法,将字符串转换为标题格式(每个单词首字母大写)
# 例如: "hello world" => "Hello World"
def title_case(str)
  # 在这里编写你的代码
end

# 任务 4: 检查回文
# 编写一个方法,检查字符串是否是回文(正读和反读都一样)
# 忽略空格和大小写
# 例如: "A man a plan a canal Panama" => true
def palindrome?(str)
  # 在这里编写你的代码
end

# 任务 5: 字符串压缩
# 编写一个方法,压缩连续重复的字符
# 例如: "aaabbcccc" => "a3b2c4"
def compress_string(str)
  # 在这里编写你的代码
end

# 测试代码 - 取消注释来测试你的方法
if __FILE__ == $0
  # 测试 reverse_words
  # puts reverse_words("Hello World") == "olleH dlroW"
  # puts reverse_words("Ruby is fun") == "ybuR si nuf"

  # 测试 count_vowels
  # puts count_vowels("Hello") == 2
  # puts count_vowels("Programming") == 3

  # 测试 title_case
  # puts title_case("hello world") == "Hello World"
  # puts title_case("ruby programming") == "Ruby Programming"

  # 测试 palindrome?
  # puts palindrome?("racecar") == true
  # puts palindrome?("A man a plan a canal Panama") == true
  # puts palindrome?("hello") == false

  # 测试 compress_string
  # puts compress_string("aaabbcccc") == "a3b2c4"
  # puts compress_string("abc") == "a1b1c1"
end
