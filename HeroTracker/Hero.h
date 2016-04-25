//
//  Hero.h
//  HeroTracker
//
//  Created by Oliver Short on 4/25/16.
//  Copyright © 2016 Oliver Short. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hero : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *firstName;
@property (nonatomic) NSString *middleName;
@property (nonatomic) NSString *lastName;
@property (nonatomic) NSString *height;
@property (nonatomic) NSString *weight;
@property (nonatomic) NSString *powers;
@property (nonatomic) NSString *abilities;

+ (Hero *)heroWithDictionary:(NSDictionary *)heroDictionary;


@end
