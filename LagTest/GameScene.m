//
//  GameScene.m
//  LagTest
//
//  Created by f0dsterz on 8/04/16.
//  Copyright (c) 2016 frankszs. All rights reserved.
//

#import "GameScene.h"

@interface GameScene ()

@property (nonatomic, strong) SKNode *nodeContainer;
@property (nonatomic, strong) SKSpriteNode *node;

@property (nonatomic) CGPoint currentLocation;

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

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    
    self.node.position = CGPointMake((self.node.position.x - (self.currentLocation.x-location.x)), self.node.position.y);
    
    self.currentLocation = location;
}

@end
