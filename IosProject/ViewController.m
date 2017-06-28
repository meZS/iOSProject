//
//  ViewController.m
//  IosProject
//
//  Created by wordy on 2017/6/28.
//  Copyright © 2017年 golddatacommunications. All rights reserved.
//

#import "ViewController.h"
#import "UserModel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSDictionary *dict = @{@"userName":@"Hello",@"userImg":@"HI",@"userID":@"33",@"student":@{@"stuA":@"阿狸",@"stuB":@"小法"},@"person":@[@{@"perA":@"轮子妈",@"perB":@"奥巴马"},@{@"perA":@"老鼠",@"perB":@"瞎子"},@{@"perA":@"金克斯",@"perB":@"女警"}]};
    
    UserModel *uModel = [[UserModel alloc] initWithDictionary:dict];
    
    NSLog(@"\n====%@\n====%@\n==%@",uModel.userName,uModel.userID,uModel.userImg);
    
    NSLog(@"\n===%@\n==%@", uModel.student.stuA,uModel.student.stuB);
    
    
    
    NSLog(@"\n==%@\n==%@\n==%@\n==%@\n==%@\n==%@",uModel.person[0].perA,uModel.person[0].perB,uModel.person[1].perA,uModel.person[1].perB,uModel.person[2].perA,uModel.person[2].perB);
    
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
