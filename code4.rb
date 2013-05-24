                module Task4
                    def task_4
                      hash = {"test"=>1,proc{}=>[[{:key=>"sss"},{"pass"=>{"a"=> [1,{:bsd => [[],[],[],[],[],[[proc{}] => {[7,1]=>{:rr=>111}}]]}] }}], [1,[:olol, {[1, {:trolo => "r"}] => 1}]]],"zero"=>7,"kuk"=>[{"tr"=>"jxp"},{:lx=>"xp"}]}
                      key = gets.chomp
                      result_test4 = search_by_hash_or_array(hash,key)
                      puts "Значение = "+result_test4.to_s
                    end
                    def search_by_hash_or_array(search_hash, search_key)
                      result = nil
                        if search_hash.is_a?(Hash)
                          search_hash.each_pair do |key,val|
                            if key.to_s == search_key.to_s
                              return val
                            else
                              if key.is_a?(Hash) || key.is_a?(Array)
                                result = search_by_hash_or_array(key, search_key)
                              else
                                result = search_by_hash_or_array(val,search_key)
                              end
                              break if result
                            end
                          end
                        elsif search_hash.is_a?(Array)
                          search_hash.each do |val|
                             result = search_by_hash_or_array(val,search_key)
                             break if result
                          end
                        else
                        end #end if
                      result
                    end #end search_by_hash_or_array

                end #module task4
