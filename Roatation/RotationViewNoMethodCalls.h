//
//  RotationViewNoMethodCalls.h
//  Roatation
//
//  Created by Ben Smith on 06/10/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RotationViewNoMethodCalls : UIViewController {
    
    UIImage                 *image;
    UIImageView             *reachabilityImageView;
    CGRect                  _viewFrame;
}
@property (nonatomic, retain) UIImage *image;
@property (nonatomic, retain) UIImageView *reachabilityImageView;

@end
