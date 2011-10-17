//
//  MasterRotationVC.h
//  Roatation
//
//  Created by Ben Smith on 06/10/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RotationViewNoMethodCalls.h"

@interface MasterRotationVC : UIViewController {
        RotationViewNoMethodCalls       *rotationNoMethodsVC;
}
@property (nonatomic, retain) RotationViewNoMethodCalls       *rotationNoMethodsVC;
@end
