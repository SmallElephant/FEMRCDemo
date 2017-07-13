//
//  MyObject.m
//  iOS-ARCDemo
//
//  Created by keso on 2017/7/12.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#import "MyObject.h"

@interface MyObject() {
    NSInteger count;
}

@end

@implementation MyObject


- (BOOL)retainWeakReference {
    if (++count > 3) {
        return NO;
    }
    return [super retainWeakReference];
}

@end
