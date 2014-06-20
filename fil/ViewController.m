//
//  ViewController.m
//  fil
//
//  Created by jonathan twaddell on 6/20/14.
//  Copyright (c) 2014 Trestles. All rights reserved.
//

#import "ViewController.h"
#import "Myview.h"

@interface ViewController ()
  @property NSMutableArray *moreColors;
  @property NSMutableArray *barViews;
  @property NSMutableArray *barColors;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.moreColors=[[NSMutableArray alloc] initWithCapacity:3];
    [self.moreColors addObject:[UIColor magentaColor]];
    [self.moreColors addObject:[UIColor lightGrayColor]];
    [self.moreColors addObject:[UIColor cyanColor]];

    self.barColors=[[NSMutableArray alloc] init];
    /*
    [self.barColors addObject:[UIColor magentaColor]];
    [self.barColors addObject:[UIColor lightGrayColor]];
    [self.barColors addObject:[UIColor cyanColor]];
    */
    [self.barColors addObject:[UIColor redColor]];
    [self.barColors addObject:[UIColor orangeColor]];
    [self.barColors addObject:[UIColor yellowColor]];
    [self.barColors addObject:[UIColor blueColor]];

    
    
    [self create];
    UIButton *myButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];

    //UIButton *myButton=[[UIButton alloc] initWithFrame:(CGRectMake(500, 500, 50.0f, 20.0f))];
    myButton.frame=(CGRectMake(500, 500, 50.0f, 20.0f));
    myButton.layer.borderWidth=1.0f;
    myButton.layer.borderColor=[[UIColor blackColor] CGColor];
    [myButton addTarget:self
               action:@selector(aMethod:)
     forControlEvents:UIControlEventTouchUpInside];
    [myButton setTitle:@"hello" forState:UIControlStateNormal];
    [self.view addSubview:myButton];
                                                       
    UIButton *btnAni=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    //UIButton *myButton=[[UIButton alloc] initWithFrame:(CGRectMake(500, 500, 50.0f, 20.0f))];
    btnAni.frame=(CGRectMake(500, 550, 150.0f, 20.0f));
    btnAni.layer.borderWidth=1.0f;
    btnAni.layer.borderColor=[[UIColor blackColor] CGColor];
    [btnAni addTarget:self
                 action:@selector(animateViews:)
       forControlEvents:UIControlEventTouchUpInside];
    [btnAni setTitle:@"animate views" forState:UIControlStateNormal];
    [self.view addSubview:btnAni];
}

-(void)animateViews:(id)argument
{
    NSLog(@"you clicked animateViews");
    for(int i=0; i<[self.barViews count]; i++){
        NSLog(@"I am going to say hello");
        UIView *tmpView=[self.barViews objectAtIndex:i];
        
        tmpView.frame = CGRectMake(tmpView.frame.origin.x + 10.0f, tmpView.frame.origin.y  + 10.0f, tmpView.frame.size.width, tmpView.frame.size.height);
        
        /*
        [UIView animateWithDuration:0.3 animations:^{
            tmpView.frame = CGRectMake(tmpView.frame.origin.x + 50.0f, tmpView.frame.origin.y  + 50.0f, tmpView.frame.size.width, tmpView.frame.size.height);

        }];
         */
        
    }
    
}


-(void)aMethod:(id)argument
{
    NSLog(@"you clicked aMethod");
    [self.view setBackgroundColor:[self.moreColors objectAtIndex:arc4random_uniform([self.moreColors count])]];
    for(int i=0; i<[self.barViews count]; i++){
        NSLog(@"I am going to say hello");
        UIView *tmpView=[self.barViews objectAtIndex:i];
        UIColor *tmpColor=[self.barColors objectAtIndex:arc4random_uniform([self.barColors count])];

        //tmpView.backgroundColor=[UIColor orangeColor];
        tmpView.backgroundColor=tmpColor;

    }
}

-(void)create
{
    /*
    NSMutableArray *myColors=[[NSMutableArray alloc] init];
    [myColors addObject:[UIColor redColor]];
    [myColors addObject:[UIColor orangeColor]];
    [myColors addObject:[UIColor yellowColor]];
    [myColors addObject:[UIColor blueColor]];
    */
    self.barViews=[[NSMutableArray alloc] init];

    
    for(int i=0; i<20; i++){
        //NSLog(@"here I am");
        Myview *aView=[[Myview alloc] initWithFrame:(CGRectMake(20, i*25, 300, 20)) ];
        UIColor *tmpColor=[self.barColors objectAtIndex:arc4random_uniform([self.barColors count])];
        aView.backgroundColor=tmpColor;
        [aView myPublicMethod];
        [self.barViews addObject:aView];
        [self.view addSubview:aView];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
