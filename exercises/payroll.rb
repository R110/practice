require_relative "hourlypay.rb"

class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end

class HourlyEmployee < Employee

  include HourlyPay
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
        hourly_pay
    end
end

class SalariedEmployee < Employee
    def initialize(name, email, salary)
        super(name, email)
        @salary = salary
    end

    def calculate_salary
      @salary #returns the hours worked * hourly_rate
    end
end

class MultiPaymentEmployee < Employee
    def initialize(name, email, salary, hourly_rate, hours_worked)
        super(name, email)
        @salary = salary
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      @hours_worked > 40 ? @salary / 52 +  (@hourly_rate * (40 - @hours_worked)) : @salary / 52 #returns the hours worked * hourly_rate
    end
end

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)

ryan = HourlyEmployee.new('Ryan', 'nacho@example.com', 15, 50)
anthony = HourlyEmployee.new('Anthony', 'nachoman@example.com', 15, 50)
ourEmployees = [josh, nizar, ted, ryan, anthony]

class Payroll
    def initialize(employees)
        @employees = employees
    end

  def pay_employees
      total = @employees.map {|employee| employee.calculate_salary }.reduce{:+} # Should output
      @employees.each{ |employee|
        puts "#{employee.name} : $#{employee.calculate_salary * 0.18}"
        notify_employee(employee)
       }
  end
  def notify_employee(employee)
        puts "Send email to #{employee.email}"
 end
end

pay = Payroll.new(ourEmployees)
pay.pay_employees
