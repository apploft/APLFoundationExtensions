//
// Created by apploft on 18.12.18.
// Copyright © 2019 apploft GmbH￼￼
// MIT License · http://choosealicense.com/licenses/mit/ 

import Foundation

public extension URLSession {
    /// Synchronously load data. Note that this function blocks the calling thread until
    /// the load has completed or timed out.
    /// - Parameter request: the url load request
    /// - Returns: the result of the url request
    func synchronousDataTask(request: URLRequest) -> (Data?, URLResponse?, Error?) {
        var data: Data?, response: URLResponse?, error: Error?
        
        let semaphore = DispatchSemaphore(value: 0)
        
        dataTask(with: request) {
            data = $0
            response = $1
            error = $2
            semaphore.signal()
            }.resume()
        
        semaphore.wait()
        
        return (data, response, error)
    }
}
