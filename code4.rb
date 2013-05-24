                module Task4
                    def search_by_hash_or_array(search_hash, search_key)
                      result = false
                        if search_hash.is_a?(Hash)
                          search_hash.each_pair do |key,val|
                            if key.to_s == search_key.to_s
                              return val
                            else
                              result = search_by_hash_or_array(val,search_key)
                              break if result
                            end
                          end
                        elsif search_hash.is_a?(Array)
                          search_hash.each do |index,val|
                            puts "#{}"
                            if val.to_s == search_key.to_s
                              return val
                            else
                              result = search_by_hash_or_array(val,search_key)
                              break if result
                            end
                          end
                        else
                        end #end if
                      result
                    end #end search_by_hash_or_array

                end #module task4
