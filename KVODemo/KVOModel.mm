//
//  KVOModel.m
//  KVODemo
//
//  Created by xxm on 2018/11/23.
//  Copyright © 2018年 xxm. All rights reserved.
//

#import "KVOModel.h"

using namespace std;

@implementation KVOModel
- (instancetype)init
{
    if (self == [super init]) {
        _person = [Person new];
    }
    return self;
}
- (NSMutableArray *)arrayValue
{
    if (!_arrayValue)
    {
        _arrayValue = NSMutableArray.array;
    }
    return _arrayValue;
}
//+ (NSSet<NSString *> *)keyPathsForValuesAffectingValueForKey:(NSString *)key
//{
//    NSLog(@"%@", key);
//    NSSet* keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
//    NSLog(@"%@", keyPaths);
//    if ([key isEqualToString:@"person"])
//    {
//        keyPaths = [[NSSet alloc] initWithObjects:@"_person.age", @"_person.name", nil];
//
//    }
//    return keyPaths;
//}
///** 模式调整 */
//+ (BOOL)automaticallyNotifiesObserversForKey:(NSString *)key
//{
//    return NO;  // 改为手动模式
//}
@end
