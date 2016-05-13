# @param {Integer[]} nums
# @return {Integer}
def find_min(a)
    l, r = 0, a.length - 1
    while r - l > 1 && a[l] > a[r]
        m = l + (r - l) / 2
        if a[m] > a[l]
            l = m + 1
        else
            r = m
        end
    end
    a[l] < a[r] ? a[l] : a[r]
end

p find_min [4, 5, 6, 7, 1, 2, 3]
p find_min [1]
p find_min [2, 1]
p find_min [3, 1, 2]
p find_min [3, 4, 1, 2]
p find_min [1, 2, 3, 4]

