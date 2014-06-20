//
//  Myview.m
//  fil
//
//  Created by jonathan twaddell on 6/20/14.
//  Copyright (c) 2014 Trestles. All rights reserved.
//

#import "Myview.h"

@implementation Myview

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)myPublicMethod
{
    NSLog(@"within myPublicMethod");
    self.layer.borderColor = [UIColor blueColor].CGColor;
    self.layer.borderWidth = 2.0f;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
