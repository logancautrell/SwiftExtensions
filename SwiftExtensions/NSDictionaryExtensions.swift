//
//  NSDictionaryExtensions.swift
//  SwiftExtensions
//
//  Copyright © 2021 Sentera. All rights reserved.
//

import Foundation

extension NSDictionary {

    static func + (lhs: NSDictionary, rhs: NSDictionary) -> NSDictionary {
        let dictionary = NSMutableDictionary()
        for (key, value) in lhs {
            if let key = key as? NSCopying {
                dictionary[key] = value
            }
        }

        for (key, rightValue) in rhs {
            if let key = key as? NSCopying {
                if let leftValue = lhs[key] {
                    switch (leftValue, rightValue) {
                    case let (leftDictionary, rightDictionary) as (NSDictionary, NSDictionary):
                        dictionary[key] = leftDictionary + rightDictionary
                    case let (leftArray, rightArray) as (NSArray, NSArray):
                        dictionary[key] = leftArray.adding(rightArray)
                    default:
                        dictionary[key] = rightValue
                    }
                } else {
                    dictionary[key] = rightValue
                }
            }
        }
        return dictionary
    }
}
