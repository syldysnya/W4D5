def first_anagram?(str1, str2)
    poss_str = []
    
    # (0...str1.length).each do |i|
    #     (0...str1.length).each do |i2|
    #         poss_str << str1[i..i2] unless str1[i..i2].empty?
    #         # poss_str << str1[0..i2].reverse
    #         i = 1
    #         str3 = str1.split.rotate(i)
    #         (str1.length - 1).times do 
    #             poss_str << str3[i..i2].join(" ") unless str3[i..i2].empty?
    #             i += 1
    #         end 
    #     end 
    # end 
    poss_str
end 

# first_anagram?("gizmo", "sally")    #=> false
# first_anagram?("elvis", "lives")

def second_anagram?(str1, str2)
    str1.each_char.with_index do |char, i|
        if str2.index(str1[i])
            str2[str2.index(str1[i])] = ""
        end
    end
   str2.empty?
end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")



