extension Array where Element: Equatable {
  /// Returns true iff `self` contains any duplicate elements.
  /// - Complexity: O(n^2) where n == `count`
  public func containsDuplicates() -> Bool {
    return !zip(self, indices.dropFirst()).allSatisfy {
      e, i in !self[i...].contains(e)
    }
  }
}

public struct X {
  public init(y: Int) { self.y = y }
  public var y: Int
}
