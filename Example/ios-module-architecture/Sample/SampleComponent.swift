import UIKit
import ModuleArchitecture

final class SampleComponent: UIView, Component {

    init() {

        super.init(frame: .zero)
        self.customizeInterface()
    }

    required init?(coder aDecoder: NSCoder) { fatalError("Not implemented") }
}

extension SampleComponent {

    enum Configuration {

        case build(SampleConfiguration)
    }

    func render(configuration: Configuration) {

        switch configuration {

        case .build(let configuration):
            print(configuration)
        }
    }
}

extension SampleComponent {

    private func customizeInterface() {

        self.defineSubviews()
        self.defineSubviewsConstraints()
    }

    private func defineSubviews() {

    }

    private func defineSubviewsConstraints() {

    }
}
