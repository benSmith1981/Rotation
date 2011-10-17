//
//  RotationExampleViewController.m
//  Roatation
//
//  Created by Ben Smith on 06/10/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RotationExampleViewController.h"

@implementation RotationExampleViewController
@synthesize isLandscape, reachabilityImageView, image;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
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

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    
    self.isLandscape = UIDeviceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation);
    
    if(isLandscape)
        
    {
        ////add your code here to change orientation of graphics or components
        NSLog(@"self.view.frame.size.height %f",self.view.frame.size.height);
        [reachabilityImageView setFrame:CGRectMake(self.view.frame.size.height-image.size.width, 0.0f, image.size.width, image.size.height)];
    }
    
    else
    {
        ////add your code here to change orientation of graphics or components
        NSLog(@"self.view.frame.size.width %f",self.view.frame.size.width);
        [reachabilityImageView setFrame:CGRectMake(self.view.frame.size.width-image.size.width, 0.0f, image.size.width, image.size.height)];
    }
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}
#pragma mark - View lifecycle


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
    UIView *view = [[UIView alloc] init];
    self.view = view;
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [view release];
}

- (void) viewWillAppear:(BOOL)animated
{
    NSLog(@"self.view.frame.size.width %f",self.view.frame.size.width);
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
    
    [reachabilityImageView sizeToFit];
    [reachabilityImageView setFrame:CGRectMake(self.view.frame.size.width-image.size.width, 0.0f, image.size.width, image.size.height)];
    [self.view addSubview:self.reachabilityImageView];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


@end
