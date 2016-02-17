//
//  main.m
//  NSDateDemo
//
//  Created by shanghaikedu on 15/12/17.
//  Copyright © 2015年 Langmuir. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        /**
         *  获取当前的时间
         */
        NSDate * date = [NSDate date];
        NSLog(@"date = %@",date);
        
        /**
         *  时间格式
         */
        
        NSDateFormatter * df = [[NSDateFormatter alloc] init];
        df.dateFormat = @"yyyy-MM-dd HH:mm:ss";
        df.timeZone = [NSTimeZone timeZoneWithName:@"Asia/Harbin"];
//        df.dateStyle = NSDateFormatterFullStyle;
//        df.timeStyle = NSDateFormatterFullStyle;
        NSTimeZone * zone = [df timeZone];
        NSLog(@"%@",zone);
        
        /**
         *  时区
         */
        NSArray * timeZoneArr = [NSTimeZone knownTimeZoneNames];
        NSLog(@"%@",timeZoneArr);
        
        NSString * currentDate = [df stringFromDate:date];
        NSLog(@"currentDate = %@",currentDate);
        
    }
    return 0;
}
