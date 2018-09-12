//
//  main.m
//  class2day1
//
//  Created by yh-imac on 2018/9/11.
//  Copyright © 2018年 hselenat. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 定义一个人类
事物名称：person
属性：age，height，weight
行为：eat，sleep，walk
 */
@interface Person : NSObject
{
//    属性
    @public
    int _age;
    double _height;
    double _weight;
}
//行为
- (void)eat:(char *)food;
- (void)sleep;
- (void)walk;
+ (void) demo;
@end

@implementation Person
- (void)eat:(char *)food
{
    NSLog(@"吃%s",food);
}
- (void)sleep
{
    NSLog(@"开始睡觉");
}
- (void)walk
{
    NSLog(@"开始跑步");
}
+ (void) demo
{
    NSLog(@"demo");
}
@end
int main(int argc, const char * argv[]) {
//    1.通过类创建对象
//    创建对象的时候返回的地址其实就是类的第0个地址
//    类的第0个属性并不是我们编写的_age，而是一个叫做isa的属性(是系统内部自动帮我们添加的)
//    isa是一个指针，占8个字节
    Person *p =[Person new];
    p->_age = 30;
    p->_height = 1.78;
    p->_weight = 65.0;
    
    NSLog(@"age = %i, height = %f,weight = %f",p->_age,p->_height,p->_weight);
//    NSLog(@"p = %p",p);
//    NSLog(@"&age = %p", &(p->_age));
//    NSLog(@"&height = %p", &(p->_height));
    [p walk];
    [Person demo];
    return 0;
}
