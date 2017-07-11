//
//  main.m
//  MRCDemo
//
//  Created by FlyElephant on 2017/7/11.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Course.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Course *course = [[Course alloc] init];
        
        NSLog(@"当前课程对象:%p---引用计数:%ld",course,[course retainCount]);
        
        [course retain];
        
        NSLog(@"当前课程对象:%p---引用计数:%ld",course,[course retainCount]);

        
        [course release];
        
        NSLog(@"当前课程对象:%p---引用计数:%ld",course,[course retainCount]);
        
        [course release];
        
        NSLog(@"最后当前课程对象:%p---引用计数:%lu",course,[course retainCount]);
        
        [course release];
        
        [course release];
        
    }
    return 0;
}
