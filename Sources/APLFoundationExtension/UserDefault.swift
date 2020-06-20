//
//  UserDefaultsValue.swift
//  BPI
//
//  Created by Tino Rachui on 26.01.20.
//  Copyright © 2020 apploft GmbH. All rights reserved.
//

import Foundation

/*
    A property wrapper to ease access on user defaults. The usage is pretty simple
    as shown in the following example:

    // Define a UserDefault backed value
    //
    @UserDefault("MyValue", defaultValue: true)
    static var myValue: Bool

    ...

    myValue = false // value will be written to the UserDefaults
 */
@propertyWrapper
public struct UserDefault<T> {
    let key: String
    let defaultValue: T

    public init(_ key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }

    public var wrappedValue: T {
        get {
            return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
        }

        set {
            if !isObjectStorable(newValue) {
                assertionFailure("""
                    Attempt to store an object in the UserDefaults which cannot be stored.
                    Please have a look at the UserDefaults documentation which objects are
                    storable.
                """)
            }

            UserDefaults.standard.set(newValue, forKey: key)
        }
    }

    private func isObjectStorable(_ object: Any?) -> Bool {
        #if DEBUG
            guard object is NSData ||
                  object is NSString ||
                  object is NSNumber ||
                  object is NSDate ||
                  object is NSArray ||
                  object is NSDictionary else {
                return false
            }
        #endif

        return true
    }
}
