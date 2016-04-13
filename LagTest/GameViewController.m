//
//  GameViewController.m
//  LagTest
//
//  Created by f0dsterz on 8/04/16.
//  Copyright (c) 2016 frankszs. All rights reserved.
//

#import "GameViewController.h"
#import "GameScene.h"
#import "SubClassedSKView.h"

@interface GameViewController ()

@property (nonatomic) BOOL gameCenterEnabled;

@property (nonatomic, strong) SubClassedSKView *skView;

@end

@implementation GameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.skView = [[SubClassedSKView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.skView];
    
}

-(void)viewWillAppear:(BOOL)animated{

    self.skView.ignoresSiblingOrder = YES;
    self.skView.multipleTouchEnabled = NO;
    

    GameScene *gameScene = [[GameScene alloc] initWithSize:self.skView.frame.size];
    gameScene.scaleMode = SKSceneScaleModeAspectFill;
    
    self.skView.gameScene = gameScene;
    [self.skView presentScene:gameScene];
    
}


- (BOOL)shouldAutorotate
{
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
