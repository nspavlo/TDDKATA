//
//  GreetingSpec.swift
//  TDDKATA
//
//  Created by Jans Pavlovs on 17.04.17.
//  Copyright © 2017. g. Jans Pavlovs. All rights reserved.
//

import Quick
import Nimble

@testable import TDDKATA
class GreetingSpec: QuickSpec {
    override func spec() {
        describe("greeting") {

            context("without name", {
                let sut = Greeting()

                it("creates a greeting by introducing a stand-in") {
                    expect(sut.greet()).to(equal("Hello, my friend."))
                }
            })

            context("given Bob", {
                let sut = Greeting("Bob")

                it("creates a greeting for Bob") {
                    expect(sut.greet()).to(equal("Hello, Bob."))
                }
            })

            context("given JERRY", {
                let sut = Greeting("JERRY")

                it("creates a greeting for JERRY in uppercase") {
                    expect(sut.greet()).to(equal("HELLO JERRY!"))
                }
            })

            context("given two names", {
                let sut = Greeting("Jill", "Jane")

                it("creates a greeting for both names") {
                    expect(sut.greet()).to(equal("Hello, Jill and Jane."))
                }
            })
        }
    }
}
