//
//  CViewController.h
//  TwoLevelPop
//
//  Created by to2dot@gmail.com on 13-1-7.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BViewController;

@interface CViewController : UIViewController
{
@private
    BViewController* _prevViewController;
}
@property (nonatomic, assign) BViewController* prevViewController;
@end
