//
//  main.m
//  methodfunctiondifferenceday1
//
//  Created by yh-imac on 2018/9/12.
//  Copyright © 2018年 hselenat. All rights reserved.
//

#import <Foundation/Foundation.h>

//函数与方法的区别
//1.函数属于整个文件，方法属于某一个类，方法不能离开类
//2.函数可以直接调用，方法必须用对象或者类来调用
//注意： 虽然函数属于整个文件，但是如果把函数写在类的声明中会不识别
//3.不能把函数当作方法来调用，也不能把方法当作函数来调用

//方法的注意点：
//方法可以没有声明只有实现，（编译不会报错，运行也不会报错）
//方法可以只有声明没有实现，（编译不会报错，运行会报错）
//报错如下：
//reason: '+[Person demo]: unrecognized selector sent to class 0x100001140'
//    发送了一条不能识别的消息，在person类中没有+开头的demo方法
// reason: '-[Person test]: unrecognized selector sent to instance 0x10280b3c0'
//    发送了一条不能识别的消息，在person类中没有1开头的test实现

@interface Person : NSObject
- (void)test;
+ (void)demo;
@end

@implementation Person
//- (void)test
//{
//    NSLog(@"test");
//}

+ (void)demo
{
    NSLog(@"demo");
}
@end

//外部/内部函数的声明
extern void sum();
static void minus();
//外部函数
extern void sum()
{
    printf("sum\n");
}
//内部函数
static void minus()
{
    printf("minus\n");
}

int main(int argc, const char * argv[]) {
    sum();
    minus();
//    [Person demo];
    Person *p = [Person new];
    [p test];
    return 0;
}
