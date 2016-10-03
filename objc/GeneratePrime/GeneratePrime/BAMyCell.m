//
//  BAMyCell.m
//  TableTwice
//
//  Created by Alyona Belyaeva on 02.10.16.
//  Copyright © 2016 Alyona Belyaeva. All rights reserved.
//

#import "BAMyCell.h"

#define lightBlueColor [UIColor colorWithRed:251.0/255.0 green:251.0/255.0 blue:251.0/255.0 alpha:1.0]

@interface BAMyCell ()
@property (weak, nonatomic) IBOutlet UIView *leftView;
@property (weak, nonatomic) IBOutlet UIView *rightView;
@property (weak, nonatomic) IBOutlet UILabel *leftLabel;
@property (weak, nonatomic) IBOutlet UILabel *rightLabel;

@end

@implementation BAMyCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)showInfo:(NSArray *)primes{
    self.leftLabel.text = [NSString stringWithFormat:@"%@", primes[0]];
    self.rightLabel.text = [NSString stringWithFormat:@"%@", primes[1]];
}

-(void)drawColorsForIndex:(int)index{
    if(index%2 == 0){
        self.leftView.backgroundColor = [UIColor whiteColor];
        self.rightView.backgroundColor = lightBlueColor;
    }else{
        self.rightView.backgroundColor = [UIColor whiteColor];
        self.leftView.backgroundColor = lightBlueColor;
    }
}

@end
