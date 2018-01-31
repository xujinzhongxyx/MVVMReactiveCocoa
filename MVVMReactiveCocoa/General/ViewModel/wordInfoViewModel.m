//
//  wordInfoViewModel.m
//  MVVMReactiveCocoa
//
//  Created by zlw on 2018/1/30.
//  Copyright © 2018年 xujinzhong. All rights reserved.
//

#import "wordInfoViewModel.h"

@interface wordInfoViewModel ()
@property (nonatomic) wordModel *wordInfoModel;
@end

@implementation wordInfoViewModel

- (instancetype)initWithWordInfo:(wordModel *)word{
    self = [self init];
    
    if (self) {
        _wordInfoModel = word;
        [self bindSignals];
    }
    return self;
}

- (void)bindSignals
{
    RACSignal *wordSignal = [RACSignal return :self.wordInfoModel];
    
    self.wordNameSignal = [wordSignal map:^id (wordModel *word) {
        return word.Word;
    }];
    
    self.wordYBSignal = [wordSignal map:^id (wordModel *word) {
        return word.yinbiao;
    }];
}

@end
