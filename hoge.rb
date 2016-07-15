class MyClass
	def my_method(my_arg)
		my_arg * 2
	end
	def hoge(fuga)
		fuga.to_s
	end
end

obj = MyClass.new
print obj.my_method(3)


