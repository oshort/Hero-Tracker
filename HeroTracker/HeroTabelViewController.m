//
//  ViewController.m
//  HeroTracker
//
//  Created by Oliver Short on 4/24/16.
//  Copyright © 2016 Oliver Short. All rights reserved.
//

#import "HeroTableViewController.h"
#import "HeroDetailViewController.h"
#import "Hero.h"

@interface HeroTableViewController ()

@property (nonatomic) NSMutableArray *heroes;
@property (nonatomic) Hero *chosenHero;

-(void)loadHeroes;

@end

@implementation HeroTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.heroes = [[NSMutableArray alloc]init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//Below we are creating a path to the JSON file
-(void)loadHeroes{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"heroes" ofType:@"json"];
    
    //This method below does the work of bringing JSON File into our array - heroes
    NSArray *heroes = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:filePath] options:NSJSONReadingAllowFragments error:nil];
    
    // iterate over array of dictionaries them and convert them into Hero objects.
    //    Use the heros array from above as the array to iterate over. Create an NSDictionary object on the left side
    //    of the for-in loop. Use this inside the for loop to create an Hero object.
    
    for (NSDictionary *anHeroDictionary in heroes) {
        Hero *aHero = [Hero heroWithDictionary:anHeroDictionary];
        [self.heroes addObject:aHero];
    }
    
}

@end
