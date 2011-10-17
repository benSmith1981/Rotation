//
//  RoatationAppDelegate.h
//  Roatation
//
//  Created by Ben Smith on 06/10/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RotationExampleViewController.h"
#import "MasterRotationVC.h"

@interface RotationAppDelegate : NSObject <UIApplicationDelegate> {

    RotationExampleViewController *rotationVC;
    MasterRotationVC *rotationNoMethodsVC;
    CGRect                              _appFrame;
}
@property (nonatomic, assign) CGRect appFrame;
@property (nonatomic, retain) RotationExampleViewController *rotationVC;
@property (nonatomic, retain) MasterRotationVC *rotationNoMethodsVC;
@property (nonatomic, retain) IBOutlet UIWindow *window;

@end
