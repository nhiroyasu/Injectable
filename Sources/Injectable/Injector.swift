import Foundation
import Swinject

/// DI Injector
///
/// 基本的には `Injector` を用いてDIを実装する
/// ```swift
/// class AppContainer {
///     static func build() -> Container {
///         let container = Container()
///         container.register(Protocol.self) { _ in ProtocolImpl() }
///         return container
///     }
/// }
///
/// extension Injector {
///     static let shared = Injector(container: AppContainer.build())
/// }
/// ```
public class Injector: Injectable {
    
    public let container: Container
    
    public init(container: Container) {
        self.container = container
    }
    
    public func build<T>() -> T {
        self.container.resolve(T.self)!
    }
    
    public func build<T>(_ Type: T.Type) -> T {
        self.container.resolve(T.self)!
    }
    
    public func buildSafe<T>() -> T? {
        self.container.resolve(T.self)
    }
    
    public func buildSafe<T>(_ Type: T.Type) -> T? {
        self.container.resolve(T.self)
    }
}
