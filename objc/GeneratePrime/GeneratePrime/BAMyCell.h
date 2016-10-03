//
//  BAMyCell.h
//  TableTwice
//
//  Created by Alyona Belyaeva on 02.10.16.
//  Copyright © 2016 Alyona Belyaeva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BAMyCell : UITableViewCell

-(void)showInfo:(NSArray *)primes;
-(void)drawColorsForIndex:(int)index;

@end
