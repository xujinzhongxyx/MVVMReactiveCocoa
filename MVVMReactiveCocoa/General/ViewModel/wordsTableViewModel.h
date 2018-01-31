//
//  wordsTableViewModel.h
//  MVVMReactiveCocoa
//
//  Created by zlw on 2018/1/30.
//  Copyright © 2018年 xujinzhong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface wordsTableViewModel : NSObject
<
UITableViewDelegate,
UITableViewDataSource
>

@property(nonatomic, strong) RACSubject *selectRowSubject;

- (void)requestData:(void(^)(void))completion;


@end
