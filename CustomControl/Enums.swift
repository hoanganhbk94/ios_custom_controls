//
//  Enums.swift
//  CustomControl
//
//  Created by Hoang Anh on 9/27/17.
//  Copyright © 2017 anh. All rights reserved.
//

import Foundation

enum InvalidInputError: Error {
    case emailEmpty
    case passwordEmpty
    case emailInvalid
    case passwordInvalid
}


enum RatingStatus: Int {
    case veryBad = 0
    case bad
    case good
    case veryGood
    case excellent
}
