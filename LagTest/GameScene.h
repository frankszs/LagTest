//
//  GameScene.h
//  LagTest
//

//  Copyright (c) 2016 frankszs. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface GameScene : SKScene

@property (nonatomic, strong) SKSpriteNode *node;

@property (nonatomic) CGPoint currentLocation;
@property (nonatomic) CGPoint nodePosition;

@end
