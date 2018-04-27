import UIKit
import SnapKit

protocol HomeComponentDelegate: AnyObject {

}

final class HomeComponent: UIView {

    weak var delegate: HomeComponentDelegate?

    private let titleLabel: UILabel = {

        let label = UILabel()
        label.textAlignment = .center
        return label
    }()

    private let containerStackview: UIStackView = {

        let stackview = UIStackView()
        stackview.spacing = 40
        stackview.isLayoutMarginsRelativeArrangement = true
        stackview.layoutMargins = UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30)
        stackview.axis = .vertical
        return stackview
    }()

    init() {
        
        super.init(frame: .zero)
        self.customizeInterface()
    }

    required init?(coder aDecoder: NSCoder) { fatalError("Not implemented") }

    func render(configuration: HomeConfiguration) {
        
        self.titleLabel.attributedText = configuration.title
        print("rendering configuration: \(configuration)")
    }
}

extension HomeComponent {

    private func customizeInterface() {

        self.backgroundColor = .white
        self.addSubviews()
        self.addConstraints()
    }

    private func addSubviews() {

        self.containerStackview.addArrangedSubview(self.titleLabel)
        self.addSubview(self.containerStackview)
    }

    private func addConstraints() {

        self.containerStackview.snp.makeConstraints { make in

            let insets = UIEdgeInsets(top: -30, left: 0, bottom: 0, right: 0)
            make.center.equalToSuperview().inset(insets)
            make.left.right.equalToSuperview()
        }
    }
}
