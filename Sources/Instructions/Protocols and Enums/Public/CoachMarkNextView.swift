//
//  CoachMarkNextView.swift
//  Instructions
//
//  Created by Bhagwat Singh on 20/12/23.
//  Copyright © 2023 Ephread. All rights reserved.
//

import Foundation

import UIKit

public protocol CoachMarkNextView: AnyObject {
    var nextControl: UIControl? { get }
    var asView: UIView? { get }
}

public extension CoachMarkNextView {
    var nextControl: UIControl? {
        return nil
    }
}

public extension CoachMarkNextView where Self: UIView {
    var asView: UIView? {
        return self
    }
}
