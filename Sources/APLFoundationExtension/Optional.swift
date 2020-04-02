//
// Created by apploft on 18.12.18.
// Copyright © 2019 apploft GmbH￼￼
// MIT License · http://choosealicense.com/licenses/mit/
//
//  Source: http://www.russbishop.net/improving-optionals

import Foundation

/// A type that is
public protocol _CollectionOrStringish {
    var isEmpty: Bool { get }
}

extension String: _CollectionOrStringish { }
extension Array: _CollectionOrStringish { }
extension Dictionary: _CollectionOrStringish { }
extension Set: _CollectionOrStringish { }

public extension Optional where Wrapped: _CollectionOrStringish {
    /// returns true if there is no wrapped value.
    var isNilOrEmpty: Bool {
        switch self {
        case let .some(value): return value.isEmpty
        default: return true
        }
    }
}

public extension Optional {
    /// Returns value of optional if not nil, otherwise returns the provided default value.
    ///
    /// - Parameter defaultValue: value for wrapped optional if it isn't nil
    /// - Returns: returns value if not nil, otherwise returns value of the passed in parameter
    ///
    /// The method has the same functionality as the '??' nil-coalescing operator bus as a function.
    /// Use this when code is unreadable due to use of many operators
    func value(or defaultValue: Wrapped) -> Wrapped {
        return self ?? defaultValue
    }
}

/// A type that has an empty value representation, as opposed to `nil`.
public protocol EmptyValueRepresentable {
    /// Provide the empty value representation of the conforming type.
    static var emptyValue: Self { get }
    
    /// `true` if `self` is the empty value.
    var isEmpty: Bool { get }
    
    /// `nil` if `self` is the empty value, `self` otherwise.
    /// An appropriate default implementation is provided automatically.
    func nilIfEmpty() -> Self?
}

public extension EmptyValueRepresentable {
    
    /// default implementation of protocol method
    ///
    /// - Returns: nil if empty, otherwise 'self'
    func nilIfEmpty() -> Self? {
        return self.isEmpty ? nil : self
    }
}

extension String: EmptyValueRepresentable {
    /// representation for an empty value for a String
    public static var emptyValue: String { return "" }
}

extension Array: EmptyValueRepresentable {
    /// representation for an empty value for an Array
    public static var emptyValue: [Element] { return [] }
}

extension Dictionary: EmptyValueRepresentable {
    /// representation for an empty value for a Dictionary
    public static var emptyValue: Dictionary<Key, Value> { return [:] }
}

extension Set: EmptyValueRepresentable {
    /// representation for an empty value for a Set
    public static var emptyValue: Set<Element> { return Set() }
}

public extension Optional where Wrapped: EmptyValueRepresentable {

    /// Return empty value or value based on whether or not the value is nil.
    ///
    /// - Returns: empty value if `self == nil`, otherwise the value
    func valueOrEmpty() -> Wrapped {
        switch self {
        case .some(let value):
            return value
        case .none:
            return Wrapped.emptyValue
        }
    }
    
    /// return the empty value or the result of mapping over the value based on whether or not the value is nil
    ///
    /// - Parameter transform: closure expression
    /// - Returns: empty value if `self == nil`, otherwise return the result of mapping `transform` over the value.
    func mapOrEmpty(_ transform: (Wrapped) -> Wrapped) -> Wrapped {
        switch self {
        case .some(let value):
            return transform(value)
        case .none:
            return Wrapped.emptyValue
        }
    }
}
