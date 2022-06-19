import Foundation

public protocol Injectable {
    func build<T>() -> T
    func build<T>(_ Type: T.Type) -> T
    func buildSafe<T>() -> T?
    func buildSafe<T>(_ Type: T.Type) -> T?
}
