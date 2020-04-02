//
// Created by apploft on 14.01.19.
// Copyright © 2019 apploft GmbH￼￼
// MIT License · http://choosealicense.com/licenses/mit/ 

import XCTest
import APLFoundationExtension

class URLRequestTest: XCTestCase {
    
    var baconIpsumURL = URL(string: "https://baconipsum.com/api/?callback=?")

    func testParameterForURLRequestWithNoAdditionalParameters() {
        if let baconIpsumURL = baconIpsumURL {
            let request = URLRequest(url: baconIpsumURL)
            XCTAssertEqual(["callback": "?"], request.parameters)
        }
    }
    
    func testParameterForURLRequestWithAdditionalParameters() {
        if let baconIpsumURL = baconIpsumURL {
            var request = URLRequest(url: baconIpsumURL)
            
            // some parameter values
            let organizationName = "apploft"
            let firstName = "Philip"
            let lastName = "Krueck"
            let email = "philip.krueck@apploft.de"

            let postString = "name=\(organizationName)&firstName=\(firstName)&lastName=\(lastName)&email=\(email)"
            request.httpBody = postString.data(using: .utf8)
            print(request.parameters)

            XCTAssertEqual(request.parameters, ["name": organizationName,
                                                "firstName": firstName,
                                                "lastName": lastName,
                                                "email": email,
                                                "callback": "?"])
        }
    }
    
    func checkIfTwoURLRequestsAreEqual() {
        if let baconIpsumURL = baconIpsumURL {
            let request1 = URLRequest(url: baconIpsumURL)
            let request2 = URLRequest(url: baconIpsumURL)
            XCTAssert(request1.isEqual(to: request2))
        }
    }

}
