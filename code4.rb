
def search_by_hash_or_array(hash, key)
	@hash = hash
	@key = key
	hash.to_h.each do |key,value|
		case value
			when Symbol
				if key == @key
					return value
				else
				end
			when String
				puts "String"
			when Hash
				puts "hash"
			when Array
				value.each do |key,value|
					if key[@key]!=nil
						return key[@key]
					else
					end
				end
			else
			puts "else"
		end
	end
end
hash = { :a => :X, :b => :X, :c => [{:array_a => :Z}, {:array_b => :val_arr_b}]} 
key=:array_b
puts search_by_hash_or_array(hash,key)

