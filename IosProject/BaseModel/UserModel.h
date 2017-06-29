//
//  UserModel.h
//  IosProject
//
//  Created by wordy on 2017/6/28.
//  Copyright © 2017年 golddatacommunications. All rights reserved.
//

#import "BaseModel.h"


@interface Student : BaseModel
@property (nonatomic,copy)NSString *stuA;
@property (nonatomic,copy)NSString *stuB;

@end

@interface Person : BaseModel
@property (nonatomic,copy)NSString *perA;
@property (nonatomic,copy)NSString *perB;

@end


@interface UserModel : BaseModel

@property (nonatomic,copy)NSString *userName;
@property (nonatomic,copy)NSString *userImg;
@property (nonatomic,copy)NSString *userID;
@property (nonatomic,strong)Student *student; //对象
@property (nonatomic,strong)NSArray <Person*> *person;// 数组


@end
