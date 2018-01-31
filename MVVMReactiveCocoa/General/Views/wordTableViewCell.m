//
//  wordTableViewCell.m
//  MVVMReactiveCocoa
//
//  Created by zlw on 2018/1/31.
//  Copyright © 2018年 xujinzhong. All rights reserved.
//

#import "wordTableViewCell.h"

@interface wordTableViewCell()

@property(nonatomic, strong) UILabel *wordNameLable;
@property(nonatomic, strong) UILabel *wordYinBiaoLable;
@property(nonatomic, strong) UILabel *wordMeanLable;

@end

@implementation wordTableViewCell

//Display the data on viewCell
-(void)loadWordInfo:(wordModel *)word{
    self.wordNameLable.text = word.Word;
    self.wordYinBiaoLable.text = word.yinbiao;
    self.wordMeanLable.text = word.Cnmean;
}

//
-(UILabel *)wordNameLable{
    if (!_wordNameLable) {
        _wordNameLable = [UILabel new];
        _wordNameLable.font = [UIFont boldSystemFontOfSize:18];
        _wordNameLable.textAlignment = NSTextAlignmentLeft;
        [self.contentView addSubview:_wordNameLable];
        
        [_wordNameLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(2);
            make.bottom.equalTo(self.contentView.mas_centerY).offset(-2);
            make.left.equalTo(self.contentView).offset(15);
            make.right.equalTo(self.contentView.mas_centerX);
        }];
    }
    return _wordNameLable;
}

-(UILabel *)wordYinBiaoLable{
    if (!_wordYinBiaoLable) {
        _wordYinBiaoLable = [UILabel new];
        _wordYinBiaoLable.font = [UIFont systemFontOfSize:17];
        _wordYinBiaoLable.textAlignment = NSTextAlignmentLeft;
        _wordYinBiaoLable.textColor = [UIColor grayColor];
        [self.contentView addSubview:_wordYinBiaoLable];
        
        [_wordYinBiaoLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(2);
            make.bottom.equalTo(self.contentView.mas_centerY).offset(-2);
            make.left.equalTo(self.contentView.mas_centerX);
            make.right.equalTo(self.contentView).offset(-5);
        }];
    }
    return _wordYinBiaoLable;
}

-(UILabel *)wordMeanLable{
    if (!_wordMeanLable) {
        _wordMeanLable = [UILabel new];
        _wordMeanLable.font = [UIFont systemFontOfSize:16];
        _wordMeanLable.textAlignment = NSTextAlignmentLeft;
        [self.contentView addSubview:_wordMeanLable];
        
        [_wordMeanLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView.mas_centerY).offset(5);
            make.left.equalTo(self.contentView).offset(15);
            make.centerX.equalTo(self.contentView);
            make.width.equalTo(self.contentView).multipliedBy(0.95);
        }];
    }
    return _wordMeanLable;
}

@end
