//
//  ViewController.m
//  TableViewReloadGlitch
//
//  Created by Regan Dawson on 16/8/17.
//  Copyright © 2017 APE. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UISearchBarDelegate>
@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, assign) NSInteger count;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.tableView.estimatedRowHeight = 114;
    self.tableView.rowHeight = UITableViewAutomaticDimension;

    self.count = 100;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    cell.textLabel.text = [NSString stringWithFormat:@"Cell %li", (long)indexPath.row];

    return cell;
}

- (IBAction)go:(id)sender
{
    self.count = 6;
    [self.tableView reloadData];
}

@end
