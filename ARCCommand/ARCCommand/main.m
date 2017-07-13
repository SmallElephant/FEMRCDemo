//
//  main.m
//  ARCCommand
//
//  Created by keso on 2017/7/12.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#import <Foundation/Foundation.h>

uintptr_t _objc_rootRetainCount(id obj);
void _objc_autoreleasePoolPrint();

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        id __strong obj = [[NSObject alloc] init];
        _objc_autoreleasePoolPrint();
        id __weak o = obj;
        NSLog(@"weak 使用之前：retainCount:%lu",_objc_rootRetainCount(obj));

        NSLog(@"class = %@",[o class]);
        NSLog(@"weak 使用之后：retainCount:%lu",_objc_rootRetainCount(obj));
        _objc_autoreleasePoolPrint();
    }
    return 0;
}
