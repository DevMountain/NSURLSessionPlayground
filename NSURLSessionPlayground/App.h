//
//  AppResult.h
//  NSURLSessionPlayground
//
//  Created by Caleb Hicks on 5/26/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface App : NSObject

@property (strong, nonatomic) NSString *appName;
@property (strong, nonatomic) NSString *appDescription;
@property (strong, nonatomic) NSString *developer;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
