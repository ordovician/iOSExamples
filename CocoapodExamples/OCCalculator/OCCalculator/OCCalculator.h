//
//  OCCalculator.h
//  OCCalculator
//
//  Created by Erik Engheim on 14/04/15.
//  Copyright (c) 2015 Pexip. All rights reserved.
//

@import Foundation;

@interface OCCalculator : NSObject
@property (nonatomic) int leftOperand;
@property (nonatomic) int rightOperand;
- (int)addOperands;
- (int)substractOperands;
@end
