//
//  wordView.h
//  MVVMReactiveCocoa
//
//  Created by zlw on 2018/1/30.
//  Copyright © 2018年 xujinzhong. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "wordInfoViewModel.h"

@interface wordView : UIView

@property(nonatomic, strong) UITableView *tableView;
@property(nonatomic, strong) UILabel    *wordNameLable;
@property(nonatomic, strong) UILabel    *wordYbLable;

- (void)bindWithViewModel:( wordInfoViewModel*)viewModel;

@end
