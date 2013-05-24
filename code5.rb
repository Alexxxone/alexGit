
class All
	require "./code1.rb"
	require "./code2.rb"
	require "./code3.rb"
	require "./code4.rb"	
	include Task1
	include Task2
	include Task3
	include Task4

	def initialize()
		case gets.to_i
		when 1
			task_1
		when 2
			task_2
      when 3
        puts "Введите радиус"
        key = gets.chomp.to_i
        task_3(key)
		when 4
			puts "Введите искомый индекс"	
			task_4	
		else
			puts "Ошибка! Введите номер задачи!"
		end
	end

	def task_4
		hash = {:hash2 => {1 => :X},:hash1 => {:a => :Z}}
		key = gets.chomp
		result_test4 = search_by_hash_or_array(hash,key) 
		puts "Значение = "+result_test4.to_s
	end


end #class All






puts "Введите номер задачи для выполнения:

Задача 1)
вы вести в консоли
1)hello
.......
5)hello
6)hello word
7)hello
........
12)hello

Задача 2) 
вывести в консоли
2         1
3         3
4         6
.............
19        171
20     	  190 

задача 3)
нарисовать в консоли круг, и чтоб можно было задавать диаметр

задача 4)
поиск по хешу, по ключу найти результат, хеш береться произвонльный например
some_hash = { :a => :X, :b => :X, :c => [{:array_a => :Z}, {:array_b => :X}]} 
необходимо вывести значение для ключа :array_b
есть метод 
def search_by_hash_or_array(hash, key)

end

result = search_by_hash_or_array(some_hash, :array_b)
=> :X
"

All.new






