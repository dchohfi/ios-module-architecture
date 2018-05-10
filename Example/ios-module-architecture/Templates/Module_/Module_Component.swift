import UIKit
import ModuleArchitecture

final class Module_Component: UIView, Component {

    init() {

        super.init(frame: .zero)
        self.customizeInterface()
    }

    required init?(coder aDecoder: NSCoder) { fatalError("Not implemented") }
}

extension Module_Component {

    enum Configuration {

        case build(Module_Configuration)
    }

    func render(configuration: Configuration) {

        switch configuration {

        case .build(let configuration):
            print(configuration)
        }
    }
}

extension Module_Component {

    private func customizeInterface() {

        self.defineSubviews()
        self.defineSubviewsConstraints()
    }

    private func defineSubviews() {

    }

    private func defineSubviewsConstraints() {

    }
}
