//
//  RotationViewNoMethodCalls.m
//  Roatation
//
//  Created by Ben Smith on 06/10/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RotationViewNoMethodCalls.h"


@implementation RotationViewNoMethodCalls
@synthesize reachabilityImageView, image;



- (id) initWithFrame:(CGRect)frame
{
    self = [super init];
    if (self)
    {
        _viewFrame = frame;
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
    UIView *view = [[UIView alloc] initWithFrame:_viewFrame];
    self.view = view;
    [self.view setBackgroundColor:[UIColor redColor]];
    self.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [view release];
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return YES;
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *reachabilityImagePath = [[NSBundle mainBundle] pathForResource:@"active" ofType:@"png"];
    self.image = [UIImage imageWithContentsOfFile:reachabilityImagePath];
    
    UIImageView *tempImageView = [[UIImageView alloc] initWithImage:image];
    self.reachabilityImageView = tempImageView;
    [tempImageView release];
    
    //set the autoresizing mask of the imageview so that it moves automatically
    [self.reachabilityImageView setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin];
    
    //[self.reachabilityImageView sizeToFit];
    NSLog(@"self.view.frame.size.width %f",self.view.frame.size.width);
    [self.reachabilityImageView setFrame:CGRectMake(self.view.frame.size.width-image.size.width, 0.0f, image.size.width, image.size.height)];
    //[self.reachabilityImageView setFrame:CGRectMake(700-image.size.width, 0.0f, image.size.width, image.size.height)];
    [self.view addSubview:self.reachabilityImageView];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

//- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
//{
//    // Return YES for supported orientations
//    return (interfaceOrientation == UIInterfaceOrientationPortrait);
//}

@end
