# Ruby 学习快速开始指南

## 欢迎! 👋

这是一个完整的 Ruby 学习项目,从零基础到能够开发 Web 应用。

## 第一步: 安装 Ruby

### macOS

```bash
# 使用 Homebrew 安装 rbenv
brew install rbenv ruby-build

# 初始化 rbenv
rbenv init

# 安装 Ruby 最新版本
rbenv install 3.2.2
rbenv global 3.2.2

# 验证安装
ruby -v
```

### Linux (Ubuntu/Debian)

```bash
# 安装依赖
sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev

# 安装 rbenv
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash

# 添加到 PATH
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

# 安装 Ruby
rbenv install 3.2.2
rbenv global 3.2.2
```

### Windows

推荐使用 [RubyInstaller](https://rubyinstaller.org/)

```bash
# 下载并运行安装程序
# 验证安装
ruby -v
```

## 第二步: 配置开发环境

### 推荐编辑器

1. **VS Code** (推荐初学者)
   - 安装 Ruby 扩展
   - 安装 Solargraph (代码提示)

2. **RubyMine** (功能强大但收费)

3. **Vim/Neovim** (适合高级用户)

### VS Code 配置

安装以下扩展:
- Ruby (官方)
- Ruby Solargraph
- Ruby Test Explorer
- endwise (自动补全 end)

## 第三步: 熟悉交互式环境

### IRB (Interactive Ruby)

```bash
# 启动 IRB
irb

# 试试这些命令:
> puts "Hello, Ruby!"
> 1 + 1
> [1, 2, 3].map { |n| n * 2 }
> exit
```

### Pry (更强大的 IRB)

```bash
# 安装 Pry
gem install pry

# 启动 Pry
pry

# Pry 有更好的语法高亮和代码补全
```

## 第四步: 运行第一个程序

### 创建 hello.rb

```ruby
# hello.rb
puts "Hello, Ruby World!"

name = "Ruby 学习者"
puts "欢迎, #{name}!"

# 简单的计算
numbers = [1, 2, 3, 4, 5]
sum = numbers.sum
puts "1 到 5 的和是: #{sum}"
```

### 运行程序

```bash
ruby hello.rb
```

## 第五步: 了解项目结构

```
ruby-study/
├── README.md                    # 项目说明
├── RUBY_LEARNING_ROADMAP.md     # 完整学习路线图
├── PRACTICE_METHODS.md          # 详细练习方法
├── LEARNING_LOG.md              # 学习日志模板
├── QUICK_START.md               # 本文件
│
└── exercises/                   # 练习文件夹
    ├── 01_basics/               # 第一阶段: 基础
    │   ├── README.md
    │   ├── 01_string_operations.rb
    │   ├── 02_array_basics.rb
    │   ├── 03_hash_basics.rb
    │   └── project_01_calculator.rb
    │
    ├── 02_oop/                  # 第二阶段: 面向对象
    │   ├── README.md
    │   └── project_01_library.rb
    │
    ├── 03_advanced/             # 第三阶段: 进阶特性
    ├── 04_stdlib/               # 第四阶段: 标准库
    ├── 05_web/                  # 第五阶段: Web 开发
    ├── 06_rails/                # 第六阶段: Rails
    └── 07_advanced_topics/      # 第七阶段: 高级主题
```

## 第六步: 开始学习!

### 推荐学习路径

1. **阅读路线图** (15 分钟)
   ```bash
   # 阅读完整学习路线
   cat RUBY_LEARNING_ROADMAP.md
   ```

2. **了解练习方法** (15 分钟)
   ```bash
   # 了解如何有效练习
   cat PRACTICE_METHODS.md
   ```

3. **开始第一个练习** (30-60 分钟)
   ```bash
   # 进入基础练习文件夹
   cd exercises/01_basics

   # 阅读说明
   cat README.md

   # 开始第一个练习
   ruby 01_string_operations.rb
   ```

4. **记录学习日志** (5-10 分钟)
   ```bash
   # 每天学习后记录
   # 编辑 LEARNING_LOG.md
   ```

### 每日学习计划

**初学者建议** (每天 2-3 小时):

**第 1 周**:
- Day 1: 环境搭建 + Ruby 基础语法
- Day 2-3: 字符串和数组操作
- Day 4-5: 哈希和控制流程
- Day 6: 方法定义
- Day 7: 复习 + 小项目

**第 2 周**:
- Day 1-3: 面向对象基础
- Day 4-5: 继承和模块
- Day 6-7: 图书馆管理项目

(后续周次见 `RUBY_LEARNING_ROADMAP.md`)

### 时间分配建议

```
每天 2-3 小时的学习时间分配:

09:00-09:30  阅读理论知识
09:30-10:30  跟着示例敲代码
10:30-11:00  休息 + 消化

14:00-15:30  独立完成练习题
15:30-16:00  对比标准答案,重构代码

20:00-20:30  复习笔记
20:30-21:00  记录学习日志,计划明天
```

## 第七步: 加入社区

### 中文社区

- **Ruby China**: https://ruby-china.org/
  - 最活跃的中文 Ruby 社区
  - 可以提问和分享经验

- **知乎 Ruby 话题**: 搜索 "Ruby"
  - 有很多优质问答

### 英文社区

- **Reddit r/ruby**: https://www.reddit.com/r/ruby/
- **Ruby Weekly**: 订阅周报
- **Stack Overflow**: 搜索和提问

### GitHub

- Star 优秀的 Ruby 项目
- 阅读源代码学习
- 尝试提 PR 贡献代码

## 第八步: 在线练习平台

### 推荐平台

1. **Exercism** (https://exercism.org/tracks/ruby)
   - 免费
   - 有导师 Code Review
   - 强烈推荐!

2. **Codewars** (https://www.codewars.com/)
   - 游戏化学习
   - 大量练习题
   - 可以看别人的解法

3. **LeetCode**
   - 算法练习
   - 支持 Ruby

### 注册并开始

```bash
# 1. 访问 Exercism
# 2. 注册账号
# 3. 下载 CLI 工具
# 4. 开始做题

exercism download --exercise=hello-world --track=ruby
```

## 常见问题

### Q: 我完全没有编程基础,能学 Ruby 吗?
**A**: 当然可以! Ruby 语法简洁优雅,非常适合初学者。按照路线图一步步来即可。

### Q: 每天需要学习多久?
**A**: 建议每天 2-3 小时。重要的是**持续性**,而不是一次学很久。

### Q: 多久能学会 Ruby?
**A**:
- 基础语法: 2-3 周
- 能写简单程序: 1-2 个月
- 掌握 Rails 开发: 3-6 个月
- 成为熟练开发者: 1-2 年持续学习

### Q: 需要数学很好吗?
**A**: 不需要高深的数学。基本的算术和逻辑思维足够。

### Q: 遇到问题怎么办?
**A**:
1. 仔细阅读错误信息
2. 搜索引擎 (加上 "ruby" 关键词)
3. 查看官方文档
4. 在社区提问
5. 查看本项目的示例代码

### Q: 练习题太难了怎么办?
**A**:
1. 先跳过,学习后面的内容再回来
2. 查看提示和参考答案
3. 降低难度,从简单的开始
4. 不要灰心,每个人都经历过!

### Q: 学完基础后应该做什么?
**A**:
1. 做更多项目巩固知识
2. 学习 Rails 框架
3. 参与开源项目
4. 尝试找实习或工作

## 学习资源

### 必读书籍

1. **《Ruby 基础教程》** (适合入门)
2. **《Eloquent Ruby》** (提升编程风格)
3. **《Practical Object-Oriented Design in Ruby》** (OOP 设计)

### 在线资源

- Ruby 官方文档: https://ruby-doc.org/
- Ruby Style Guide: https://rubystyle.guide/
- Rails Guides: https://guides.rubyonrails.org/

### 视频教程

- GoRails (https://gorails.com/) - Rails 教程
- The Odin Project (https://www.theodinproject.com/) - 免费全栈课程

## 学习建议

### ✅ 应该做的

- ✅ 每天坚持学习,哪怕只有 30 分钟
- ✅ 动手写代码,不要只看教程
- ✅ 记录学习笔记和心得
- ✅ 多做练习和项目
- ✅ 加入社区,寻求帮助
- ✅ 阅读优秀的代码
- ✅ 犯错误并从中学习

### ❌ 不应该做的

- ❌ 只看教程不写代码 ("教程地狱")
- ❌ 追求完美而不开始
- ❌ 孤立学习,不寻求帮助
- ❌ 跳过基础,直接学高级内容
- ❌ 学习三天打鱼两天晒网
- ❌ 遇到困难就放弃
- ❌ 和别人比较进度

## 激励自己

### 记住这些

> "每个专家都曾是初学者。" - Expert

> "学习编程最好的时间是十年前,其次是现在。"

> "你唯一需要超越的人是昨天的自己。"

### 设定里程碑

- [ ] 第 1 天: 成功运行 "Hello World"
- [ ] 第 1 周: 完成 10 道练习题
- [ ] 第 1 月: 完成第一个小项目
- [ ] 第 2 月: 理解面向对象编程
- [ ] 第 3 月: 构建一个 Web 应用
- [ ] 第 6 月: 部署一个真实应用
- [ ] 第 1 年: 为开源项目贡献代码

## 下一步行动

现在,让我们开始吧!

```bash
# 1. 确保 Ruby 已安装
ruby -v

# 2. 进入练习文件夹
cd exercises/01_basics

# 3. 开始第一个练习
ruby 01_string_operations.rb

# 4. 祝你学习愉快!
```

---

**准备好了吗? 开始你的 Ruby 之旅吧! 🚀**

有问题随时查看文档或在社区提问。记住:持之以恒最重要!

Happy Coding! 💎
