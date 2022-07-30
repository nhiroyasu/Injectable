import Foundation
import Swinject

/// SwinjectのResolverをInjectableで利用できるようにラップしたもの
///
/// `Container.register()` で factory を指定する際に利用できる
public class SwinjectInjector: Injectable {
    
    private let resolver: Resolver
    
    init(_ resolver: Resolver) {
        self.resolver = resolver
    }
    
    public func build<T>() -> T {
        resolver.resolve(T.self)!
    }
    
    public func build<T>(_ Type: T.Type) -> T {
        resolver.resolve(T.self)!
    }
    
    public func buildSafe<T>() -> T? {
        resolver.resolve(T.self)
    }
    
    public func buildSafe<T>(_ Type: T.Type) -> T? {
        resolver.resolve(T.self)
    }
}
