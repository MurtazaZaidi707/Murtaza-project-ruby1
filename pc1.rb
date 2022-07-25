require 'byebug'

# class for counting
class Sample
  def find_frq
    nums = Array[1, 2, 3, 4, 1, 1, 1, 2, 3, 11, 11, 2, 33]
    is_present = Array.new(12, false)
    value = {}
    (0..12).each do |i|
      next if is_present[i] == true

      temp = i + 1
      count = 1
      (temp..12).each do |j|
        if nums[i] == nums[j]
          is_present[j] = true
          count += 1
        end
      end
      puts "#{nums[i]}:#{count}"
      value[i] = count
      # puts value
    end
  end

  def cal_runsum
    arr = Array[1, 2, 3, 4, 5]
    values = Array[]
    (0..4).each do |i|
      count = 0
      (0..i).each do |j|
        count += arr[j]
      end
      values.push(count)
    end
    puts values
  end
end

object = Sample.new
object.find_frq
