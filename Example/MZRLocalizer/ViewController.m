//
//  ViewController.m
//  MZRLocalizer
//
//  Created by MORITA NAOKI on 2014/03/08.
//  Copyright (c) 2014年 molabo. All rights reserved.
//

#import "ViewController.h"

#import "ExampleLocalizer.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *contentTableView;
@property (strong, nonatomic) NSArray *allKeys;
@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
    
    NSString *str1 = [[ExampleLocalizer sharedInstance] stringWithKey:ExampleLocalizerViewControllerTitle];
    NSString *str2 = [[ExampleLocalizer sharedInstance] stringWithKey:ExampleLocalizerViewControllerJapan];
    NSString *str3 = [[ExampleLocalizer sharedInstance] stringWithKey:ExampleLocalizerViewControllerUnitedStates];
    NSString *str4 = [[ExampleLocalizer sharedInstance] stringWithKey:ExampleLocalizerViewControllerFrance];
    NSString *str5 = [[ExampleLocalizer sharedInstance] stringWithKey:ExampleLocalizerColorPink];
    NSString *str6 = [[ExampleLocalizer sharedInstance] stringWithKey:ExampleLocalizerColorBlue];
    [@[str1, str2, str3, str4, str5, str6] enumerateObjectsUsingBlock:^(NSString *str, NSUInteger idx, BOOL *stop) {
        NSLog(@"%lu : %@", idx, str);
    }];
    
    self.title = [[ExampleLocalizer sharedInstance] stringWithKey:ExampleLocalizerViewControllerTitle];
	self.allKeys = [ExampleLocalizer sharedInstance].localizationDictionary.allKeys;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [ExampleLocalizer sharedInstance].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
	cell.textLabel.text = [[ExampleLocalizer sharedInstance] stringWithKey:self.allKeys[indexPath.row]];
    return cell;
}

@end
