//
//  Hero.m
//  HeroTracker
//
//  Created by Oliver Short on 4/25/16.
//  Copyright © 2016 Oliver Short. All rights reserved.
//

#import "Hero.h"

@implementation Hero

+ (Hero *)heroWithDictionary:(NSDictionary *)heroDictionary {
    
    Hero *aHero = nil;
    if (heroDictionary) {
        aHero = [[Hero alloc] init];
        aHero.name = heroDictionary[@"name"];
        aHero.firstName = heroDictionary[@"firstName"];
        aHero.middleName = heroDictionary[@"middleName"];
        aHero.lastName = heroDictionary[@"lastName"];
        aHero.height = heroDictionary[@"height"];
        aHero.weight = heroDictionary[@"weight"];
        aHero.powers = heroDictionary[@"powers"];
        aHero.abilities = heroDictionary[@"abilities"];
    }
    
    return aHero;
    
}
@end
