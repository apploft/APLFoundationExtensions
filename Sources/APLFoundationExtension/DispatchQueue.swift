// Credits:
// https://github.com/future-challenger/Swift3.0/tree/master/GCD
// MIT License · http://choosealicense.com/licenses/mit/

import Foundation

public extension DispatchQueue {
    
    /// String Array containing the tokens of alread executed threads
    private static var _onceTracker = [String]()

    /// Executes a block of code, associated with a unique token, only once.
    /// The code is thread safe and will only execute the code once even in the presence of multithreaded calls.
    ///
    /// - Parameters:
    ///   - token: A unique reverse DNS style name such as com.vectorform.<name> or a GUID
    ///   - block: Block to execute once
    class func once(token: String, block:() -> Void) {
        objc_sync_enter(self)

		defer { 
			objc_sync_exit(self) 
		}
        
        if _onceTracker.contains(token) {
            return
        }
        
        _onceTracker.append(token)
        block()
    }

}
