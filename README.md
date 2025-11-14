# Ruby 学习项目 💎

完整的 Ruby 学习路线图和练习项目,从零基础到 Web 开发。

## 🎯 项目简介

这是一个系统化的 Ruby 学习项目,包含:
- 📚 完整的学习路线图(7 个阶段)
- 🎓 详细的练习方法指南
- 💻 大量实战练习和项目
- 📝 学习日志模板
- 🚀 快速开始指南

适合人群:
- ✅ 编程零基础的初学者
- ✅ 想学习 Ruby/Rails 的开发者
- ✅ 需要系统化学习路线的自学者

## 📖 文档导航

| 文档 | 说明 | 阅读时间 |
|------|------|---------|
| [QUICK_START.md](QUICK_START.md) | **从这里开始!** 环境搭建和快速入门 | 10 分钟 |
| [RUBY_LEARNING_ROADMAP.md](RUBY_LEARNING_ROADMAP.md) | 完整学习路线图(7 个阶段) | 30 分钟 |
| [PRACTICE_METHODS.md](PRACTICE_METHODS.md) | 7 种练习方法详解 | 20 分钟 |
| [LEARNING_LOG.md](LEARNING_LOG.md) | 学习日志模板 | - |

## 🗺️ 学习路线

```
第一阶段 (2-3周)     第二阶段 (2-3周)     第三阶段 (2-3周)     第四阶段 (2周)
┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│ Ruby 基础   │ -> │  面向对象   │ -> │  进阶特性   │ -> │ 标准库工具  │
│   语法      │    │   编程      │    │ Block/Proc  │    │ File/Gem   │
└─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘
                                                                  |
                                                                  v
第七阶段 (持续)      第六阶段 (4-6周)     第五阶段 (2-3周)
┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│ 高级主题    │ <- │   Rails     │ <- │  Sinatra   │
│  性能优化   │    │   框架      │    │  Web 基础  │
└─────────────┘    └─────────────┘    └─────────────┘
```

**预计总学习时间**: 6-12 个月(每天 2-3 小时)

## 📂 项目结构

```
ruby-study/
│
├── README.md                    # 项目说明(本文件)
├── QUICK_START.md               # 快速开始指南
├── RUBY_LEARNING_ROADMAP.md     # 完整学习路线图
├── PRACTICE_METHODS.md          # 练习方法详解
├── LEARNING_LOG.md              # 学习日志模板
│
└── exercises/                   # 练习文件夹
    │
    ├── 01_basics/               # 第一阶段: Ruby 基础
    │   ├── README.md            # 阶段说明
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
    ├── 06_rails/                # 第六阶段: Rails 框架
    └── 07_advanced_topics/      # 第七阶段: 高级主题
```

## 🚀 快速开始

### 1. 安装 Ruby

**macOS:**
```bash
brew install rbenv ruby-build
rbenv install 3.2.2
rbenv global 3.2.2
```

**Linux:**
```bash
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
rbenv install 3.2.2
rbenv global 3.2.2
```

**Windows:**
下载 [RubyInstaller](https://rubyinstaller.org/)

### 2. 验证安装

```bash
ruby -v
# => ruby 3.2.2 (或更高版本)
```

### 3. 开始学习

```bash
# 阅读快速开始指南
cat QUICK_START.md

# 进入练习文件夹
cd exercises/01_basics

# 开始第一个练习
ruby 01_string_operations.rb
```

## 📚 学习内容

### 第一阶段: Ruby 基础 (2-3 周)
- ✅ 基本语法和数据类型
- ✅ 控制流程(if/loop/each)
- ✅ 方法定义和调用
- 🎯 **项目**: 计算器、猜数字游戏

### 第二阶段: 面向对象 (2-3 周)
- ✅ 类和对象
- ✅ 继承和模块
- ✅ 封装和多态
- 🎯 **项目**: 图书馆管理系统

### 第三阶段: 进阶特性 (2-3 周)
- ✅ Block, Proc, Lambda
- ✅ 枚举和迭代器
- ✅ 异常处理
- ✅ 元编程基础
- 🎯 **项目**: DSL 工具、文本分析器

### 第四阶段: 标准库 (2 周)
- ✅ 文件 I/O 操作
- ✅ Gem 和 Bundler
- ✅ 测试(RSpec/MiniTest)
- 🎯 **项目**: 命令行工具、CSV 分析器

### 第五阶段: Web 基础 (2-3 周)
- ✅ HTTP 协议
- ✅ Sinatra 框架
- ✅ 数据库基础(SQLite)
- ✅ RESTful API
- 🎯 **项目**: 博客、API 服务

### 第六阶段: Rails 框架 (4-6 周)
- ✅ MVC 架构
- ✅ ActiveRecord ORM
- ✅ 路由和控制器
- ✅ 视图和模板
- 🎯 **项目**: 电商网站、社交网络

### 第七阶段: 高级主题 (持续学习)
- ✅ 性能优化
- ✅ 安全最佳实践
- ✅ 设计模式
- ✅ 部署和运维
- 🎯 **项目**: 开源贡献、真实应用

## 🎯 学习目标

完成本项目后,你将能够:

- ✅ 熟练使用 Ruby 语言
- ✅ 理解面向对象编程
- ✅ 使用 Rails 框架开发 Web 应用
- ✅ 编写测试和维护代码
- ✅ 部署应用到生产环境
- ✅ 参与开源项目

## 💡 学习建议

### 每日学习计划(2-3 小时)
- 📖 理论学习: 30-45 分钟
- 💻 代码练习: 60-90 分钟
- 🚀 项目实战: 30-45 分钟
- 📝 总结复习: 15 分钟

### 学习原则
1. **持续性 > 强度** - 每天 2 小时比周末 10 小时更有效
2. **实践 > 理论** - 多写代码,少看教程
3. **项目 > 练习** - 做真实项目最能提升
4. **反馈 > 完美** - 快速迭代,持续改进

## 📈 学习里程碑

- [ ] **第 1 天**: 安装 Ruby 并运行 "Hello World"
- [ ] **第 1 周**: 完成 10 道基础练习
- [ ] **第 1 月**: 完成第一个命令行项目
- [ ] **第 2 月**: 理解 OOP 并完成图书馆系统
- [ ] **第 3 月**: 使用 Sinatra 构建第一个 Web 应用
- [ ] **第 6 月**: 使用 Rails 开发完整应用并部署
- [ ] **第 1 年**: 为开源项目贡献代码

## 🔗 学习资源

### 官方文档
- [Ruby 官方文档](https://ruby-doc.org/)
- [Rails Guides](https://guides.rubyonrails.org/)
- [RubyGems](https://rubygems.org/)

### 在线练习
- [Exercism](https://exercism.org/tracks/ruby) - 强烈推荐!
- [Codewars](https://www.codewars.com/)
- [LeetCode](https://leetcode.com/)

### 社区
- [Ruby China](https://ruby-china.org/) - 中文社区
- [Reddit r/ruby](https://www.reddit.com/r/ruby/)
- [Stack Overflow](https://stackoverflow.com/questions/tagged/ruby)

### 推荐书籍
- 《Eloquent Ruby》 - 提升 Ruby 编程风格
- 《The Well-Grounded Rubyist》 - 全面的 Ruby 指南
- 《Practical Object-Oriented Design in Ruby》 - OOP 设计

## 🤝 如何使用这个项目

1. **Fork 这个仓库** - 创建你自己的副本
2. **按照 QUICK_START.md 开始** - 环境搭建
3. **阅读 RUBY_LEARNING_ROADMAP.md** - 了解完整路线
4. **完成 exercises/ 中的练习** - 动手实践
5. **记录 LEARNING_LOG.md** - 跟踪进度
6. **分享你的学习心得** - 帮助他人

## ❓ 常见问题

**Q: 我完全零基础,能学会吗?**
A: 当然可以! Ruby 语法简洁,非常适合初学者。跟着路线图一步步来。

**Q: 需要多长时间?**
A: 基础 2-3 周,能写程序 1-2 月,掌握 Rails 3-6 月,成为高手需要持续学习。

**Q: 每天需要学多久?**
A: 建议每天 2-3 小时。重要的是**持续性**而非强度。

**Q: 学完能找工作吗?**
A: 掌握到第 6 阶段,完成几个项目,就具备初级 Ruby 开发者的能力了。

更多问题见 [QUICK_START.md](QUICK_START.md)

## 🌟 成功案例

> "我用 3 个月从零基础到能独立开发 Rails 应用!" - 学习者 A

> "这个路线图帮我系统地掌握了 Ruby,现在已经找到工作了!" - 学习者 B

## 📝 贡献

欢迎贡献!

- 🐛 报告 Bug
- 💡 提出改进建议
- ✨ 添加练习题
- 📖 改进文档

## 📄 许可证

MIT License - 自由使用和分享

## 🙏 致谢

感谢 Ruby 社区和所有贡献者!

---

## 🎓 现在就开始!

```bash
# 1. 克隆或 Fork 这个仓库
git clone <your-repo-url>

# 2. 进入项目目录
cd ruby-study

# 3. 阅读快速开始指南
cat QUICK_START.md

# 4. 开始你的 Ruby 之旅!
cd exercises/01_basics
ruby 01_string_operations.rb
```

**记住: 最好的学习方法就是动手写代码!**

祝你学习愉快! 🚀💎

---

有问题或建议? 欢迎提 Issue 或 PR!