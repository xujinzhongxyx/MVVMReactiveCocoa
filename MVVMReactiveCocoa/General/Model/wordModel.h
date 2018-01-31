//
//  wordModel.h
//  wordApplication
//
//  Created by zlw on 2017/12/18.
//  Copyright © 2017年 jinzhong xu. All rights reserved.
//

#import "ZLBBaseModel.h"

@interface wordModel : ZLBBaseModel

@property(nonatomic, strong) NSString   *ID;        //单词索引
@property(nonatomic, strong) NSString   *Word;      //单词名称
@property(nonatomic, strong) NSString   *yinbiao;   //单词音标
@property(nonatomic, strong) NSString   *Cnmean;    //单词汉语解释
@property(nonatomic, strong) NSString   *Enmean;    //单词英文解释
@property(nonatomic, strong) NSString   *FS;        //单词复数
@property(nonatomic, strong) NSString   *GQS;       //单词过去式
@property(nonatomic, strong) NSString   *GQFC;      //单词过去分词
@property(nonatomic, strong) NSString   *XZFC;      //单词现在分词
@property(nonatomic, strong) NSString   *Split;     //单词词缀分解
@property(nonatomic, strong) NSString   *Affix;     //单词词缀
@property(nonatomic, strong) NSString   *Lj;        //单词例句
@property(nonatomic, assign) NSInteger  YD;         //已读
@property(nonatomic, assign) NSInteger  SC;         //生词
@property(nonatomic, assign) NSInteger  BX;         //不学
@property(nonatomic, strong) NSString   *DT;        //日期


@end
