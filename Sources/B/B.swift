import A
extension X: Equatable { 
  public static func == (a: X, b: X) -> Bool { a.y == b.y }
}
/// Some Xs with no duplicate values, per equality as defined here.
public let uniqueXs: [X] = [X(y: 0), X(y: 1)]
