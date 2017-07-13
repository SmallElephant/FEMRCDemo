//
//  ViewController.m
//  iOS-MRCDemo
//
//  Created by keso on 2017/7/12.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#import "ViewController.h"
#import "Course.h"
#import "Teacher.h"
#import "Student.h"
#import "TestObject.h"

extern void _objc_autoreleasePoolPrint();

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setUp];
    [self setUp1];
    [self setUp2];
    [self setup3];
    [self setup4];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setUp {
    // 自己生成的兑现自己持有
    Course *course = [[Course alloc] init];
    
    NSLog(@"当前课程对象:%p---引用计数:%ld",course,[course retainCount]);
    
    [course retain];
    
    NSLog(@"当前课程对象:%p---引用计数:%ld",course,[course retainCount]);
    
    
    [course release];
    
    NSLog(@"当前课程对象:%p---引用计数:%ld",course,[course retainCount]);
    
    [course release];
    
//    NSLog(@"最后当前课程对象:%p---引用计数:%lu",course,[course retainCount]);
    
    //        [course release];
    //
    //        [course release];
    

}

// 非自己生成的对象也能自己持有

- (void)setUp1 {
    
    Course *course1 = [Course new];
    
    NSLog(@"持有对象:%p---引用计数:%ld",course1,[course1 retainCount]);
    
    Course *course2 = [course1 retain];
    
    NSLog(@"持有对象:%p---引用计数:%ld",course1,[course1 retainCount]);
    
    [course2 release];
    
    NSLog(@"持有对象:%p---引用计数:%ld",course1,[course1 retainCount]);
    
    id obj = [course1 object];
    
     NSLog(@"autorelease对象:%p---引用计数:%ld",obj,[obj retainCount]);
    
    
   
//    
//    for (NSInteger i=0; i < 1000; i++) {
//        NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
//        // 读取图片
//        [pool dealloc];
//    }
    
//  
//    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
//    
//    [pool autorelease];
    
    
}

- (void)setUp2 {
    
    Teacher *teacher = [[Teacher alloc] init];
    
    Student *student = [[Student alloc] init];
    
    [teacher setStudent:student];
    
    [student setTeacher:teacher];
    
}

- (void)setup3 {
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    id obj = [NSMutableArray array];
    
    [obj autorelease];
    
   
    
    [pool dealloc];
    
//     _objc_autoreleasePoolPrint();
}

- (void)setup4 {
    void *p = 0;
    {
        id obj = [[NSObject alloc] init];
        
        p = [obj retain];
        
        [obj release];
    }
    
//    NSLog(@"转换之后的类型:%@",[(__bridge id)p class]);
    id test = [[NSObject alloc] init];
//    [test ]
    
}

- (void)setup5 {
    
    
}


@end
