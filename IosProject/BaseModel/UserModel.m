//
//  UserModel.m
//  IosProject
//
//  Created by wordy on 2017/6/28.
//  Copyright © 2017年 golddatacommunications. All rights reserved.
//

#import "UserModel.h"


@implementation UserModel

- (id)initWithDictionary:(NSDictionary *)dict
{
    
    if (self = [super initWithDictionary:dict]) {
        
        // 对数组的处理
        NSMutableArray *mu = [NSMutableArray array];
        NSArray *dicArr = [dict objectForKey:@"person"];
        for (NSDictionary *dic in dicArr) {
           Person *per =  [[Person alloc] initWithDictionary:dic];
            [mu addObject:per];
        }
        self.person = mu;
        
        // 对对象的处理
        NSDictionary *stuD = [dict objectForKey:@"student"];
        self.student = [[Student alloc] initWithDictionary:stuD];
    
     }
    return self;
}


@end

@implementation Student

@end

@implementation Person

@end


