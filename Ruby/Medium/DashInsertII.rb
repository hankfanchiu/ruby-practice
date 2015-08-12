# Have the function DashInsertII(str) insert dashes ('-') between each two odd numbers
# and insert asterisks ('*') between each two even numbers in str.

# For example: if str is 4546793 the output should be 454*67-9-3.
# Don't count zero as an odd or even number.

def DashInsertII(num)

  arr = num.to_s.split(//)
  answer = Array.new
  
  arr.each_with_index do |n, i|
    answer << n
    
    # For non-zeros:
    if n.to_i != 0 && arr[i + 1].to_i != 0
      
      # Insert '-' between two odd numbers.
      if n.to_i.odd? && arr[i + 1].to_i.odd?
        answer << '-'
        
      # Insert '*' between two even numbers.
      elsif n.to_i.even? && arr[i + 1].to_i.even?
        answer << '*'
      end
    end
  end
  
  return answer.join       
end
