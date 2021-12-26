//
//  UIButton+EventPublisher.swift
//  CombineComponents
//
//  Created by Jageloo Yadav on 27/12/21.
//

import Foundation
import Combine
import UIKit

extension UIButton {
    var actionPublisher: AnyPublisher<UIButton, Never> {
        publisher(for: .touchUpInside)
            .map { $0 as? UIButton ?? UIButton() }
            .eraseToAnyPublisher()
    }
}
