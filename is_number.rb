# @param {String} s
# @return {Boolean}
RE = /^[+-]?(?:\d+\.?|\.\d)\d*(?:e[+-]?\d+)?$/
def is_number(s)
    ! (RE !~ s.strip)
end
