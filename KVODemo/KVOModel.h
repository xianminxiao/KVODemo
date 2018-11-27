//
//  KVOModel.h
//  KVODemo
//
//  Created by xxm on 2018/11/23.
//  Copyright © 2018年 xxm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN
@interface KVOModel : NSObject
{
    @public
    int value;
}
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) Person* person;
@property (nonatomic, strong) NSMutableArray* arrayValue;
@end
NS_ASSUME_NONNULL_END
