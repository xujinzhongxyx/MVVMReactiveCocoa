//
//  wordsTableViewModel.m
//  MVVMReactiveCocoa
//
//  Created by zlw on 2018/1/30.
//  Copyright © 2018年 xujinzhong. All rights reserved.
//

#import "wordsTableViewModel.h"
#import "wordTableViewCell.h"

@interface wordsTableViewModel()

@property(nonatomic, strong) NSArray *wordsArray;

@end

@implementation wordsTableViewModel

- (void)requestData:(void(^)(void))block{
    
    self.selectRowSubject = [RACSubject subject];
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"word" ofType:@"db"];
    FMDatabase *_fmdb = [FMDatabase databaseWithPath:filePath];
    
    if ([_fmdb open]) {
        NSString *SQL = @"SELECT * FROM words_all ORDER BY ID ASC";
        NSMutableArray *wordMutArray = [NSMutableArray array];
        FMResultSet *rs = [_fmdb executeQuery:SQL];
        while ([rs next]) {
            [wordMutArray addObject:[rs resultDictionary]];
        }
        self.wordsArray = wordMutArray.mutableCopy;
        [rs close];
        [_fmdb close];
    }
}

#pragma mark tableView 代理方法 ----------
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 65;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.wordsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *identifier = @"myViewCell";
    wordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (!cell) {
        cell = [[wordTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    }
    
    wordModel *model = [wordModel mj_objectWithKeyValues:self.wordsArray[indexPath.row]];
    [cell loadWordInfo:model];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (self.wordsArray.count > 0) {
        wordModel *_wordModel = [wordModel mj_objectWithKeyValues:self.wordsArray[indexPath.row]];
        [self.selectRowSubject sendNext:_wordModel];
    }
}

@end
