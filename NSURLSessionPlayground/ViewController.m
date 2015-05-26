//
//  ViewController.m
//  NSURLSessionPlayground
//
//  Created by Caleb Hicks on 5/26/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ViewController.h"
#import "App.h"

@interface ViewController () <UITableViewDataSource>

@property (strong, nonatomic) NSMutableArray *searchResults;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.searchResults = [NSMutableArray new];
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:@"https://itunes.apple.com/search?term=apple&media=software"] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        NSDictionary *serializedResults = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
        
        NSArray *arrayOfResults = serializedResults[@"results"];
        
        for (NSDictionary *dictionary in arrayOfResults) {
            App *result = [[App alloc] initWithDictionary:dictionary];
            [self.searchResults addObject:result];
        }
        
        //UI updates MUST occur on the main thread
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
        });
        
    }];
    
    [dataTask resume];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.searchResults.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"appCell"];
    
    App *result = self.searchResults[indexPath.row];
    
    cell.textLabel.text = result.appName;
    cell.detailTextLabel.text = result.developer;
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
