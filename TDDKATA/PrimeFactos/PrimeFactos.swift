//
//  PrimeFactos.swift
//  TDDKATA
//
//  Created by Jans Pavlovs on 24.04.17.
//  Copyright © 2017. g. Jans Pavlovs. All rights reserved.
//

import Foundation

struct PrimeFactos {

    let number: Int

    public func generate() -> [Int] {
        var number = self.number
        var primes: [Int] = []
        var candidate = 2
        while number > 1 {
            while number % candidate == 0 {
                primes.append(candidate)
                number /= candidate
            }
            candidate += 1
        }

        return primes
    }
}
