//
//  GameScene.m
//  LagTest
//
//  Created by f0dsterz on 8/04/16.
//  Copyright (c) 2016 frankszs. All rights reserved.
//

#import "GameScene.h"
#import <os/activity.h>
#import <os/trace.h>

@interface GameScene ()

@property (nonatomic, strong) SKNode *nodeContainer;

@end

@implementation GameScene



-(void)didMoveToView:(SKView *)view{
    
    self.anchorPoint = CGPointMake(0.5, 0.5);
    
    self.nodeContainer = [SKNode node];
    [self addChild:self.nodeContainer];
    
    self.node = [[SKSpriteNode alloc] initWithColor:[UIColor greenColor] size:CGSizeMake(50, 50)];
    self.node.physicsBody = nil;
    
    [self.nodeContainer addChild:self.node];
}

- (void)update:(NSTimeInterval)currentTime
{
    os_activity_t aid = os_activity_start("Update", OS_ACTIVITY_FLAG_DEFAULT);
    os_trace("Update");
    
    [super update:currentTime];
    
    os_activity_end(aid);
}

@end
