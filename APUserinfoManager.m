//
//  APUserinfoManager.m
//  SingletonApplication
//
//  Created by LV on 16/4/6.
//  Copyright © 2016年 Wieye. All rights reserved.
//

#import "APUserinfoManager.h"
#import "FastCoder.h"

static APUserinfoManager * _userinfoManager = nil;

@implementation APUserinfoManager

#pragma mark - Public Method

+ (APUserinfoManager *)defaultManager
{
    if (self != [APUserinfoManager class])
    {
        [NSException raise:@"APUserinfoManager"
                    format:@"Cannot use defaultManager method from subClass."];
    }
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userinfoManager = [[APUserinfoManager alloc] initIntance];
    });
    return _userinfoManager;
}

- (void)setValue:(id)value withKey:(NSString *)key
{
    NSParameterAssert(value);
    NSParameterAssert(key);
    
    NSData * data = [FastCoder dataWithRootObject:value];
    if (data) {
        [[NSUserDefaults standardUserDefaults] setObject:data forKey:key];
    }
}

- (id)valueWithKey:(NSString *)key
{
    NSParameterAssert(key);
    
    NSData * data = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    return [FastCoder objectWithData:data];
}

#pragma mark - Private Method

- (id)initIntance
{
    return [super init];
}

- (instancetype)init
{
    
    [NSException raise:@"APUserinfoManager"
                format:@"Cannot instance singleton using init method, defaultManager must be used."];
    
    return nil;
}

- (id)copyWithZone:(NSZone *)zone
{
    [NSException raise:@"APUserinfoManager"
                format:@"Cannot instance singleton using copy method, defaultManager must be used."];
    
    return nil;
}

@end
