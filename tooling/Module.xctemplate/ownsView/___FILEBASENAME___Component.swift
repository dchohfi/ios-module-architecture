import UIKit
import ModuleArchitecture

final class ___VARIABLE_productName___Component: UIView, Component {

    init() {

        super.init(frame: .zero)
        self.customizeInterface()
    }

    required init?(coder aDecoder: NSCoder) { fatalError("Not implemented") }
}

extension ___VARIABLE_productName___Component {

    enum Configuration {

        case build(___VARIABLE_productName___Configuration)
    }

    func render(configuration: Configuration) {

        switch configuration {

        case .build(let configuration):
            print(configuration)
        }
    }
}

extension ___VARIABLE_productName___Component {

    private func customizeInterface() {

        self.defineSubviews()
        self.defineSubviewsConstraints()
    }

    private func defineSubviews() {

    }

    private func defineSubviewsConstraints() {

    }
}
