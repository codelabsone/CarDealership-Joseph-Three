# Welcome to MCCM Cars!
# ..........

# Please select an option
# 1)employee login
# 2)customer portal
# .............

# if 1:
#   goto employee portal
#
# if 2:
#   goto customer portal


require_relative 'employee_portal'
require_relative 'customer_portal'

module Main_Menu



  def self.landing_menu
    puts "Main menu".center(80, '*')
    puts "Please select an option by pressing the corresponding number, then 'enter':"
    puts "1) I am an employee"
    puts "2) I am a customer"
    puts "0) I want to exit"

    input = gets.chomp
    text = "PROCESSING".center(80, '-')
      if input == '1'
          employee_portal = Employee_Portal.new #employee_portal.rb
          puts text
          employee_portal.welcome
        elsif input == '2'
          puts text
          Customer_Portal.welcome
          Customer_Portal.input

          #customer_portal.rb
        elsif input == '0'
          puts "Thanks for visiting us today!"
          #exit command
        else
          unknown_command
          landing_menu
      end
    end

    def self.unknown_command
      puts "********************************************************************************"
      puts "I'm sorry, I don't know that command."
      puts "********************************************************************************"
      landing_menu
    end

    def self.reset_input
      landing_menu

      input(database)
    end

end

if __FILE__ == $0
Main_Menu.landing_menu
end
