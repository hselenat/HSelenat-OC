//
//  main.m
//  classday1
//
//  Created by yh-imac on 2018/9/11.
//  Copyright © 2018年 hselenat. All rights reserved.
//

#import <Foundation/Foundation.h>
//    c语言中函数分为声明和实现
//   oc中定义一个类也分为声明（@interfacr开始 @end结束 classname为事物名 类名首字母大写 目的是告诉系统这个类有哪些属性和行为）和实现
//    注意：oc类属性时，建议将所有属性的名称前面都加上_
//    类名后面的 ：NSObject是为了让我们的Iphone类具备创建对象的能力
@interface Iphone : NSObject
{
//    注意：默认情况下OC对象中的属性是不能直接访问的
    @public
//    属性受保护
//    只要通过@public让类中的属性公开，以后就可以直接通过一个指向结构体的指针来操作对象中的属性了
    float _model;
    int _cpu;
    double _size;
    int _color;
}
//    行为
@end

//    以@implementation开头 @end结尾，然后中class 对应的地方写上声明时声明的类的名称，必须和声明的类名一模一样
@implementation Iphone
//    行为的实现
@end

int main(int argc, const char * argv[]) {
//    在OC中想要通过一个类来创建对象，必须给类发送一个消息。
//    在OC中只要想要发送消息就先写上  [类名称/对象名称 方法名称]
//    发送什么消息（调用什么方法）可以创建一个对象？ 使用new
    
//    通过一个Iphone类型的指针接收了Iphone对象的地址；
//    如果使用给一个指针保存了某一个对象的地址，那么我们就称这个指针位之为某个类型的对象
//    利用Iphone类型的指针保存了Iphone对象的地址，那么我们就称Iphone类型的指针p之为Iphone对象
    Iphone *p = [Iphone new];
    p->_size = 3.5;
    p->_color = 0;
    p->_model = 4;
    p->_cpu = 1;
//    OC中的类其实本质就是一个结构体，所以p这个指针其实就是指向了一个结构体
    NSLog(@"size = %f, color = %i; model = %f, cpu = %i",p->_size,p->_color,p->_model,p->_cpu);
    return 0;
}








