//
//  main.m
//  NSStringUse
//
//  Created by yh-imac on 2018/9/13.
//  Copyright © 2018年 hselenat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <string.h>


@interface Iphone : NSObject
//- (char *)loadMessage;
- (NSString *)loadMessage;
@end

@implementation Iphone
//- (char *)loadMessage
- (NSString *)loadMessage
{
    //在C语言字符串前面加上@符号，系统会自动将C语言字符串转换为OC字符串
    //C语言中的字符串不是对象，OC中的字符串是一个对象，所以它就具备了很多功能
    //输出C语言的字符串使用%s，输出OC语言的字符串使用%@。%@专门用于输出对象类型。
    return @"我是谁";
}
@end

int main(int argc, const char * argv[]) {
    Iphone *p = [Iphone new];
    NSLog(@"content = %@", [p loadMessage]);
    
//    创建OC字符串
//    NSString *str = @"ht";
//    stringWithFormat字符串格式化方法
//      NSString *str = [NSString stringWithFormat:@"age = %i, height = %f\n", 30, 1.78];
//      NSLog(@"str = %@", str);
//    字符串长度
//    char name[] = "ht";h t \0
    char name[] = "黄";
//    包含\0
    size_t size =sizeof(name);
    printf("size = %lu\n", size);
//    不包含\0
    size_t length = strlen(name);
    printf("length = %lu\n", length);
//    不包含\0，该方式计算出的是个数，而不是占用的字节
//    NSString *str = @"ht";
    NSString *str = @"黄";
    NSUInteger len = [str length];
    NSLog(@"len = %lu", len);
    return 0;
}
