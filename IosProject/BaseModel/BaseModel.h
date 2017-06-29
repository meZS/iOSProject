//
//  BaseModel.h
//  IosProject
//
//  Created by wordy on 2017/6/28.
//  Copyright © 2017年 golddatacommunications. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
@interface BaseModel : NSObject

// 接受json 数据
- initWithDictionary:(NSDictionary *_Nullable)dict;

//  归档
- (void)encodeWithCoder:(NSCoder *_Nullable)aCoder;
- (nullable instancetype)initWithCoder:(NSCoder *_Nullable)aDecoder;

@property (nonatomic,copy)NSString * _Nullable  _Nullable nID;

@end
