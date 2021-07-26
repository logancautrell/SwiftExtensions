//
//  OperationQueueExtensions.swift
//  SwiftExtensions
//
//  Created by Logan Cautrell on 7/9/19.
//  Copyright © 2019 Sentera. All rights reserved.
//

import Foundation

public struct OperationQueueContext {
    public let queue: OperationQueue
    public let dispatchQueue: DispatchQueue
}

public extension OperationQueue {
    static let senteraUtilityQueue = DispatchQueue(label: "senteraUtilityQueue", qos: .utility)
    static func serialQueue(with name: String, qos: DispatchQoS.QoSClass = .default) -> OperationQueue {
        let queue = OperationQueue()
        queue.maxConcurrentOperationCount = 1
        queue.qualityOfService = .default
        switch qos {
        case .utility:
            queue.underlyingQueue = senteraUtilityQueue
        default:
            queue.underlyingQueue = DispatchQueue.global(qos: qos)
        }
        queue.name = "\(name)_OperationQueue"
        return queue
    }

    static func serialQueueContext(with name: String, qos: DispatchQoS = .default) -> OperationQueueContext {
        let queue = OperationQueue()
        queue.name = "\(name)_OperationQueue"
        queue.maxConcurrentOperationCount = 1
        queue.qualityOfService = .default

        let dispatchQueue = DispatchQueue(label: name, qos: qos)
        queue.underlyingQueue = dispatchQueue

        return OperationQueueContext(queue: queue, dispatchQueue: dispatchQueue)
    }
}
