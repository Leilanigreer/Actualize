# Create a method in the Manager class called give_all_raises that loops through each of the manager’s employees and gives them a raise (using the give_annual_raise method). Demonstrate how it works.

# Create a method in the Manager class called fire_all_employees that loops through each of the manager’s employees and changes their active status to false.


class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee1.print_info
employee2.print_info

class Manager < Employee
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

# Loop through the managers employees and give each a raise. 
  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end

  def fire_all_employees
    puts "We are doing layoffs"
    # pp @emmployee
    # pp @employees[0]
    # pp @employees[1]
    @employees.each do |employee|
    employee.active = false
    end
  end
end

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_report
manager.give_all_raises

# pp employee1.give_annual_raise
employee1.print_info
employee2.print_info


# Write a method in the manager class that prints "We are doing layoffs"
manager.fire_all_employees
# Write a method that gets the managers employees

# Write a method that gets the first employee

# Write a method that gets the second emplyee
# Write a method that changes the status of all the employees to false
