//
//  Student.h
//  iOS-MRCDemo
//
//  Created by keso on 2017/7/12.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Teacher;

@interface Student : NSObject {
    Teacher  *teacher;
}


- (void)setTeacher:(Teacher *)tea;

@end
