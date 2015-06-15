//
//  ViewControllerSpec.swift
//  SimpleProject
//
//  Created by Aleksander Popko on 24.05.2015.
//  Copyright (c) 2015 AP. All rights reserved.
//

import Nimble
import Quick

class ViewControllerSpec: QuickSpec {
    
    override func spec() {
        
        let mockNumberFirst = 5;
        let mockNumberSecond = 3;
        let mockSum = mockNumberFirst + mockNumberSecond + 3
        
        
        var sut: ViewController!
        
        beforeEach {
            sut = ViewController()
        }
        
        afterEach {
            sut = nil
        }
        
        it("should return proper sum") {
            expect(sut.sumOfTwoNumbers(mockNumberFirst, secondNumber: mockNumberSecond)).to(equal(mockSum))
        }
    }
}
