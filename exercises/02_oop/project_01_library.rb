# 项目 01: 图书馆管理系统

# 要求:
# 1. Book 类 - 管理书籍信息
# 2. Member 类 - 管理会员信息
# 3. Library 类 - 管理图书馆运营
# 4. 实现借书、还书、搜索等功能
# 5. 添加适当的错误处理

# ============= Book 类 =============
class Book
  attr_reader :isbn, :title, :author, :available

  def initialize(isbn, title, author)
    @isbn = isbn
    @title = title
    @author = author
    @available = true
    @borrow_count = 0
  end

  # 借出书籍
  def borrow
    # 实现借书逻辑
    # 如果已借出,返回 false
    # 否则设置为不可用,借阅次数加1,返回 true
  end

  # 归还书籍
  def return_book
    # 实现还书逻辑
  end

  # 获取借阅次数
  def borrow_count
    @borrow_count
  end

  # 书籍信息
  def to_s
    status = @available ? "可借" : "已借出"
    "《#{@title}》 - #{@author} [#{@isbn}] (#{status})"
  end
end

# ============= Member 类 =============
class Member
  attr_reader :member_id, :name, :borrowed_books

  MAX_BORROW_LIMIT = 5

  def initialize(member_id, name)
    @member_id = member_id
    @name = name
    @borrowed_books = []
  end

  # 借书
  def borrow_book(book)
    # 实现借书逻辑
    # 检查是否达到借阅上限
    # 检查书籍是否可借
    # 将书籍添加到借阅列表
  end

  # 还书
  def return_book(book)
    # 实现还书逻辑
    # 从借阅列表中移除书籍
  end

  # 是否可以继续借书
  def can_borrow?
    @borrowed_books.size < MAX_BORROW_LIMIT
  end

  # 显示借阅的书籍
  def show_borrowed_books
    if @borrowed_books.empty?
      puts "#{@name} 当前没有借阅任何书籍"
    else
      puts "\n#{@name} 的借阅列表:"
      @borrowed_books.each_with_index do |book, index|
        puts "#{index + 1}. #{book.title}"
      end
    end
  end

  def to_s
    "会员: #{@name} (ID: #{@member_id}) - 已借: #{@borrowed_books.size}/#{MAX_BORROW_LIMIT}"
  end
end

# ============= Library 类 =============
class Library
  def initialize(name)
    @name = name
    @books = []
    @members = []
  end

  # 添加书籍
  def add_book(book)
    # 实现添加书籍
    # 检查 ISBN 是否已存在
  end

  # 注册会员
  def register_member(member)
    # 实现注册会员
    # 检查会员 ID 是否已存在
  end

  # 查找书籍(按标题)
  def find_books_by_title(title)
    # 实现按标题搜索
    # 返回匹配的书籍数组(支持模糊搜索)
  end

  # 查找书籍(按作者)
  def find_books_by_author(author)
    # 实现按作者搜索
  end

  # 查找书籍(按 ISBN)
  def find_book_by_isbn(isbn)
    # 实现按 ISBN 精确搜索
  end

  # 查找会员
  def find_member(member_id)
    # 实现查找会员
  end

  # 借书
  def lend_book(member_id, isbn)
    # 实现借书流程
    # 1. 查找会员
    # 2. 查找书籍
    # 3. 执行借书操作
    # 4. 提供适当的错误信息
  end

  # 还书
  def return_book(member_id, isbn)
    # 实现还书流程
  end

  # 显示所有书籍
  def list_all_books
    if @books.empty?
      puts "图书馆暂无书籍"
    else
      puts "\n=== #{@name} 馆藏书籍 ==="
      @books.each_with_index do |book, index|
        puts "#{index + 1}. #{book}"
      end
    end
  end

  # 显示可借书籍
  def list_available_books
    available = @books.select(&:available)
    if available.empty?
      puts "暂无可借书籍"
    else
      puts "\n=== 可借书籍 ==="
      available.each_with_index do |book, index|
        puts "#{index + 1}. #{book}"
      end
    end
  end

  # 显示所有会员
  def list_all_members
    if @members.empty?
      puts "暂无注册会员"
    else
      puts "\n=== 注册会员 ==="
      @members.each_with_index do |member, index|
        puts "#{index + 1}. #{member}"
      end
    end
  end

  # 显示热门书籍(按借阅次数排序)
  def popular_books(limit = 5)
    # 实现显示最受欢迎的书籍
  end

  # 图书馆统计信息
  def statistics
    total_books = @books.size
    available_books = @books.count(&:available)
    borrowed_books = total_books - available_books
    total_members = @members.size

    puts "\n" + "=" * 40
    puts "#{@name} 统计信息"
    puts "=" * 40
    puts "总藏书: #{total_books}"
    puts "可借书籍: #{available_books}"
    puts "已借出: #{borrowed_books}"
    puts "注册会员: #{total_members}"
    puts "=" * 40
  end
end

# ============= 使用示例 =============
if __FILE__ == $0
  # 创建图书馆
  library = Library.new("市中心图书馆")

  # 添加书籍
  library.add_book(Book.new("978-0-13-468599-1", "Eloquent Ruby", "Russ Olsen"))
  library.add_book(Book.new("978-0-13-404328-9", "The Well-Grounded Rubyist", "David A. Black"))
  library.add_book(Book.new("978-0-321-72130-3", "The Ruby Programming Language", "David Flanagan"))
  library.add_book(Book.new("978-0-13-449650-3", "Practical Object-Oriented Design", "Sandi Metz"))

  # 注册会员
  library.register_member(Member.new("M001", "张三"))
  library.register_member(Member.new("M002", "李四"))

  # 显示信息
  library.statistics
  library.list_all_books
  library.list_all_members

  # 借书
  puts "\n--- 借书操作 ---"
  library.lend_book("M001", "978-0-13-468599-1")
  library.lend_book("M001", "978-0-13-404328-9")

  # 显示会员借阅情况
  member = library.find_member("M001")
  member.show_borrowed_books if member

  # 还书
  puts "\n--- 还书操作 ---"
  library.return_book("M001", "978-0-13-468599-1")

  # 更新后的统计
  library.statistics

  # 搜索功能
  puts "\n--- 搜索功能 ---"
  puts "搜索标题包含 'Ruby' 的书籍:"
  results = library.find_books_by_title("Ruby")
  results.each { |book| puts "  - #{book.title}" } if results

  # 取消下面的注释来测试你的实现
  # library.list_available_books
  # library.popular_books(3)
end

# ============= 扩展挑战 =============
# 完成基本功能后,尝试添加:
# 1. 书籍分类(小说、技术、历史等)
# 2. 借阅期限和逾期处理
# 3. 预约功能(书籍被借出时可以预约)
# 4. 会员等级(普通会员、VIP 等,不同借阅上限)
# 5. 罚金系统
# 6. 数据持久化(保存到文件)
