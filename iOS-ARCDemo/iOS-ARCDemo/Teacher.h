//
//  Teacher.h
//  iOS-MRCDemo
//
//  Created by keso on 2017/7/12.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@interface Teacher : NSObject {
    Student __weak *student;
}


- (void)setStudent:(Student *)stu;

@end
