//
//  MZRLocalizer.m
//  MZRLocalizer
//
//  Created by MORITA NAOKI on 2014/03/08.
//  Copyright (c) 2014年 molabo. All rights reserved.
//

#import "MZRLocalizer.h"

@interface MZRLocalizer ()
@end

@implementation MZRLocalizer

+ (instancetype)sharedInstance {
	static id sharedInstance = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
	    sharedInstance = [[self alloc] init];
	});
	return sharedInstance;
}

- (id)init {
	self = [super init];
	if (self) {
        _localizationDictionary = [self prepareLocalizationDictionary];
	}
	return self;
}

- (NSDictionary *)prepareLocalizationDictionary {
    return @{};
}

- (NSUInteger)count {
    return self.localizationDictionary.allKeys.count;
}

- (NSString *)stringWithKey:(NSString *)key {
	NSString *string = self.localizationDictionary[key];
	if (!string) {
		return key;
	}
	return string;
}

@end
