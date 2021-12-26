//
//  UITextField+EventPublisher.swift
//  CombineComponents
//
//  Created by Jageloo Yadav on 27/12/21.
//

import Foundation
import UIKit
import Combine

extension UITextField {
    var textChange: AnyPublisher<String, Never> {
        publisher(for: .editingChanged)
            .map { ($0 as? UITextField)?.text ?? "" }
            .eraseToAnyPublisher()
    }
}
