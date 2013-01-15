//
//  BViewController.h
//  TwoLevelPop
//
//  Created by to2dot@gmail.com on 13-1-7.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AViewController;

@interface BViewController : UIViewController
{
@private
    AViewController* _prevViewController;
}
@property (nonatomic, assign) AViewController* prevViewController;
@end
