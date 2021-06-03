//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Matthias Sehrbrock on 03.06.21.
//

import UIKit

private extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
