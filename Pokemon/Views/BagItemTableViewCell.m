//
//  BagTableViewCell.m
//  Pokemon
//
//  Created by Kaijie Yu on 2/11/12.
//  Copyright (c) 2012 Kjuly. All rights reserved.
//

#import "BagItemTableViewCell.h"

#import "GlobalRender.h"

@implementation BagItemTableViewCell

@synthesize imageView     = imageView_;
@synthesize labelTitle    = labelTitle_;

- (void)dealloc
{
//  [imageView_     release];
//  [labelTitle_    release];
  
  self.imageView     = nil;
  self.labelTitle    = nil;
  
  [super dealloc];
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
  self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
  if (self) {
    // Constans
    CGFloat const cellHeight     = 45.0f;
    CGFloat const cellWidth      = 320.f;
    CGFloat const imageWidth     = 30.f; 
    CGFloat const titleHeight    = 30.f;
    CGFloat const titleWidth     = cellWidth - imageWidth;
    
    // Set |backgroundView| for Cell
    UIView * backgroundView = [[UIView alloc] initWithFrame:CGRectMake(0.f, 0.f, cellWidth, cellHeight)];
    [backgroundView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"BagItemTableViewCellBackground.png"]]];
    [backgroundView setOpaque:NO];
    [self setBackgroundView:backgroundView];
    [backgroundView release];
    
    // Set |selectedBackgroundView| for cell
    UIView * selectedBackgroundView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, cellWidth, cellHeight)];
    [selectedBackgroundView setBackgroundColor:
     [UIColor colorWithPatternImage:[UIImage imageNamed:@"BagItemTableViewCellSelectedBackground.png"]]];
    [selectedBackgroundView setOpaque:NO];
    [self setSelectedBackgroundView:selectedBackgroundView];
    [selectedBackgroundView release];
    
    // Set layouts for |contentView|(readonly)
    // Set Image View
    imageView_ = [[UIImageView alloc] initWithFrame:CGRectMake(25.f, 11.f, imageWidth, imageWidth)];
    [imageView_ setUserInteractionEnabled:YES];
    [imageView_ setContentMode:UIViewContentModeScaleAspectFit];
    [self.contentView addSubview:imageView_];
    
    // Set Title Label
    labelTitle_ = [[UILabel alloc] initWithFrame:CGRectMake(imageWidth + 50.f, 11.f, titleWidth, titleHeight)];
    [labelTitle_ setBackgroundColor:[UIColor clearColor]];
    [labelTitle_ setFont:[GlobalRender textFontBoldInSizeOf:16.0f]];
    [labelTitle_ setTextColor:[GlobalRender textColorOrange]];
    [self.contentView addSubview:labelTitle_];
  }
  return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  [super setSelected:selected animated:animated];
  
  // Configure the view for the selected state
}

@end
