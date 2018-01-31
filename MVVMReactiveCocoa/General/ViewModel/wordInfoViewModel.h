//
//  wordInfoViewModel.h
//  MVVMReactiveCocoa
//
//  Created by zlw on 2018/1/30.
//  Copyright © 2018年 xujinzhong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface wordInfoViewModel : NSObject

@property(nonatomic, strong) RACSignal *wordNameSignal;
@property(nonatomic, strong) RACSignal *wordYBSignal;

- (instancetype)initWithWordInfo:(wordModel *)word;

@end
