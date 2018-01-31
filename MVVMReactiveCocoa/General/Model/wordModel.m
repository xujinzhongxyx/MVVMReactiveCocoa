//
//  wordModel.m
//  wordApplication
//
//  Created by zlw on 2017/12/18.
//  Copyright © 2017年 jinzhong xu. All rights reserved.
//

#import "wordModel.h"

@implementation wordModel

+(NSDictionary *)mj_replacedKeyFromPropertyName
{
    return @{
             @"ID":@"ID",           //单词索引
             @"Word":@"Word",       //单词名称
             @"yinbiao":@"yinbiao", //单词音标
             @"Cnmean":@"Cnmean",   //单词汉语解释
             @"Enmean":@"Enmean",   //单词英文解释
             @"FS":@"FS",           //单词复数
             @"GQS":@"GQS",         //单词过去式
             @"GQFC":@"GQFC",       //单词过去分词
             @"XZFC":@"XZFC",       //单词现在分词
             @"Split":@"Split",     //单词词缀分解
             @"Affix":@"Affix",     //单词词缀
             @"Lj":@"Lj",           //单词例句
             @"YD":@"YD",           //已读
             @"SC":@"SC",           //生词
             @"BX":@"BX",           //不学
             @"DT":@"DT",           //日期
             };
}
    
MJExtensionLogAllProperties

@end
