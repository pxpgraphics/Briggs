//
//  Idiom.swift
//  Briggs
//
//  Copyright (c) 2016 Ada Turner (https://github.com/auswahlaxiom)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions://  
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.//  
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import UIKit

/**
 `AdaptiveAttribute` correlating to `UITraitCollection.init(userInterfaceIdiom idiom: UIUserInterfaceIdiom)`
 */
public enum Idiom: AdaptiveAttribute {

    /// Corelates to `UITraitCollection(userInterfaceIdiom: .Phone)`
    case Phone
    /// Corelates to `UITraitCollection(userInterfaceIdiom: .Pad)`
    case Pad
    /// Corelates to `UITraitCollection(userInterfaceIdiom: .TV)`
    case TV
    /// Corelates to `UITraitCollection(userInterfaceIdiom: .CarPlay)`
    case CarPlay

    /**
     Creates `UITraitCollection` with correlating `UIUserInterfaceIdiom`

     - returns: New `UITraitCollection` with correlating `userInterfaceIdiom`
     */
    public func generateTraitCollection() -> UITraitCollection {
        switch self {
        case .Phone: return UITraitCollection(userInterfaceIdiom: .Phone)
        case .Pad: return UITraitCollection(userInterfaceIdiom: .Pad)
        case .TV: return UITraitCollection(userInterfaceIdiom: .TV)
        case .CarPlay: return UITraitCollection(userInterfaceIdiom: .CarPlay)
        }
    }
}
