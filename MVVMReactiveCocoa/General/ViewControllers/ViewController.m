//
//  ViewController.m
//  MVVMReactiveCocoa
//
//  Created by zlw on 2018/1/30.
//  Copyright © 2018年 xujinzhong. All rights reserved.
//

#import "ViewController.h"

#import "wordView.h"
#import "wordsTableViewModel.h"
#import "wordInfoViewModel.h"

@interface ViewController ()

@property(nonatomic, strong) wordView *wordV;
@property(nonatomic, strong) wordsTableViewModel *viewModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.wordV.backgroundColor = [UIColor whiteColor];
    
    [self.viewModel requestData:^(void) {
        [self.wordV.tableView reloadData];
    }];
    
    [self.viewModel.selectRowSubject subscribeNext:^(wordModel *obj) {
        wordInfoViewModel *wordInfoViweModel = [[wordInfoViewModel alloc] initWithWordInfo:obj];
        [self.wordV bindWithViewModel:wordInfoViweModel];
    }];
}

-(wordView *)wordV{
    if (!_wordV) {
        _wordV = [[wordView alloc] init];
        _wordV.tableView.delegate=self.viewModel;
        _wordV.tableView.dataSource=self.viewModel;
        [self.view addSubview:_wordV];
        
        [_wordV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.view);
        }];
    }
    return _wordV;
}

- (wordsTableViewModel *)viewModel{
    if (!_viewModel) {
        _viewModel = [[wordsTableViewModel alloc]init];
    }
    return _viewModel;
}

@end
