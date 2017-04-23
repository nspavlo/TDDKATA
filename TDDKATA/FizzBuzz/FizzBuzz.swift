//
//  FizzBuzz.swift
//  TDDKATA
//
//  Created by Jans Pavlovs on 23.04.17.
//  Copyright © 2017. g. Jans Pavlovs. All rights reserved.
//

import Foundation

struct FizzBuzz {

    let range: CountableClosedRange<Int>

    public func run() -> [String] {
        return range.map { check(number: $0) }
    }

    private func check(number: Int) -> String {
        var string = ""
        if (number % 3) == 0 { string += "Fizz" }
        if (number % 5) == 0 { string += "Buzz" }
        return string.isEmpty ? "\(number)" : string
    }
}
