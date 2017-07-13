//
//  Course.m
//  iOS-MRCDemo
//
//  Created by keso on 2017/7/12.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#import "Course.h"



@implementation Course

@synthesize courseName = _courseName;

- (NSString *)courseName {
    return [[_courseName retain] autorelease];
}


- (void)setCourseName:(NSString *)courseName {
    if (courseName != _courseName) {
        [_courseName release];
        _courseName = [courseName retain];
    }
}

- (void)dealloc {
    NSLog(@"Course 被释放了");
    [super dealloc];
}

- (id)object {
    
    NSObject *obj = [[NSObject alloc] init];
    
    [obj autorelease];
    
    return obj;
}



@end
