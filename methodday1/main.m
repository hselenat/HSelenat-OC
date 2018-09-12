//
//  main.m
//  methodday1
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
//OC中的行为和C语言中的函数一样，都是用来保存一段特定功能的代码
//OC中定义一个方法，分为声明和实现
//编写OC语言函数的规律：1:确定函数名称 2.确定形参 3.确定返回值 4.确定返回值类型
//C语言中定义函数分为两种：内部函数和外部函数
//OC中的方法分为两种：类方法和对象方法
//OC中的类方法用+表示，OC中的对象方法用-表示

//void about()
//{
//    printf("model = cpu = size = color")
//}

//注意： OC中的方法，如果没有形参不需要写（），而直接写一个；
//因为OC方法中的（）有特殊的用途，OC方法中的（）是用来括住数据类型的

/*
 C语言的函数
 没有返回值没有参数
 没有返回值有参数
 有返回值没有参数
 有返回值没参数
 */
- (void)about;//没有返回值没有参数
- (char*)loadMessage;//有返回值没有参数，读取短信
- (int)signal:(int)number; //有返回值有参数，打电话。
//    注意：OC中的方法如果有参数，那么每个参数的数据类型前面必须加上 冒号：
//    当前这个有参数的方法它的方法名称是 signal：
//    冒号： 也是方法的一部分
//有返回值并且有多个参数，发短信
//下面这个方法的名称是 sendMessage::
//- (int)sendMessage:(int)number :(char *)content;
//为了提高阅读下，OC方法允许我们给每个参数添加一个标签来说明当前参数的含义
//标签也是方法名的一部分
//方法名是 sendMessageWithNumber:andContent:
- (int)sendMessageWithNumber:(int)number andContent:(char *)content;
//没有返回值有参数
@end

//2.编写类的实现
@implementation Iphone
//行为的实现
- (void)about
{
//    如果在对象方法中向访问该对象的属性，可以直接写上 _属性名即可
    NSLog(@"型号 = %f, cpu = %i, 尺寸 = %f, 颜色 = %i",_model,_cpu,_size,_color);
}

- (char*)loadMessage
{
//    char *content="我做主";
//    return content;
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

@end

int main(int argc, const char * argv[]) {
//通过类创建对象
    Iphone *p = [Iphone new];
//    修改对象的属性
    p->_size = 3.5;
    p->_color = 0;
    p->_model = 4;
    p->_cpu = 1;
//    获取对象的属性
    NSLog(@"size = %f, color = %i; model = %f, cpu = %i",p->_size,p->_color,p->_model,p->_cpu);
//    如果给对象发消息（如果调用对象的方法）  [类名称/对象名称 方法名称]
    [p about];
//    [对象名称 消息名称（方法名称）]
//    注意OC中的NSLog对C语言的字符串支持不是很好，如果返回的是c语言的字符串可能是乱码或者什么都没有输出
    char *content = [p loadMessage];
    NSLog(@"content = %s", content);
    
    [p signal:1310789];
    [p sendMessageWithNumber:1310789 andContent:"happy"];
    return 0;
}
