//
//  Person.h
//  KVODemo
//
//  Created by xxm on 2018/11/23.
//  Copyright © 2018年 xxm. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property (nonatomic, assign) int age;
@property (nonatomic, strong) NSString* name;
@end

NS_ASSUME_NONNULL_END
