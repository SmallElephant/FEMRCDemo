//
//  Teacher.m
//  iOS-MRCDemo
//
//  Created by keso on 2017/7/12.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#import "Teacher.h"

@interface Teacher ()

@end

@implementation Teacher

- (void)setStudent:(Student *)stu {
    student = stu;
}

- (void)dealloc {
    NSLog(@"Teacher 释放了");
    [super dealloc];
}


@end
