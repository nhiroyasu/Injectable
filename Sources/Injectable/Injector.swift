import Foundation
import Swinject

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
