//
//  APUserinfoManager.h
//  SingletonApplication
//
//  Created by LV on 16/4/6.
//  Copyright © 2016年 Wieye. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APUserinfoManager : NSObject

+ (APUserinfoManager *)defaultManager;


- (void)setValue:(id)value withKey:(NSString *)key;

- (id)valueWithKey:(NSString *)key;

@end
