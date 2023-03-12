# Injectable

Dependencies Injection Library extended [Swinject](https://github.com/Swinject/Swinject).

# Usage
Code in which the service class depends on the repository can be written as follows.

```swift
import Injectable

final class Service {
    private let repostiory: Repository

    init(injector: Injectable) {
        repostiory = injector.build()
    }
}
```

Instances injected by the injector must be registered with the DI container.

```swift
import Swinject
import Injectable

let container = Container()
container.register(Repository.self) { injector in Repository(injector: inejctor) }

let injector = Injector(container: container)

let service = Service(injector: injector)
```
