//
//  TestObject.m
//  iOS-MRCDemo
//
//  Created by keso on 2017/7/12.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#import "TestObject.h"

@implementation TestObject

- (BOOL)allowsWeakReference {
    return NO;
}

- (BOOL)retainWeakReference {
    return NO;
}

@end
