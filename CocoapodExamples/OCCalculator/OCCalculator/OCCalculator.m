//
//  OCCalculator.m
//  OCCalculator
//
//  Created by Erik Engheim on 14/04/15.
//  Copyright (c) 2015 Pexip. All rights reserved.
//

#import "OCCalculator.h"

@implementation OCCalculator

- (int)addOperands {
    return self.leftOperand + self.rightOperand;
}

- (int)substractOperands {
    return self.leftOperand - self.rightOperand;
}

@end
