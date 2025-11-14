# Ruby 学习路线图

## 目录
- [学习路线概览](#学习路线概览)
- [第一阶段：Ruby 基础](#第一阶段ruby-基础)
- [第二阶段：面向对象编程](#第二阶段面向对象编程)
- [第三阶段：Ruby 进阶特性](#第三阶段ruby-进阶特性)
- [第四阶段：实用工具与标准库](#第四阶段实用工具与标准库)
- [第五阶段：Web 开发基础](#第五阶段web-开发基础)
- [第六阶段：Rails 框架](#第六阶段rails-框架)
- [第七阶段：高级主题与最佳实践](#第七阶段高级主题与最佳实践)
- [练习方法](#练习方法)
- [学习资源](#学习资源)

---

## 学习路线概览

```
第一阶段 (2-3周)     第二阶段 (2-3周)     第三阶段 (2-3周)     第四阶段 (2周)
┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│ Ruby 基础   │ -> │  面向对象   │ -> │  进阶特性   │ -> │ 标准库工具  │
└─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘
                                                                  |
                                                                  v
第七阶段 (持续)      第六阶段 (4-6周)     第五阶段 (2-3周)
┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│ 高级主题    │ <- │   Rails     │ <- │  Web 基础   │
└─────────────┘    └─────────────┘    └─────────────┘
```

---

## 第一阶段：Ruby 基础

### 学习目标
- 掌握 Ruby 基本语法
- 理解数据类型和变量
- 学会控制流程
- 熟悉基本的输入输出

### 知识点

#### 1.1 环境搭建
- 安装 Ruby (推荐使用 rbenv 或 RVM)
- 配置开发环境 (VS Code, RubyMine 等)
- 了解 IRB 和 Pry

#### 1.2 基本语法
- 变量和常量
- 数据类型：Integer, Float, String, Symbol, Boolean, Nil
- 字符串操作和插值
- 数组 (Array) 基础
- 哈希 (Hash) 基础

#### 1.3 控制结构
- 条件语句：if/elsif/else, unless, case/when
- 循环：while, until, for, loop
- 迭代器：each, times, upto, downto

#### 1.4 方法基础
- 定义和调用方法
- 参数和返回值
- 默认参数
- 可变参数

### 练习项目
1. **简单计算器** - 实现四则运算
2. **猜数字游戏** - 随机数生成和用户交互
3. **待办事项列表** - 使用数组管理任务
4. **学生成绩管理** - 使用哈希存储学生信息

---

## 第二阶段：面向对象编程

### 学习目标
- 理解类和对象的概念
- 掌握封装、继承、多态
- 学会使用模块

### 知识点

#### 2.1 类和对象
- 类的定义
- 实例变量和类变量
- 实例方法和类方法
- 初始化方法 (initialize)
- 访问控制：public, private, protected

#### 2.2 继承
- 单继承机制
- super 关键字
- 方法重写 (Override)

#### 2.3 模块 (Module)
- 模块的定义和使用
- 命名空间
- Mixin (混入)
- include vs extend vs prepend

#### 2.4 属性访问器
- attr_reader
- attr_writer
- attr_accessor

### 练习项目
1. **图书馆管理系统** - 书籍、用户、借阅记录类
2. **动物王国模拟器** - 继承层次结构
3. **银行账户系统** - 封装和访问控制
4. **游戏角色系统** - 使用模块混入技能

---

## 第三阶段：Ruby 进阶特性

### 学习目标
- 掌握块、Proc 和 Lambda
- 理解迭代器和枚举
- 学会异常处理
- 了解元编程基础

### 知识点

#### 3.1 块 (Block)、Proc 和 Lambda
- 块的语法和使用
- yield 关键字
- Proc 对象
- Lambda 表达式
- Proc vs Lambda 的区别

#### 3.2 高级迭代器和枚举
- Enumerable 模块
- map, select, reject, find
- reduce/inject
- each_with_index, each_with_object
- lazy 枚举

#### 3.3 异常处理
- begin/rescue/ensure/else
- raise 抛出异常
- 自定义异常类
- retry 和 throw/catch

#### 3.4 元编程入门
- define_method
- method_missing
- send 和 public_send
- class_eval 和 instance_eval

#### 3.5 正则表达式
- 正则表达式语法
- 匹配和替换
- 捕获组

### 练习项目
1. **函数式编程练习** - 使用 map, reduce 处理数据
2. **文本分析工具** - 正则表达式和字符串处理
3. **DSL 小工具** - 元编程创建简单 DSL
4. **日志记录器** - 异常处理和文件操作

---

## 第四阶段:实用工具与标准库

### 学习目标
- 掌握文件和 I/O 操作
- 了解常用标准库
- 学会使用 Gem 包管理
- 理解测试驱动开发

### 知识点

#### 4.1 文件操作
- File 类
- Dir 类
- IO 操作
- CSV 和 JSON 处理

#### 4.2 时间和日期
- Time 类
- Date 和 DateTime 类

#### 4.3 网络编程基础
- Net::HTTP
- URI 解析
- 简单的 HTTP 请求

#### 4.4 Gem 和 Bundler
- 安装和使用 Gem
- Gemfile 和 Bundler
- 创建自己的 Gem

#### 4.5 测试
- MiniTest 基础
- RSpec 入门
- TDD 和 BDD 概念

### 练习项目
1. **文件管理器** - 文件的增删改查
2. **CSV 数据分析工具** - 读取和处理 CSV 文件
3. **天气查询工具** - HTTP 请求获取天气数据
4. **命令行应用** - 使用 Thor 或 Commander gem

---

## 第五阶段：Web 开发基础

### 学习目标
- 理解 HTTP 协议
- 学会使用 Sinatra
- 掌握 HTML/CSS 基础
- 了解数据库操作

### 知识点

#### 5.1 HTTP 协议
- HTTP 方法：GET, POST, PUT, DELETE
- 状态码
- Headers 和 Cookies
- Session

#### 5.2 Sinatra 框架
- 路由定义
- 请求和响应
- 模板引擎 (ERB, Haml)
- 中间件

#### 5.3 数据库基础
- SQL 基础
- SQLite 入门
- ActiveRecord ORM 基础
- CRUD 操作

#### 5.4 前端基础
- HTML 基础
- CSS 基础
- JavaScript 基础

### 练习项目
1. **个人博客** - Sinatra + SQLite
2. **任务管理 Web 应用** - CRUD 操作
3. **简单 API 服务** - JSON API
4. **用户认证系统** - Session 和密码加密

---

## 第六阶段：Rails 框架

### 学习目标
- 掌握 Rails MVC 架构
- 学会使用 Rails 核心组件
- 理解 RESTful 设计
- 掌握数据库迁移和关联

### 知识点

#### 6.1 Rails 基础
- Rails 哲学 (约定优于配置)
- MVC 架构
- Rails 项目结构
- Rails 命令行工具

#### 6.2 ActiveRecord
- 模型定义
- 数据库迁移
- 关联关系：has_many, belongs_to, has_one, has_and_belongs_to_many
- 验证 (Validations)
- 回调 (Callbacks)
- 查询接口

#### 6.3 ActionController
- 控制器基础
- 参数处理
- Filters (before_action, after_action)
- Strong Parameters

#### 6.4 ActionView
- ERB 模板
- Helpers
- Partials
- Layouts

#### 6.5 路由
- RESTful 路由
- 资源路由
- 嵌套路由
- 命名路由

#### 6.6 其他重要组件
- ActionMailer - 发送邮件
- ActiveJob - 后台任务
- ActionCable - WebSocket
- ActiveStorage - 文件上传

### 练习项目
1. **完整博客系统** - 文章、评论、标签
2. **电商网站** - 商品、购物车、订单
3. **社交网络** - 用户关系、动态、点赞
4. **项目管理工具** - 项目、任务、团队协作

---

## 第七阶段：高级主题与最佳实践

### 学习目标
- 掌握性能优化
- 学习安全最佳实践
- 了解部署和运维
- 理解架构设计模式

### 知识点

#### 7.1 性能优化
- 数据库查询优化
- N+1 查询问题
- 缓存策略 (Fragment Caching, Russian Doll Caching)
- 后台任务和异步处理

#### 7.2 安全
- CSRF 保护
- SQL 注入防护
- XSS 防护
- 密码安全
- API 认证 (JWT, OAuth)

#### 7.3 设计模式
- Service Objects
- Decorators (Draper)
- Form Objects
- Query Objects
- Repository Pattern

#### 7.4 测试进阶
- 单元测试
- 集成测试
- 系统测试
- 测试覆盖率
- Factory Bot
- Fixtures vs Factories

#### 7.5 API 开发
- RESTful API 设计
- GraphQL
- API 版本控制
- API 文档 (Swagger)
- 限流和认证

#### 7.6 部署和运维
- Heroku 部署
- Docker 容器化
- CI/CD (GitHub Actions, GitLab CI)
- 日志和监控
- 性能监控 (New Relic, Skylight)

### 练习项目
1. **高性能 API** - 缓存、限流、认证
2. **微服务架构** - 多个 Rails 应用协作
3. **实时聊天应用** - ActionCable 和 WebSocket
4. **开源项目贡献** - 参与真实项目

---

## 练习方法

### 日常练习建议

#### 1. Codewars / Exercism
- 每天完成 2-3 道 Ruby 题目
- 从 8kyu 开始,逐步提升难度
- 学习他人的优秀解法

#### 2. 代码审查
- 阅读优秀的开源项目代码
- 理解 Ruby 社区的最佳实践
- 推荐项目：Devise, Pundit, Sidekiq

#### 3. 实战项目
- 克隆现有应用 (Twitter Clone, Instagram Clone)
- 构建自己的想法
- 参与开源项目

#### 4. 学习方法

**每个知识点的学习流程：**
```
1. 阅读文档/教程 (30%)
   ↓
2. 动手实践示例 (40%)
   ↓
3. 完成相关练习 (20%)
   ↓
4. 总结笔记 (10%)
```

**编程练习的 4 个层次：**
1. **跟着敲** - 完全按照教程代码敲一遍
2. **看着写** - 看着需求文档,自己实现
3. **默写** - 不看任何资料,凭记忆实现
4. **扩展** - 在原有基础上添加新功能

### 具体练习方法

#### 基础阶段练习法
```ruby
# 1. 每日一题 - 基础语法
# 2. 重复练习 - 相同题目写 3 遍,每次优化
# 3. 对比学习 - 同一问题用不同方法解决
```

#### 进阶阶段练习法
```ruby
# 1. TDD 练习 - 先写测试,再写实现
# 2. 重构练习 - 优化已有代码
# 3. Code Review - 互相审查代码
```

#### 项目阶段练习法
```ruby
# 1. MVP 开发 - 最小可行产品
# 2. 迭代开发 - 逐步添加功能
# 3. 性能优化 - 提升应用性能
# 4. 部署上线 - 真实环境运行
```

### 学习时间规划

**每日学习计划 (2-3 小时)：**
- 理论学习：30-45 分钟
- 代码练习：60-90 分钟
- 项目实战：30-45 分钟
- 总结复习：15 分钟

**每周学习计划：**
- 周一至周五：专注当前阶段知识点
- 周六：综合练习和小项目
- 周日：复习本周内容,准备下周

---

## 学习资源

### 书籍推荐
1. **《Programming Ruby (The Pickaxe)》** - Ruby 圣经
2. **《Eloquent Ruby》** - Ruby 编程风格
3. **《The Well-Grounded Rubyist》** - 全面的 Ruby 指南
4. **《Rails Tutorial》(Michael Hartl)** - Rails 入门必读
5. **《Practical Object-Oriented Design in Ruby》(POODR)** - OOP 设计

### 在线资源
- Ruby 官方文档：https://ruby-doc.org/
- Ruby China 社区：https://ruby-china.org/
- Rails Guides：https://guides.rubyonrails.org/
- RubyGems：https://rubygems.org/
- Awesome Ruby：https://awesome-ruby.com/

### 视频课程
- GoRails (https://gorails.com/)
- Drifting Ruby (https://www.driftingruby.com/)
- RailsCasts (http://railscasts.com/) - 经典但部分过时

### 练习平台
- Exercism (https://exercism.org/tracks/ruby)
- Codewars (https://www.codewars.com/)
- LeetCode
- HackerRank

---

## 学习里程碑

### 第 1 个月
- [ ] 完成 Ruby 基础语法学习
- [ ] 完成 50+ Codewars 题目
- [ ] 完成 3 个基础练习项目

### 第 2 个月
- [ ] 掌握面向对象编程
- [ ] 学会使用常用 Gem
- [ ] 完成 1 个中等规模项目

### 第 3 个月
- [ ] 掌握 Sinatra 或 Rails 基础
- [ ] 完成 1 个 Web 应用项目
- [ ] 开始学习测试

### 第 4-6 个月
- [ ] 精通 Rails 框架
- [ ] 完成 2-3 个完整项目
- [ ] 贡献开源项目

### 持续学习
- [ ] 深入高级主题
- [ ] 参与真实项目
- [ ] 分享和教学

---

## 常见问题

### Q: 完全零基础需要多久学会 Ruby?
A: 基础语法 2-3 周,能写简单程序 1-2 个月,掌握 Rails 开发 3-6 个月,成为熟练开发者需要 1-2 年持续练习。

### Q: 需要先学其他编程语言吗?
A: 不需要,Ruby 是非常适合初学者的语言。如果有其他语言基础,学习会更快。

### Q: Ruby 和 Rails 是什么关系?
A: Ruby 是编程语言,Rails 是用 Ruby 编写的 Web 框架。先学 Ruby 基础,再学 Rails。

### Q: 如何保持学习动力?
A: 1) 设定明确目标 2) 做有趣的项目 3) 加入社区交流 4) 记录学习进度 5) 适当休息

---

## 下一步行动

1. 安装 Ruby 开发环境
2. 从 `exercises/01_basics/` 开始第一个练习
3. 加入 Ruby 学习社区
4. 制定个人学习计划
5. 开始你的 Ruby 之旅!

**记住：编程最重要的是动手实践,不要只看不写!**
