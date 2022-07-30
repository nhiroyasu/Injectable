import Foundation
import Swinject

public extension Container {
    
    /// Containerに `serviceType` で指定した型の実態を登録する
    ///
    /// ```
    /// container.register(Protocol.self) { injector in ProtocolImpl(injector: injector) }
    /// ```
    ///
    /// - Parameters:
    ///   - serviceType: DI Container に登録するプロトコル
    ///   - factory: 実際に生成させるクラス
    /// - Returns: Same Swinject
    @discardableResult
    func register<Service>(
        _ serviceType: Service.Type,
        factory: @escaping (Injectable) -> Service
    ) -> ServiceEntry<Service> {
        self.register(serviceType, name: nil) { r in
            factory(SwinjectInjector(r))
        }
    }
}
