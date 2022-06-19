import Foundation
import Swinject

public extension Container {
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