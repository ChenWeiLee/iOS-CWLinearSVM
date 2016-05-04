//
//  ViewController.m
//  JWSVM-SMO
//
//  Created by Li Chen wei on 2015/9/5.
//  Copyright (c) 2015年 Enoch. All rights reserved.
//

#import "ViewController.h"
#import "JWSMO_Object.h"
#import "CWSMO.h"

@interface ViewController ()
{
    JWSMO_Object *obj_SMO;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    inputXAry = [NSMutableArray new];
    inputYAry = [NSMutableArray new];
 
    [inputXAry addObjectsFromArray:@[@[@0,@5],@[@0,@0],@[@2,@2],@[@2,@0],@[@3,@0]]];
    [inputYAry addObjectsFromArray:@[@-1,@-1,@-1,@1,@1]];

//    [inputXAry addObjectsFromArray:@[@[@1,@0],@[@3,@2],@[@3,@0],@[@4,@0]]];
//    [inputYAry addObjectsFromArray:@[@-1,@-1,@1,@1]];
    
    CWSMO *smo = [[CWSMO alloc] initWithKernelMethod:KernelTypeLinear sigmaValue:1 maxIterations:1000 relaxation:1];
    [smo startTrain:inputXAry aryYi:inputYAry];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
