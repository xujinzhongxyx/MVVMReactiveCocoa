//
//  wordView.m
//  MVVMReactiveCocoa
//
//  Created by zlw on 2018/1/30.
//  Copyright © 2018年 xujinzhong. All rights reserved.
//

#import "wordView.h"

@implementation wordView

-(UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
        _tableView.layer.borderWidth = 1.f;
        [self addSubview:_tableView];
        
        [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(self).offset(-60);
            make.centerX.equalTo(self);
            make.width.equalTo(self).offset(-30);
            make.height.equalTo(self).multipliedBy(0.7);
        }];
    }
    return _tableView;
}

-(UILabel *)wordNameLable{
    if (!_wordNameLable) {
        _wordNameLable = [UILabel new];
        _wordNameLable.font = [UIFont systemFontOfSize:18];
        _wordNameLable.textAlignment = NSTextAlignmentCenter;
        _wordNameLable.backgroundColor = [UIColor grayColor];
        [self addSubview:_wordNameLable];
        
        [_wordNameLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(_tableView.mas_top).offset(-10);
            make.left.equalTo(self.tableView);
            make.right.equalTo(self.mas_centerX);
            make.height.offset(80);
        }];
        
    }
    return _wordNameLable;
}

-(UILabel *)wordYbLable{
    if (!_wordYbLable) {
        _wordYbLable = [UILabel new];
        _wordYbLable.font = [UIFont systemFontOfSize:18];
        _wordYbLable.textAlignment = NSTextAlignmentCenter;
        _wordYbLable.backgroundColor = [UIColor grayColor];
        [self addSubview:_wordYbLable];
        
        [_wordYbLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(_tableView.mas_top).offset(-10);
            make.left.equalTo(self.mas_centerX);
            make.right.equalTo(self.tableView);
            make.height.offset(80);
        }];
        
    }
    return _wordYbLable;
}

- (void)bindWithViewModel:(wordInfoViewModel*)viewModel{
    RAC(self.wordNameLable, text) = viewModel.wordNameSignal;
    RAC(self.wordYbLable, text) = viewModel.wordYBSignal;
}

@end
