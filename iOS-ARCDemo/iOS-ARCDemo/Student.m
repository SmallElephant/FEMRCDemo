//
//  Student.m
//  iOS-MRCDemo
//
//  Created by keso on 2017/7/12.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#import "Student.h"

@interface Student ()

@end

@implementation Student


- (void)setTeacher:(Teacher *)tea {
    teacher = tea;
}

- (void)dealloc {
    NSLog(@"Student 被释放了");
}

@end
