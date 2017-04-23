//
//  FizzBuzzSpec.swift
//  TDDKATA
//
//  Created by Jans Pavlovs on 23.04.17.
//  Copyright © 2017. g. Jans Pavlovs. All rights reserved.
//

import Quick
import Nimble

@testable import TDDKATA
class FizzBuzzSpec: QuickSpec {
    override func spec() {
        describe("fizz-buzz") {

            context("given multiples of three", {
                let sut = FizzBuzz(range: 3...3)

                it("returns Fizz") {
                    expect(sut.run()).to(equal(["Fizz"]))
                }
            })

            context("given multiples of five ", {
                let sut = FizzBuzz(range: 5...5)

                it("returns Buzz") {
                    expect(sut.run()).to(equal(["Buzz"]))
                }
            })

            context("given numbers which are multiples of both three and five", {
                let sut = FizzBuzz(range: 15...15)

                it("returns FizzBuzz") {
                    expect(sut.run()).to(equal(["FizzBuzz"]))
                }
            })

            context("given numbers which are not multiples of three or five", {
                let sut = FizzBuzz(range: 1...1)

                it("returns number") {
                    expect(sut.run()).to(equal(["1"]))
                }
            })

            context("given range from 1 to five", {
                let sut = FizzBuzz(range: 1...5)
                let sequence = sut.run();

                it("returns sequence of numbers including Fizz and Buzz") {
                    expect(sequence[0]).to(equal("1"))
                    expect(sequence[1]).to(equal("2"))
                    expect(sequence[2]).to(equal("Fizz"))
                    expect(sequence[3]).to(equal("4"))
                    expect(sequence[4]).to(equal("Buzz"))
                }
            })
        }
    }
}
