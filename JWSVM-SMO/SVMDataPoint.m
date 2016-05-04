//
//  SVMDataPoint.m
//  JWSVM-SMO
//
//  Created by Li Chen wei on 2016/4/28.
//  Copyright © 2016年 Enoch. All rights reserved.
//

#import "SVMDataPoint.h"


@interface SVMDataPoint ()

@property (nonatomic, strong) CWKernelAlgorithm *kernel;

@end

@implementation SVMDataPoint


- (id)initWithX:(NSMutableArray *)x expectations:(NSInteger)y
{
    self = [super init];
    
    if (self) {
        _x = [x mutableCopy];
        _y = y;
        _alpha = 0.0;
        _kernel = [CWKernelAlgorithm new];

    }
    
    return self;
}


- (double)getErrorWithBias:(double)bias points:(NSMutableArray <SVMDataPoint *>*)points kernelType:(KernelType)type
{
    _kernel.kernelAlgorithm = type;
    double valueEi = 0;
    for (SVMDataPoint *point in points) {
      valueEi  =  valueEi + point.y * point.alpha * [_kernel algorithmWithData:_x data2:point.x];
    }

    valueEi = valueEi + bias - _y;
    return valueEi;
}

- (void)updateAlpha:(double)newAlpha
{
    _alpha = newAlpha;
}

@end
