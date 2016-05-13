# @param {Integer[]} nums
# @return {Integer}
def find_min(a)
    l, r = 0, a.length - 1
    while r - l > 1 && a[l] >= a[r]
        m = l + (r - l) / 2
        if a[m] == a[l]
            l += 1
        elsif a[m] > a[l]
            l = m + 1
        else
            r = m
        end
    end
    a[l] < a[r] ? a[l] : a[r]
end

__END__
In worse case, the complexity may be O(n)
