# 项目 01: 简单计算器

# 要求:
# 1. 支持加、减、乘、除四则运算
# 2. 支持连续运算
# 3. 错误处理(除以零等)
# 4. 用户友好的界面

class Calculator
  def initialize
    @history = []
  end

  # 加法
  def add(a, b)
    # 实现加法
  end

  # 减法
  def subtract(a, b)
    # 实现减法
  end

  # 乘法
  def multiply(a, b)
    # 实现乘法
  end

  # 除法
  def divide(a, b)
    # 实现除法,处理除以零的情况
  end

  # 保存历史记录
  def save_history(operation, result)
    @history << "#{operation} = #{result}"
  end

  # 显示历史记录
  def show_history
    if @history.empty?
      puts "没有历史记录"
    else
      puts "\n--- 计算历史 ---"
      @history.each_with_index do |record, index|
        puts "#{index + 1}. #{record}"
      end
      puts "---------------\n"
    end
  end

  # 清除历史
  def clear_history
    @history = []
    puts "历史记录已清除"
  end

  # 运行计算器
  def run
    puts "=" * 40
    puts "欢迎使用 Ruby 计算器!"
    puts "=" * 40

    loop do
      show_menu
      choice = gets.chomp

      case choice
      when '1'
        perform_calculation
      when '2'
        show_history
      when '3'
        clear_history
      when '4'
        puts "感谢使用,再见!"
        break
      else
        puts "无效选择,请重试"
      end
    end
  end

  private

  def show_menu
    puts "\n请选择操作:"
    puts "1. 计算"
    puts "2. 查看历史"
    puts "3. 清除历史"
    puts "4. 退出"
    print "你的选择: "
  end

  def perform_calculation
    print "请输入第一个数字: "
    num1 = gets.chomp.to_f

    print "请输入运算符 (+, -, *, /): "
    operator = gets.chomp

    print "请输入第二个数字: "
    num2 = gets.chomp.to_f

    result = case operator
             when '+' then add(num1, num2)
             when '-' then subtract(num1, num2)
             when '*' then multiply(num1, num2)
             when '/' then divide(num1, num2)
             else
               puts "无效的运算符"
               return
             end

    if result
      puts "\n结果: #{num1} #{operator} #{num2} = #{result}"
      save_history("#{num1} #{operator} #{num2}", result)
    end
  end
end

# 运行计算器
if __FILE__ == $0
  calculator = Calculator.new
  # 取消下面的注释来运行计算器
  # calculator.run

  # 或者直接测试方法:
  # calc = Calculator.new
  # puts calc.add(5, 3)        # 应该输出 8
  # puts calc.subtract(10, 4)  # 应该输出 6
  # puts calc.multiply(3, 7)   # 应该输出 21
  # puts calc.divide(15, 3)    # 应该输出 5
  # puts calc.divide(10, 0)    # 应该处理错误
end
