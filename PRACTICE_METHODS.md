# Ruby 练习方法详解

## 目录
- [练习原则](#练习原则)
- [七种核心练习方法](#七种核心练习方法)
- [各阶段具体练习方法](#各阶段具体练习方法)
- [项目实战练习](#项目实战练习)
- [代码题库推荐](#代码题库推荐)
- [练习评估标准](#练习评估标准)

---

## 练习原则

### 1. 刻意练习 (Deliberate Practice)
- **走出舒适区**：始终挑战略高于当前水平的内容
- **专注训练**：每次练习专注于一个知识点
- **即时反馈**：使用测试或他人审查获得反馈
- **持续重复**：重要的知识点反复练习

### 2. 学习金字塔
```
        记忆率
被动学习  阅读            10%
         听讲            20%
         演示/观看        30%

主动学习  讨论            50%
         实践/练习        75%
         教授他人         90%
```

### 3. 费曼学习法
1. 选择一个概念
2. 用简单的语言教给别人(或写下来)
3. 发现不理解的地方
4. 复习和简化

---

## 七种核心练习方法

### 方法一：模仿式练习 (Copy & Understand)

**适用阶段**：初学者(第 1-2 阶段)

**步骤**：
1. 阅读示例代码
2. 完全照着敲一遍
3. 理解每一行的作用
4. 加注释解释
5. 修改部分代码观察结果

**示例练习**：
```ruby
# 原始代码
def greet(name)
  "Hello, #{name}!"
end

# 第一遍：照着敲
# 第二遍：加注释
def greet(name)  # 定义一个方法,接受一个参数 name
  "Hello, #{name}!"  # 使用字符串插值返回问候语
end

# 第三遍：修改和扩展
def greet(name, greeting = "Hello")  # 添加默认参数
  "#{greeting}, #{name}!"
end
```

**练习清单**：
- [ ] 抄写代码不出错
- [ ] 理解每行代码含义
- [ ] 能用自己的话解释
- [ ] 成功修改并运行

---

### 方法二：问题驱动练习 (Problem-Based)

**适用阶段**：所有阶段

**步骤**：
1. 阅读问题描述
2. 分析问题,拆解步骤
3. 自己尝试实现
4. 运行测试
5. 查看标准答案
6. 对比和改进

**示例练习**：

**问题**：编写一个方法,接受一个数组,返回所有偶数的平方和。

```ruby
# 步骤 1: 理解问题
# 输入：[1, 2, 3, 4, 5]
# 输出：2² + 4² = 4 + 16 = 20

# 步骤 2: 自己实现
def sum_of_even_squares(numbers)
  # 你的代码
end

# 步骤 3: 测试
puts sum_of_even_squares([1, 2, 3, 4, 5]) == 20
puts sum_of_even_squares([2, 4, 6]) == 56

# 步骤 4: 参考多种解法
# 解法 1：传统方式
def sum_of_even_squares_v1(numbers)
  sum = 0
  numbers.each do |num|
    if num.even?
      sum += num ** 2
    end
  end
  sum
end

# 解法 2：函数式编程
def sum_of_even_squares_v2(numbers)
  numbers
    .select(&:even?)
    .map { |n| n ** 2 }
    .sum
end

# 解法 3：reduce
def sum_of_even_squares_v3(numbers)
  numbers.reduce(0) { |sum, n| n.even? ? sum + n**2 : sum }
end
```

**练习资源**：
- Exercism Ruby Track
- Codewars (8kyu → 1kyu)
- LeetCode Easy → Medium

---

### 方法三：测试驱动练习 (TDD Practice)

**适用阶段**：第 3 阶段以上

**步骤**：
1. 写一个失败的测试
2. 写最少的代码让测试通过
3. 重构代码
4. 重复

**示例练习**：

**任务**：实现一个 Stack 类

```ruby
# stack_test.rb
require 'minitest/autorun'
require_relative 'stack'

class StackTest < Minitest::Test
  def setup
    @stack = Stack.new
  end

  # 测试 1: 新栈是空的
  def test_new_stack_is_empty
    assert @stack.empty?
  end

  # 测试 2: push 后不为空
  def test_push_makes_stack_not_empty
    @stack.push(1)
    refute @stack.empty?
  end

  # 测试 3: pop 返回最后 push 的元素
  def test_pop_returns_last_pushed_element
    @stack.push(1)
    @stack.push(2)
    assert_equal 2, @stack.pop
  end

  # 继续添加更多测试...
end

# stack.rb - 逐步实现
class Stack
  def initialize
    @items = []
  end

  def empty?
    @items.empty?
  end

  def push(item)
    @items.push(item)
  end

  def pop
    @items.pop
  end

  def peek
    @items.last
  end

  def size
    @items.size
  end
end
```

**TDD 练习项目**：
1. 实现一个 Queue 类
2. 实现一个简单的计算器
3. 实现字符串处理工具
4. 实现一个购物车

---

### 方法四：重构练习 (Refactoring Practice)

**适用阶段**：第 2 阶段以上

**步骤**：
1. 先实现功能(不考虑优雅)
2. 确保测试通过
3. 识别代码异味
4. 逐步重构
5. 每次重构后运行测试

**示例练习**：

```ruby
# 初始版本 - 功能正确但不优雅
def calculate_price(item_type, quantity, is_member)
  if item_type == "book"
    price = 10
    if quantity > 5
      price = price * 0.9
    end
    if is_member
      price = price * 0.95
    end
    return price * quantity
  elsif item_type == "electronics"
    price = 100
    if quantity > 2
      price = price * 0.85
    end
    if is_member
      price = price * 0.95
    end
    return price * quantity
  end
end

# 重构第 1 步：提取魔法数字
PRICES = {
  'book' => 10,
  'electronics' => 100
}

BULK_DISCOUNTS = {
  'book' => { threshold: 5, rate: 0.9 },
  'electronics' => { threshold: 2, rate: 0.85 }
}

MEMBER_DISCOUNT = 0.95

# 重构第 2 步：提取方法
def calculate_price(item_type, quantity, is_member)
  base_price = PRICES[item_type]
  price = apply_bulk_discount(base_price, item_type, quantity)
  price = apply_member_discount(price, is_member)
  price * quantity
end

def apply_bulk_discount(price, item_type, quantity)
  discount = BULK_DISCOUNTS[item_type]
  quantity > discount[:threshold] ? price * discount[:rate] : price
end

def apply_member_discount(price, is_member)
  is_member ? price * MEMBER_DISCOUNT : price
end

# 重构第 3 步：使用面向对象
class PriceCalculator
  def initialize(price_list, discount_rules)
    @price_list = price_list
    @discount_rules = discount_rules
  end

  def calculate(item_type, quantity, customer)
    item = Item.new(item_type, @price_list[item_type])
    discounts = applicable_discounts(item, quantity, customer)
    apply_discounts(item.base_price * quantity, discounts)
  end

  private

  def applicable_discounts(item, quantity, customer)
    [
      BulkDiscount.new(item.type, quantity),
      MemberDiscount.new(customer.member?)
    ].select(&:applicable?)
  end

  def apply_discounts(price, discounts)
    discounts.reduce(price) { |p, d| d.apply(p) }
  end
end
```

**重构练习清单**：
- [ ] 消除重复代码
- [ ] 提取魔法数字为常量
- [ ] 长方法拆分为小方法
- [ ] 提取类
- [ ] 使用设计模式

**推荐练习**：
- 查找 GitHub 上的 "refactoring examples"
- 重构自己的旧代码
- Code Kata (如 Gilded Rose Kata)

---

### 方法五：项目驱动练习 (Project-Based)

**适用阶段**：第 2 阶段以上

**步骤**：
1. 选择/设计一个项目
2. 列出功能需求
3. 设计数据结构和类
4. 分阶段实现
5. 测试和优化
6. 部署(如果是 Web 应用)

**示例：构建一个待办事项应用**

**阶段 1：命令行版本**
```ruby
# todo.rb
class TodoList
  def initialize
    @todos = []
  end

  def add(task)
    @todos << { id: next_id, task: task, done: false }
  end

  def list
    @todos.each do |todo|
      status = todo[:done] ? '[✓]' : '[ ]'
      puts "#{todo[:id]}. #{status} #{todo[:task]}"
    end
  end

  def complete(id)
    todo = find_todo(id)
    todo[:done] = true if todo
  end

  def delete(id)
    @todos.reject! { |todo| todo[:id] == id }
  end

  private

  def next_id
    @todos.empty? ? 1 : @todos.last[:id] + 1
  end

  def find_todo(id)
    @todos.find { |todo| todo[:id] == id }
  end
end

# 使用示例
todo_list = TodoList.new
todo_list.add("学习 Ruby")
todo_list.add("完成练习")
todo_list.list
todo_list.complete(1)
todo_list.list
```

**阶段 2：添加持久化**
```ruby
require 'json'

class TodoList
  def initialize(filename = 'todos.json')
    @filename = filename
    @todos = load_todos
  end

  def save
    File.write(@filename, JSON.pretty_generate(@todos))
  end

  private

  def load_todos
    return [] unless File.exist?(@filename)
    JSON.parse(File.read(@filename), symbolize_names: true)
  end
end
```

**阶段 3：Web 版本 (Sinatra)**
```ruby
require 'sinatra'
require 'json'
require_relative 'todo'

set :todos, TodoList.new

get '/' do
  erb :index
end

get '/api/todos' do
  content_type :json
  settings.todos.all.to_json
end

post '/api/todos' do
  data = JSON.parse(request.body.read)
  settings.todos.add(data['task'])
  settings.todos.save
  status 201
end
```

**项目练习列表**：

**入门级**：
1. 命令行计算器
2. 猜数字游戏
3. 文本分析工具
4. 文件管理器

**中级**：
1. 博客系统 (Sinatra)
2. 任务管理器
3. 简单 CMS
4. API 客户端

**高级**：
1. Twitter 克隆
2. 电商平台
3. 社交网络
4. 实时聊天

---

### 方法六：代码审查练习 (Code Review Practice)

**适用阶段**：第 3 阶段以上

**步骤**：
1. 阅读他人的代码
2. 理解代码逻辑
3. 找出可改进之处
4. 提出建设性意见
5. 学习优秀写法

**示例：审查一段代码**

```ruby
# 待审查代码
class User
  attr_accessor :name, :email, :age

  def initialize(n, e, a)
    @name = n
    @email = e
    @age = a
  end

  def check_age
    if @age >= 18
      return true
    else
      return false
    end
  end

  def send_email(msg)
    # 发送邮件逻辑
    puts "Sending to #{@email}: #{msg}"
  end
end
```

**审查意见**：

1. **命名问题**：
   - 参数 `n`, `e`, `a` 应该用完整名称
   - `check_age` 应该是 `adult?` 或 `of_age?`

2. **代码风格**：
   - `check_age` 方法中不需要显式 `return`
   - 可以简化为一行

3. **职责问题**：
   - `send_email` 可能不应该在 User 类中
   - 违反单一职责原则

4. **安全问题**：
   - email 应该被验证
   - 使用 `attr_accessor` 可能不安全

**改进后的代码**：
```ruby
class User
  attr_reader :name, :email, :age

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  def initialize(name:, email:, age:)
    @name = name
    @email = validate_email(email)
    @age = age
  end

  def adult?
    age >= 18
  end

  private

  def validate_email(email)
    raise ArgumentError, "Invalid email" unless email =~ EMAIL_REGEX
    email
  end
end

class EmailService
  def self.send_to(user, message)
    # 发送邮件逻辑
    puts "Sending to #{user.email}: #{message}"
  end
end
```

**代码审查清单**：
- [ ] 命名是否清晰
- [ ] 是否遵循 Ruby 风格指南
- [ ] 是否有重复代码
- [ ] 是否有潜在 bug
- [ ] 是否有性能问题
- [ ] 是否有安全隐患
- [ ] 测试是否充分
- [ ] 是否可以简化

**推荐资源**：
- Ruby Style Guide: https://rubystyle.guide/
- 参与 GitHub 开源项目的 Code Review
- RuboCop - 自动化代码审查工具

---

### 方法七：教学式学习 (Learning by Teaching)

**适用阶段**：所有阶段

**方式**：

**1. 写技术博客**
```markdown
# 我的第一篇 Ruby 博客：理解 Block、Proc 和 Lambda

## 什么是 Block?
Block 是 Ruby 中的一段代码块...

## 示例代码
[提供清晰的示例]

## 常见陷阱
[分享你踩过的坑]

## 总结
[用简单的语言总结]
```

**2. 制作教程视频/文章**
- 选择一个你刚学会的概念
- 用最简单的方式讲解
- 录制或写下来

**3. 回答问题**
- Stack Overflow
- Ruby China
- Reddit r/ruby

**4. 代码示例讲解**
- 为自己的代码写详细注释
- 解释每个决策的原因

**5. 一对一教学**
- 教朋友或同事
- 参加学习小组

---

## 各阶段具体练习方法

### 第一阶段：基础语法 (0-1 个月)

**每日练习计划**：

**上午 (理论 30min + 实践 60min)**
```
1. 阅读一个知识点 (15min)
2. IRB 中实践该知识点 (15min)
3. 完成 5 道相关练习题 (60min)
```

**下午 (项目 60min + 复习 30min)**
```
1. 做小项目 (60min)
2. 总结和记笔记 (30min)
```

**具体练习**：

**第 1 周：基础数据类型**
```ruby
# 练习 1: 字符串操作
# 任务：编写方法实现以下功能
def reverse_words(sentence)
  # 反转句子中的每个单词,但保持单词顺序
  # "Hello World" => "olleH dlroW"
end

def count_vowels(str)
  # 统计字符串中的元音字母数量
end

def title_case(str)
  # 将字符串转换为标题格式
  # "hello world" => "Hello World"
end

# 练习 2: 数组操作
def find_max(arr)
  # 不使用 max 方法找到最大值
end

def remove_duplicates(arr)
  # 去除数组中的重复元素
end

def find_common(arr1, arr2)
  # 找到两个数组的共同元素
end

# 练习 3: 哈希操作
def merge_hashes(hash1, hash2)
  # 合并两个哈希,相同 key 的值相加
end

def invert_hash(hash)
  # 交换哈希的 key 和 value
end
```

**第 2 周：控制流程**
```ruby
# 练习 1: FizzBuzz
# 1-100,3 的倍数输出 Fizz,5 的倍数输出 Buzz,15 的倍数输出 FizzBuzz

# 练习 2: 素数判断
def prime?(n)
  # 判断是否为素数
end

# 练习 3: 九九乘法表
def multiplication_table
  # 打印九九乘法表
end

# 练习 4: 成绩等级
def grade(score)
  # 90-100: A, 80-89: B, ...
end
```

**第 3-4 周：方法和迭代**
```ruby
# 练习 1: 阶乘
def factorial(n)
  # 计算 n 的阶乘
end

# 练习 2: 斐波那契数列
def fibonacci(n)
  # 返回前 n 个斐波那契数
end

# 练习 3: 字符串处理
def word_frequency(text)
  # 统计每个单词出现的次数
  # "hello world hello" => {"hello" => 2, "world" => 1}
end

# 练习 4: 数组转换
def array_to_hash(arr)
  # [1, 2, 3] => {1 => 1, 2 => 4, 3 => 9}
  # key 是元素,value 是元素的平方
end
```

**月末项目**：
- 猜数字游戏(完整版)
- 学生成绩管理系统
- 简单的文本冒险游戏

---

### 第二阶段：面向对象 (1-2 个月)

**每日练习计划**：
```
1. 学习 OOP 概念 (30min)
2. 设计类和对象 (30min)
3. 实现和测试 (90min)
4. 重构优化 (30min)
```

**练习项目**：

**项目 1: 图书馆管理系统**
```ruby
# 设计以下类:
class Book
  # 属性：title, author, isbn, available
  # 方法：borrow, return
end

class Member
  # 属性：name, member_id, borrowed_books
  # 方法：borrow_book, return_book
end

class Library
  # 属性：books, members
  # 方法：add_book, register_member, find_book
end

# 要求：
# 1. 一个会员最多借 5 本书
# 2. 同一本书不能同时被借出
# 3. 实现搜索功能
# 4. 统计每本书的借阅次数
```

**项目 2: 动物模拟器**
```ruby
# 使用继承和模块
class Animal
  # 基类
end

class Mammal < Animal
  # 哺乳动物
end

class Bird < Animal
  # 鸟类
end

module Swimmable
  def swim
    # 游泳能力
  end
end

module Flyable
  def fly
    # 飞行能力
  end
end

class Duck < Bird
  include Swimmable
  include Flyable
end

# 练习：添加更多动物和能力
```

**项目 3: 银行账户系统**
```ruby
class Account
  # 封装练习
  # 要求：余额不能直接修改,只能通过 deposit 和 withdraw
  # 每次操作记录交易历史
end

class SavingsAccount < Account
  # 储蓄账户：有利息
end

class CheckingAccount < Account
  # 支票账户：可以透支一定额度
end

# 扩展：实现转账功能
```

---

### 第三阶段：进阶特性 (2-3 个月)

**块和迭代器练习**：

```ruby
# 练习 1: 实现自己的 map
class Array
  def my_map
    result = []
    self.each { |item| result << yield(item) }
    result
  end
end

# 练习 2: 实现 select
class Array
  def my_select
    # 你的实现
  end
end

# 练习 3: 实现 reduce
class Array
  def my_reduce(initial = nil)
    # 你的实现
  end
end

# 练习 4: 使用 Proc 和 Lambda
# 创建一个过滤器工厂
def create_filter(type)
  case type
  when :even
    ->(n) { n.even? }
  when :positive
    ->(n) { n > 0 }
  when :large
    ->(n) { n > 100 }
  end
end

numbers = [1, -2, 3, -4, 5]
even_filter = create_filter(:even)
positive_filter = create_filter(:positive)

numbers.select(&even_filter)
numbers.select(&positive_filter)
```

**元编程练习**：

```ruby
# 练习 1: 动态定义方法
class Person
  ATTRIBUTES = [:name, :age, :email]

  ATTRIBUTES.each do |attr|
    define_method(attr) do
      instance_variable_get("@#{attr}")
    end

    define_method("#{attr}=") do |value|
      instance_variable_set("@#{attr}", value)
    end
  end
end

# 练习 2: method_missing
class Config
  def initialize(data = {})
    @data = data
  end

  def method_missing(name, *args)
    # 实现动态属性访问
    # config.database_host 等同于 config.get(:database_host)
  end
end

# 练习 3: 简单的 DSL
class HTMLBuilder
  def initialize
    @html = ""
  end

  def method_missing(tag, *args, &block)
    # 实现 HTML 生成器
    # html.div { html.p "Hello" }
    # => <div><p>Hello</p></div>
  end
end
```

**项目练习**：
1. 实现一个简单的 ORM
2. 创建自己的测试框架
3. 构建配置管理 DSL

---

### 第四阶段：标准库和工具 (3-4 个月)

**文件操作练习**：

```ruby
# 练习 1: 日志分析器
class LogAnalyzer
  def initialize(log_file)
    @log_file = log_file
  end

  def error_count
    # 统计错误数量
  end

  def top_errors(n = 10)
    # 返回最常见的 n 个错误
  end

  def errors_by_hour
    # 按小时统计错误分布
  end
end

# 练习 2: CSV 处理
class SalesReport
  def initialize(csv_file)
    # 读取销售数据
  end

  def total_revenue
    # 总收入
  end

  def top_products(n = 5)
    # 销量前 5 的产品
  end

  def revenue_by_month
    # 按月统计收入
  end
end

# 练习 3: JSON API 客户端
class WeatherClient
  def current_weather(city)
    # 获取当前天气
  end

  def forecast(city, days = 7)
    # 获取未来几天的天气
  end
end
```

**测试练习**：

```ruby
# 为之前的所有项目添加测试

# 示例：测试 TodoList
require 'minitest/autorun'

class TodoListTest < Minitest::Test
  def setup
    @list = TodoList.new
  end

  def test_add_todo
    @list.add("Test task")
    assert_equal 1, @list.size
  end

  def test_complete_todo
    @list.add("Test task")
    @list.complete(1)
    assert @list.todos.first[:done]
  end

  # 更多测试...
end
```

---

### 第五阶段：Web 开发 (4-6 个月)

**Sinatra 练习**：

```ruby
# 练习 1: 简单博客
# 功能：创建、阅读、更新、删除文章

# 练习 2: API 服务
# 实现一个 RESTful API
# GET    /api/posts
# POST   /api/posts
# GET    /api/posts/:id
# PUT    /api/posts/:id
# DELETE /api/posts/:id

# 练习 3: 用户认证
# 实现注册、登录、登出功能

# 练习 4: 文件上传
# 实现图片上传和展示
```

---

### 第六、七阶段：Rails 和高级主题 (6 个月以上)

**Rails 练习项目**：

1. **博客平台**
   - 用户注册/登录
   - 文章 CRUD
   - 评论系统
   - 标签和分类
   - 富文本编辑器
   - 搜索功能

2. **电商网站**
   - 商品管理
   - 购物车
   - 订单处理
   - 支付集成
   - 库存管理

3. **社交网络**
   - 用户关注
   - 动态发布
   - 点赞评论
   - 消息通知
   - 实时聊天

---

## 代码题库推荐

### 按难度分类

**入门级 (8-7 kyu on Codewars)**
- FizzBuzz
- Reverse String
- Sum of Array
- Even or Odd
- String repeat

**初级 (6-5 kyu)**
- Fibonacci
- Palindrome
- Prime Numbers
- Array manipulation
- Hash operations

**中级 (4-3 kyu)**
- Algorithm implementation
- Data structure design
- Complex string processing
- Dynamic programming basics

**高级 (2-1 kyu)**
- Advanced algorithms
- Optimization problems
- Complex design patterns

### 推荐刷题顺序

**第 1 个月**：Codewars 8kyu - 30 题
**第 2 个月**：Codewars 7kyu - 50 题
**第 3 个月**：Codewars 6kyu - 30 题 + Exercism 20 题
**第 4 个月**：LeetCode Easy - 50 题
**第 5-6 个月**：LeetCode Medium - 30 题 + 项目实战

---

## 练习评估标准

### 代码质量检查清单

**功能性**
- [ ] 满足所有需求
- [ ] 通过所有测试
- [ ] 边界情况处理正确
- [ ] 无明显 bug

**可读性**
- [ ] 变量命名清晰
- [ ] 方法名表意明确
- [ ] 代码结构清晰
- [ ] 适当的注释

**Ruby 风格**
- [ ] 遵循 Ruby Style Guide
- [ ] 使用 Ruby 惯用法
- [ ] 合理使用枚举器
- [ ] 代码简洁优雅

**设计**
- [ ] 职责分离
- [ ] DRY 原则
- [ ] SOLID 原则
- [ ] 合理的抽象

**性能**
- [ ] 时间复杂度合理
- [ ] 空间复杂度合理
- [ ] 无明显性能瓶颈

### 自我评分表 (每个练习后填写)

```
练习名称：_______________
完成时间：_______________

评分 (1-5 分):
[ ] 理解问题的速度
[ ] 设计方案的质量
[ ] 实现的流畅度
[ ] 代码的优雅度
[ ] 调试的效率

反思：
- 学到了什么？
- 遇到了什么困难？
- 下次如何改进？
```

---

## 总结

### 练习的核心原则

1. **持续性** > 强度 - 每天 2 小时比周末 10 小时更有效
2. **深度** > 广度 - 精通一个概念比浅尝多个更重要
3. **输出** > 输入 - 写代码比看教程更重要
4. **反馈** > 练习 - 有反馈的练习才能进步
5. **应用** > 记忆 - 用项目巩固知识

### 避免的陷阱

- **教程地狱**：不要只看不练
- **完美主义**：先完成,再完美
- **孤立学习**：加入社区,寻求反馈
- **忽视基础**：高级特性建立在基础之上
- **半途而废**：坚持至少 3 个月

### 下一步

1. 选择适合你当前水平的练习方法
2. 制定每日/每周练习计划
3. 开始第一个练习
4. 记录学习日志
5. 定期复习和调整

**记住：优秀的程序员不是天生的,而是练出来的!**
