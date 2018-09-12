//
//  main.m
//  ocday1
//
//  Created by yh-imac on 2018/9/10.
//  Copyright © 2018年 hselenat. All rights reserved.
//
//c语言只有一个工具箱（函数库）
#include <stdio.h>
//oc里有多个工具箱； foundation.h主头文件；
#import <Foundation/foundation.h>

//import 的功能和 include一样，是将右边的文件拷贝到当前import的位置。
//# import会防止重复拷贝
//#import "当前文件开始找"
//#import <现在编译器里面找，再在系统开始找>
#import "zs.h"
int main(int argc, const char * argv[]) {
    //    1.OC兼容C
    //    接收c的参数的字符串
    printf("C hello world\n");
    printf("C hello world");
    printf("C hello world");
    //    NSLog会自动换行，输出时会附加一些系统信息。接收oc的参数的字符串
    NSLog(@"OC hello world");
    NSLog(@"OC hello world");
    NSLog(@"OC hello world");
    NSLog(@"sum = %i", sum(10, 20));
    return 0;
}
