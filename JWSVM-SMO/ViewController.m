//
//  ViewController.m
//  JWSVM-SMO
//
//  Created by Li Chen wei on 2015/9/5.
//  Copyright (c) 2015年 Enoch. All rights reserved.
//

#import "ViewController.h"
#import "CWSVM.h"

@interface ViewController ()
{
    CWSVM *obj_SMO;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    inputXAry = [NSMutableArray new];
    inputYAry = [NSMutableArray new];
    obj_SMO = [[CWSVM alloc]init];
    
    
    
    [inputXAry addObjectsFromArray:@[@[@0,@0],@[@2,@2],@[@2,@0],@[@3,@0],@[@4,@0]]];
    [inputYAry addObjectsFromArray:@[@-1,@-1,@1,@1,@1]];
    
    [obj_SMO printW_And_b];
    [obj_SMO startSMO:inputXAry outputYAry:inputYAry cValue:1];
    [obj_SMO printW_And_b];

    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
