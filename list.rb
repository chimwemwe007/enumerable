class MyList
    def initialize(*list)
        @list = list
    end
    def each(&arg)
        @list.each { |n| arg.call(n) }
    end
end
list = MyList.new(1, 2, 3, 4)
puts (list.all? {|e| e < 5})
puts (list.all? {|e| e > 5})
puts (list.any? {|e| e == 2})
puts (list.any? {|e| e == 5})
puts (list.filter {|e| e.even?})
