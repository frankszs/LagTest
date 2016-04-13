//
//  SubClassedSKView.m
//  LagTest
//
//  Created by f0dsterz on 13/04/16.
//  Copyright © 2016 frankszs. All rights reserved.
//

#import "SubClassedSKView.h"
#import "GameScene.h"
#import <os/activity.h>
#import <os/trace.h>

@implementation SubClassedSKView


-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    os_activity_t aid = os_activity_start("Touches Moves", OS_ACTIVITY_FLAG_DEFAULT);
    os_trace("-touchesMoved:withEvent:");
    
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self];
    
    self.gameScene.node.position = CGPointMake((self.gameScene.node.position.x - (self.gameScene.currentLocation.x-location.x)), self.gameScene.node.position.y);
    self.gameScene.currentLocation = location;
    
    os_activity_end(aid);
}

@end
