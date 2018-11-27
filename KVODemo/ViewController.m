//
//  ViewController.m
//  KVODemo
//
//  Created by xxm on 2018/11/23.
//  Copyright © 2018年 xxm. All rights reserved.
//

#import "ViewController.h"
#import "KVOModel.h"

@interface ViewController ()
@property (nonatomic, strong) KVOModel* model;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _model = [KVOModel new];
    // 注册
//    [_model addObserver:self forKeyPath:@"name" options:(NSKeyValueObservingOptionNew) context:nil];
//    [_model addObserver:self forKeyPath:@"person.age" options:(NSKeyValueObservingOptionNew) context:nil];
//    [_model addObserver:self forKeyPath:@"person" options:(NSKeyValueObservingOptionNew) context:nil];
//    [_model addObserver:self forKeyPath:@"value" options:(NSKeyValueObservingOptionNew) context:nil];
    [_model addObserver:self forKeyPath:@"arrayValue" options:(NSKeyValueObservingOptionNew) context:nil];
}
/** 监听方法 */
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    NSLog(@"%@", change);
}
/** 屏幕touch */
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    static int magicNum;
//    _model.name = [NSString stringWithFormat:@"name=%d", magicNum++];
//    [_model willChangeValueForKey:NSStringFromSelector(@selector(name))];
//    _model.name = [NSString stringWithFormat:@"name=%d", magicNum++];
//    [_model didChangeValueForKey:NSStringFromSelector(@selector(name))];
//    static int sage;
//    _model.person.age = sage++;
//    _model.person.name = [NSString stringWithFormat:@"name=%d", sage++];
//    _model->value = magicNum++;
    NSMutableArray* tmpArray = [_model mutableArrayValueForKey:@"arrayValue"];
    [tmpArray addObject:@"1"];
}


@end
