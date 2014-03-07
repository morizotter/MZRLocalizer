//
//  MZRLocalizer.h
//  MZRLocalizer
//
//  Created by MORITA NAOKI on 2014/03/08.
//  Copyright (c) 2014年 molabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MZRLocalizer : NSObject
@property (strong, nonatomic, readonly) NSDictionary *localizationDictionary;

+ (instancetype)sharedInstance;
- (NSDictionary *)prepareLocalizationDictionary;
- (NSString *)stringWithKey:(NSString *)key;
- (NSUInteger)count;

@end