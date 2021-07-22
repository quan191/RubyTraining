class Employee 
	def initialize name, job, id
		@name = name
		@job = job
		@id = id
	end
	def salary_caculate hours
		return hours * 3000
	end
	def getInfo 
		puts "Name" + @name + ", Job : " + @job +", EmployeeId :" + @id 
	end
end

class Dev < Employee
	@@ot_caculate
	def salary_caculate hours
		return hours * 3000 * 1.15 + @@ot_caculate
	end
	def requestOt hours 
		@@ot_caculate = hours * 3000 * 1.5
	end

end
class QA < Employee
	@@ot_caculate
	def salary_caculate hours
		return hours * 3000 * 1.1 + @@ot_caculate
	end
	def requestOt hours 
		@@ot_caculate = hours * 3000 * 1.5
	end
end

$h=Hash.new

def insert_employee()
	puts "nhap ten nhan vien"
	name = gets.chomp()
	puts "nhap vi tri nhan vien"
	job = gets.chomp()
	puts "nhap ma nhan vien"
	id = gets.chomp()
	if $h.has_key?(id) 
		puts "nhan vien da co trong danh sach"
	else
		if job == "Dev" 
			newEmployee = Dev.new name, job, id
		elif job =="QA"
			newEmployee = QA.new name, job, id 
		else 
			newEmployee = Employee.new name, job, id 
		end	
		$h[id] = newEmployee
	end

end

def show_info()
	$h.each do |key , value|
		value.getInfo
	end
end

def caculate_salary()
	puts "nhap id nhan vien "
	id = gets.chomp()
	if !$h.has_key?(id)
		puts "khong co nhan vien nay"
	else 
		puts "nhap so gio lam cua nhan vien nay"
		hours = gets.chomp().to_f
		value = $h[id]
		print "nhan vien" + value.getInfo
		puts value.salary_caculate(hours)

	end

end



while true
	puts "Them thong tin nhan vien"
	puts "Hien thi thong tin nhan vien"
	puts "Lay ra ma nhan vien co luong > 5000"
	puts "moi nhap lua chon cua ban"
	i=gets.chomp().to_i
	case i 
	when 1
		insert_employee()
	when 2 
		show_info()
	when 3
		caculate_salary()
	else 
		break;
	end

end