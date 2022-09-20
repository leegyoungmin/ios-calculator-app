//
//  CalculatorItemQueue.swift
//  Calculator
//
//  Created by SummerCat on 2022/09/20.
//

import Foundation

protocol CalculateItem {
    
}

struct CalculatorItemQueue<T: CalculateItem> {
    var inputStack: [T] = []
    var outputStack: [T] = []
    
    mutating func enqueue(item: T) {
        inputStack.append(item)
    }
}
