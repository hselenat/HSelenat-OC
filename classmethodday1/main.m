//
//  main.m
//  classmethodday1
//
//  Created by yh-imac on 2018/9/11.
//  Copyright © 2018年 hselenat. All rights reserved.
//

#import <Foundation/Foundation.h>

//1.编写类的声明
@interface Iphone : NSObject
{
@public
    float _model;
    int _cpu;
    double _size;
    int _color;
}
//行为

- (void)about;//没有返回值没有参数
- (char*)loadMessage;//有返回值没有参数，读取短信
- (int)signal:(int)number; //有返回值有参数，打电话。
- (int)sendMessageWithNumber:(int)number andContent:(char *)content;//有返回值并且有多个参数，发短信
//没有返回值有参数

//计算器
//-(int)sumWithValue1:(int)value1 WithValue2:(int)value2;
//如果你不想每次使用方法都需要创建对象开辟存储空间
//并且如果改方法中没有使用到属性（成员变量），那么你可以把这个方法定义为类方法
//对象方法用对象调用，类方法用类调用
//如果定义类方法，类方法的写法和对象方法一模一样，除了前面的-号不同以外 \只需要将对象方法的-号换成+号
+(int)sumWithValue1:(int)value1 WithValue2:(int)value2;

+ (void)demo;
@end

//2.编写类的实现
@implementation Iphone
//行为的实现
- (void)about
{
//1.对象方法和类方法可以互相调用
//    对象方法中可以直接调用类方法
//    类方法中间接调用对象方法（不建议使用）
//    类方法可以直接调用其他类方法
//    对象方法中可以直接调用对象方法
    
//2.类方法的应用场景
//    如果方法中没有使用到属性（成员变量），那么能用类方法就用类方法
//    类方法的执行效率比对象方法高
    
//3.类方法一般用于定义工具方法
//    字符串查找，文件操作，数据库操作
    NSLog(@"sum = %i", [Iphone sumWithValue1:40 WithValue2:23]);
//    对象方法中可以直接访问属性（成员变量），类方法不可以
    NSLog(@"型号 = %f, cpu = %i, 尺寸 = %f, 颜色 = %i",_model,_cpu,_size,_color);
}

- (char*)loadMessage
{
    return "我做主哈";
}
- (int)signal:(int)number
{
    NSLog(@"打电话给%i", number);
    return 1;
}
- (int)sendMessageWithNumber:(int)number andContent:(char *)content
{
    NSLog(@"发短信给%i,内容是%s",number,content);
    return 1;
}
//如果声明的是对象方法，那么就必须实现对象方法； 如果声明的是类方法，那么就必须实现类方法
+ (int)sumWithValue1:(int)value1 WithValue2:(int)value2
{
    return value1 + value2;
}
+ (void)demo
{
    NSLog(@"%i", [Iphone sumWithValue1:32 WithValue2:42]);
    NSLog(@"demo");
}
@end

int main(int argc, const char * argv[]) {
    Iphone *p = [Iphone new];
    p->_size = 3.5;
    p->_color = 0;
    p->_model = 4;
    p->_cpu = 1;
    NSLog(@"size = %f, color = %i; model = %f, cpu = %i",p->_size,p->_color,p->_model,p->_cpu);
    [p about];
    char *content = [p loadMessage];
    NSLog(@"content = %s", content);
    [p signal:1310789];
    [p sendMessageWithNumber:1310789 andContent:"happy"];
    [p about];
//    int res = [p sumWithValue1:1 WithValue2:3];
    int res = [Iphone sumWithValue1:91 WithValue2:3];
    NSLog(@"res = %i", res);
    [Iphone demo];
    return 0;
}

void test()
{
//    1.创建一个对象(每当、创建一个对象，就开辟一块存储空间)
//    Iphone *p1 = [Iphone new];
//    2.利用对象调用加法运算方法
//    int res = [p1 sumWithValue1:3 WithValue2:8];
    int res = [Iphone sumWithValue1:10 WithValue2:3];
    NSLog(@"res = %i",res);
}
