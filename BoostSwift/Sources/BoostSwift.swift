//
//  BoostSwift.swift
//  BoostSwift
//
//  Created by Xinus Wang on 12/6/2018.
//  Copyright (c) 2018 Xinus Wang. All rights reserved.
//

public final class BoostSwift<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

/**
 A type that has BoostSwift extensions.
 */
public protocol BoostSwiftCompatible {
    associatedtype CompatibleType
    var bs: CompatibleType { get }
}

public extension BoostSwiftCompatible {
    public var bs: BoostSwift<Self> {
        return BoostSwift(self)
    }
}
