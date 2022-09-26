extension BinaryInteger {
    func clamp(low: Self, high: Self) -> Self {
        return min(max(self, low), high)
    }
}

print(10.clamp(low: 1, high: 15))

extension Equatable {
    func matches(_ items: [Self]) -> Bool {
        for item in items {
            if item != self {
                return false
            }
        }
        return true
    }
}

print(10.matches([1,2,4]))
print(10.matches([10,10,10]))

extension Comparable {
    func lessThan(_ items: [Self]) -> Bool {
        for item in items {
            if (self > item) {
                return false
            }
        }
        return true
    }
}

print(5.lessThan([6,7,8]))