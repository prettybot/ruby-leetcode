# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  temp_hash = {}

  nums.each_with_index do |num, i|
    diff = target - num
    if temp_hash.key?(diff)
      return [temp_hash[diff], i]
    end

    temp_hash[num] = i
  end
end
