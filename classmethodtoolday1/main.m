//
//  main.m
//  classmethodtoolday1
//
//  Created by yh-imac on 2018/9/11.
//  Copyright © 2018年 hselenat. All rights reserved.
//

#import <Foundation/Foundation.h>
//枚举
typedef enum
{
    KIColorBlack,
    KIColorWhite,
    KIColorYellow,
}  IColor;

//1.编写类的声明
@interface Iphone : NSObject
{
@public
    float _model;
    int _cpu;
    double _size;
    IColor _color;
}
//行为

- (void)about;//没有返回值没有参数
+ (NSString *)colorWithNumber :(IColor)number;
@end

//2.编写类的实现
@implementation Iphone
//行为的实现
- (void)about
{
//    NSString *name;
//    switch (_color) {
//        case 0:
//            name = @"黑色";
//            break;
//        case 1:
//            name = @"白色";
//            break;
//        case 2:
//            name = @"黄色";
//            break;
//        default:
//            name = @"默认";
//            break;
//    }
    //    对象方法中可以直接访问属性（成员变量），类方法不可以
    NSString *name = [Iphone colorWithNumber:_color];
    NSLog(@"型号 = %f, cpu = %i, 尺寸 = %f, 颜色 = %@",_model,_cpu,_size,name);
}
//工具方法，根据传入的整数返回对应的字符串
+ (NSString *)colorWithNumber :(IColor)number
{
    NSString *name;
    switch (number) {
        case 0:
            name = @"黑色";
            break;
        case 1:
            name = @"白色";
            break;
        case 2:
            name = @"黄色";
            break;
        default:
            name = @"默认";
            break;
    }
    return name;
}
@end

int main(int argc, const char * argv[]) {
//    创建对象
    Iphone *p = [Iphone new];
    p->_size = 3.5;
    p->_color = KIColorWhite;
    p->_model = 4;
    p->_cpu = 1;
    
    [p about];
    
    return 0;
}
