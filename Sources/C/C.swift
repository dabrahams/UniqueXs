import A
extension X: Equatable { 
  public static func == (a: X, b: X) -> Bool { true } // Different equality
}

extension Array where Element == X {
   /// - Requires: `!self.containsDuplicates()`
   public func doSomething() { precondition(!self.containsDuplicates()) }
}
