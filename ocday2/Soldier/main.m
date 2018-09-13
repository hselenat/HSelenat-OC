//
//  main.m
//  Soldier
//
//  Created by yh-imac on 2018/9/13.
//  Copyright © 2018年 hselenat. All rights reserved.
//

//对象作为方法参数传递，连续传递
//#pragma mark 使用
//对象作为返回值

#import <Foundation/Foundation.h>

#pragma mark - 弹夹
@interface Clip : NSObject
{
    @public
//    子弹
    int _bullet;
}
//上子弹的方法
- (void)addBullet;
@end

@implementation Clip
- (void)addBullet
{
//    上子弹
    _bullet= 10;
}
@end

#pragma mark - 枪
@interface Gun : NSObject
{
//    弹夹
    Clip *clip;
}
- (void)shoot;
//想要射击必须传递一个弹夹
- (void)shoot:(Clip *)c;
@end

@implementation Gun
- (void)shoot
{
//    判断有没有子弹
//    if(_bullet > 0) {
//        _bullet -= 1;
//        NSLog(@"打了一枪 %i",_bullet);
//    }else {
//        NSLog(@"没有子弹了");
//    }
}
- (void)shoot:(Clip *)c
{
//    判断有没有弹夹
    if(c != nil) {
//        判断有没有子弹
        if(c->_bullet > 0) {
            c->_bullet -= 1;
            NSLog(@"打了一枪 %i",c->_bullet);
        }else {
            NSLog(@"没有子弹了");
        }
        
        
    }else{
        NSLog(@"没有弹夹，请换弹夹");
    }
}
@end

#pragma mark - 士兵
@interface Soldier : NSObject
{
    @public
    NSString *_name;
    double _height;
    double _weight;
}
//开火
- (void)fire:(Gun *)gun;
//开火，给士兵一把枪和一个弹夹
- (void)fire:(Gun *)gun clip:(Clip *)clip;
@end

@implementation Soldier
- (void)fire:(Gun *)gun
{
//    [gun shoot];
}
- (void)fire:(Gun *)gun clip:(Clip *)clip
{
//    判断是否有枪和弹夹
    if(gun !=nil && clip != nil ){
//        把弹夹给枪
        [gun shoot:clip];
    }
}
@end

@interface Shop : NSObject
+ (Gun *)buyGun:(int)money;
+ (Clip *)buyClip:(int)money;
@end

@implementation Shop
//当一个方法中没有用到属性（成员变量）的时候，可以定义为类方法。
+ (Gun *)buyGun:(int)money
{
//    对象作为返回值
//    通过new创建出来的对象存储在堆中[堆中的数据不会自动释放],因此返回局部变量也可以。
    Gun *gun = [Gun new];
    return gun;
}
+ (Clip *)buyClip:(int)money
{
    Clip *clip = [Clip new];
    [clip addBullet];
    return clip;
}
@end

#pragma mark - 程序入口
int main(int argc, const char * argv[]) {
//    1.创建士兵
    Soldier *sp = [Soldier new];
    sp->_name = @"ht";
    sp->_height = 1.78;
    sp->_weight = 60.0;
    
    
//    2.创建枪
//    Gun *gp = [Gun new];
//    创建店铺
//    Shop *shop = [Shop new];
//    2.买枪（对象方法）
//    Gun *gp = [shop buyGun:999];
//    2.买枪（类方法）
    Gun *gp = [Shop buyGun:999];
    
//    3.创建弹夹
//    Clip *clip = [Clip new];
//    [clip addBullet];
//    3.买弹夹（对象方法）
//    Clip *clip = [shop buyClip:100];
//    3.买弹夹（类方法）
    Clip *clip = [Shop buyClip:100];
    
//    4.开枪
//    让对象作为方法的参数传递，gp指针地址
//    弹夹给士兵
    [sp fire:gp clip:clip];
    return 0;
}
