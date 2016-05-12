
def merge(a, m, b, n)
  i = m + n - 1
  while m > 0 && n > 0
    if a[m - 1] > b[n - 1]
      m -= 1
      a[i] = a[m]
    else
      n -= 1
      a[i] = b[n]
    end
    i -= 1
  end
  a[0..i] = b[0..i] if n > 0
  a
end

a = [4, 0, 0, 0, 0]
merge(a, 1, [1, 2, 3, 5], 4)
p a
p [1, 2, 3, 4, 5]

__END__
Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.

Note:
You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2. The number of elements initialized in nums1 and nums2 are m and n respectively.
