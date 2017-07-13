//
//  ViewController.m
//  iOS-ARCDemo
//
//  Created by keso on 2017/7/12.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#import "ViewController.h"
#import "Teacher.h"
#import "Student.h"
#import "TestObject.h"
#import "MyObject.h"

uintptr_t _objc_rootRetainCount(id obj);

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setup];
    [self setup1];
    [self setup2];
    [self setup3];
    [self setup6];
    [self setup7];
    [self setup8];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setup {
    
    Teacher *teacher = [[Teacher alloc] init];
    
    Student *student = [[Student alloc] init];
    
    [teacher setStudent:student];
    
    [student setTeacher:teacher];
    
}

- (void)setup1 {
    
    
    id __weak obj1 = nil;
    
    {
        id obj0 = [[NSObject alloc] init];
        
        obj1 = obj0;
        
        NSLog(@"对象Obj0:%@----Obj1:%@",obj0,obj1);
    }
    
    NSLog(@"对象Obj1:%@",obj1);
    
}

- (void)setup2 {
    
    
    
    id __unsafe_unretained obj1 = nil;
    
    {
        id obj0 = [[NSObject alloc] init];
        
        obj1 = obj0;
        
        NSLog(@"对象Obj0:%@----Obj1:%@",obj0,obj1);
    }
    
//    NSLog(@"__unsafe_unretained对象Obj1:%@",obj1);
    
}

- (void)setup3 {
    id obj0 = [[NSObject alloc] init];
    
    id __weak obj1 = obj0;
    
    NSLog(@"Class对象:%@",[obj1 class]);
    
    {
        id obj0 = [[NSObject alloc] init];
        
        id __weak obj1 = obj0;
        
        id __autoreleasing tmp = obj1;
        
        NSLog(@"Class对象:%@",[tmp class]);
    }
    
//    NSError __strong *error = nil;
//    
//    [self handleError:&error];
    
    
    NSError __strong *error = nil;
    
    id __autoreleasing tmp = error;
    
    [self handleError:&tmp];

    
}

- (void)setup4 {
    
    @autoreleasepool {
//        id obj = [[NSObject alloc] init];
    }
}

- (void)setup5 {
//    id obj = [[NSObject alloc] init];
//    id __weak obj1 = obj;
    
//    id obj1;
//    objc_initWeak(&obj1,obj);
}

- (void)setup6 {
    
//    id __weak obj = [[TestObject alloc] init];
    
    id obj = [[NSObject alloc] init];
    id __weak test = obj;
    NSLog(@"1-----%@",test);
    NSLog(@"2-----%@",test);
    NSLog(@"3-----%@",test);
    NSLog(@"4-----%@",test);
    NSLog(@"5-----%@",test);
}

- (void)setup7 {
    
    id obj = [[MyObject alloc] init];
    id __weak test = obj;
    NSLog(@"MyObject:1-----%@",test);
    NSLog(@"MyObject:2-----%@",test);
    NSLog(@"MyObject:3-----%@",test);
    NSLog(@"MyObject:4-----%@",test);
    NSLog(@"MyObject:5-----%@",test);
}

- (void)setup8 {
//    id __strong obj = [[NSObject alloc] init];
//    
//    id __weak o = obj;
//    
//    uintptr_t value = _objc_rootRetainCount(obj);
// 
//    NSLog(@"引用计数:%lu",value);
    
    id __strong obj = [[NSObject alloc] init];
    @autoreleasepool {
        id __autoreleasing o = obj;
        NSLog(@"autoreleasepool内引用计数:%lu",_objc_rootRetainCount(o));
    }
    NSLog(@"autoreleasepool外引用计数:%lu",_objc_rootRetainCount(obj));
}


//- (void)handleError:(NSError **)error {
//    
//}

- (void)handleError:(NSError * __autoreleasing *)error {
    
}


@end
