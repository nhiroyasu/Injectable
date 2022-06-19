import Foundation
import Swinject

public protocol Dependencies {
    func register<T>(_ Type: T.Type, factory: @escaping (Resolver) -> T)
    func registerAsSingleton<T>(_ Type: T.Type, factory: @escaping (Resolver) -> T)
}
