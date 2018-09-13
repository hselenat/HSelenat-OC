//
//  main.m
//  Student
//
//  Created by yh-imac on 2018/9/13.
//  Copyright © 2018年 hselenat. All rights reserved.
//

//结构体作为对象的属性
#import <Foundation/Foundation.h>

typedef struct {
    int year;
    int month;
    int day;
}Date;

@interface Student : NSObject
{
    @public
    NSString *_name;
    Date _birthday;
}
- (void) say;
@end

@implementation Student
- (void) say
{
    NSLog(@"name = %@; year = %i, month = %i,day = %i",_name,_birthday.year,_birthday.month,_birthday.day);
}
@end

int main(int argc, const char * argv[]) {
    Student *stu = [Student new];
    stu->_name = @"ht";
//    结构体只能在定义的时候初始化
//    系统并不清楚它是数组还是结构体
//    stu->_birthday = (Date){2000,3, 21};
    Date d = {2000,3, 21};
    stu->_birthday = d;
    
    [stu say];
    
    return 0;
}
