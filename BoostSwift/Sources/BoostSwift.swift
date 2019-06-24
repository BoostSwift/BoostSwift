//
//  BoostSwift.swift
//  BoostSwift
//
//  Created by Xin Wang on 12/6/2018.
//  Copyright © 2018-2019 Codingsoft. All rights reserved.
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
    var bs: BoostSwift<Self> {
        return BoostSwift(self)
    }
}
