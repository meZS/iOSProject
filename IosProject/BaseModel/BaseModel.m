//
//  BaseModel.m
//  IosProject
//
//  Created by wordy on 2017/6/28.
//  Copyright © 2017年 golddatacommunications. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel


- (id)initWithDictionary:(NSDictionary *)dict
{
   
    if (self = [super init]) {
      
        [self setValuesForKeysWithDictionary:dict];
    }
    
    return self;
}

- (void)setValue:(id)value forKey:(NSString *)key
{
    [super setValue:value forKey:key];
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    NSLog(@"Undefined Key:%@ in %@",key,[self class]);
    if ([key isEqualToString:@"id"]) {
        self.nID = value;
    }
}


#pragma mark  -- 数据持久化
// 解档
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super init]) {
  
        unsigned int outCount,i;
        objc_property_t *properties = class_copyPropertyList([self class], &outCount);
        for (i = 0; i < outCount; i ++) {
            objc_property_t property = properties[i];
            const char *char_f = property_getName(property);
            NSString *propertyName = [NSString stringWithUTF8String:char_f];
             //动态拼接set方法
            //1、获取属性名的第一个字符，并转化为大写
            NSString *capital = [[propertyName substringToIndex:1] uppercaseString];
            //2、创建set方法
            NSString *setterSelStr = [NSString stringWithFormat:@"set%@%@:",capital,[propertyName substringFromIndex:1]];
            SEL sel = NSSelectorFromString(setterSelStr);
            [self performSelectorOnMainThread:sel withObject:[aDecoder decodeObjectForKey:propertyName] waitUntilDone:[NSThread mainThread]];
           
        }
          free(properties);
    }
    return self;
}
// 归档
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    unsigned int outCount,i;
    objc_property_t *properties = class_copyPropertyList([self class], &outCount);
    for (i = 0; i < outCount; i ++) {
        objc_property_t property = properties[i];
        const char *char_f = property_getName(property);
        NSString *propertyName = [NSString stringWithUTF8String:char_f];
        id propertyValue = [self valueForKey:(NSString *)propertyName];
        if (propertyValue) {
            [aCoder encodeObject:propertyValue forKey:propertyName];
        }
          free(properties);
    }
    
}
@end
