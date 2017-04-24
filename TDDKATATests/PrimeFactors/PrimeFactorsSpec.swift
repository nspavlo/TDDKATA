//
//  PrimeFactorsSpec.swift
//  TDDKATA
//
//  Created by Jans Pavlovs on 24.04.17.
//  Copyright © 2017. g. Jans Pavlovs. All rights reserved.
//

import Quick
import Nimble

@testable import TDDKATA
class PrimeFactorsSpec: QuickSpec {
    override func spec() {
        describe("prime-factors") {

            context("given 1") {
                let sut = PrimeFactos(number: 1)

                it("returns 1") {
                    expect(sut.generate()).to(equal([]))
                }
            }

            context("given 2") {
                let sut = PrimeFactos(number: 2)

                it("returns array of [2]") {
                    expect(sut.generate()).to(equal([2]))
                }
            }

            context("given 3") {
                let sut = PrimeFactos(number: 3)

                it("returns array of [3]") {
                    expect(sut.generate()).to(equal([3]))
                }
            }

            context("given 4") {
                let sut = PrimeFactos(number: 4)

                it("returns array of [2, 2]") {
                    expect(sut.generate()).to(equal([2, 2]))
                }
            }

            context("given 6") {
                let sut = PrimeFactos(number: 6)

                it("returns array of [2, 3]") {
                    expect(sut.generate()).to(equal([2, 3]))
                }
            }

            context("given 8") {
                let sut = PrimeFactos(number: 8)

                it("returns array of [2, 2, 2]") {
                    expect(sut.generate()).to(equal([2, 2, 2]))
                }
            }

            context("given 9") {
                let sut = PrimeFactos(number: 9)

                it("returns array of [3, 3]") {
                    expect(sut.generate()).to(equal([3, 3]))
                }
            }
        }
    }
}
