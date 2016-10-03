//
//  ViewController.m
//  GeneratePrime
//
//  Created by Alyona Belyaeva on 03.10.16.
//  Copyright © 2016 Alyona Belyaeva. All rights reserved.
//

#import "ViewController.h"
#import "GPGeneratePrime.h"
#import "BAMyCell.h"

@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *tableData;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController{
    GPGeneratePrime *_generatePrimeInterface;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [super viewDidLoad];
    self.tableData = [NSMutableArray array];
    _generatePrimeInterface = [GPGeneratePrime create];
    [self getDataList];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table View
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tableData.count/2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BAMyCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    [cell drawColorsForIndex:(int)indexPath.row];
    [cell showInfo:@[self.tableData[indexPath.row*2], self.tableData[indexPath.row*2+1] ]];
    
    if(indexPath.row == self.tableData.count/2 - 1){
        [self getDataList];
    }
    return cell;
}

#pragma mark - Logic need to be transfered into another class
-(void)getDataList{
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        int first = 2;
        if(self.tableData.count > 0){
            first = [[self.tableData lastObject] intValue];
        }
        [self.tableData addObjectsFromArray:[self primeFrom:first]];
        [self.tableView reloadData];
    }];
}

-(NSArray *)primeFrom:(int)firstPrime{
    NSMutableArray *result = [NSMutableArray array];
    int ii = firstPrime;
    while (result.count < 50) {
        ii = [_generatePrimeInterface generatePrime:ii];
        [result addObject:[NSNumber numberWithInt:ii]];
    }
    return result;
}


@end
