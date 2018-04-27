import Foundation
import UIKit

struct LoginConfiguration {

    private let titleText: String

    let email: String?
    let password: String?

    var title: NSAttributedString {
        
        let attirbutes = [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 40, weight: .light)]
        return NSAttributedString(string: self.titleText, attributes: attirbutes)
    }

    init(title: String, email: String? = nil, password: String? = nil) {

        self.titleText = title
        self.email = email
        self.password = password
    }

    init(title: String, user: User) {

        self.titleText = title
        self.email = user.email
        self.password = user.password
    }
}
