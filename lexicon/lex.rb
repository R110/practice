class Lexiconomitron
  def eat_t(str)
    str.chars.delete_if{|a| a == "t" || a == "T"}.join
  end
  def shazam(arr)
    newarr = arr.dup
    newarr.map!{|word| eat_t(word.reverse) }.slice!(1..-2)
    newarr
  end
  def oompa_loompa(arr)
    arr.map{|word| eat_t(word) }.select{|word| word.length <= 3}
  end
end
