//
//  GameViewController.m
//  LagTest
//
//  Created by f0dsterz on 8/04/16.
//  Copyright (c) 2016 frankszs. All rights reserved.
//

#import "GameViewController.h"
#import "GameScene.h"


@interface GameViewController ()

@property (nonatomic) BOOL gameCenterEnabled;

@end

@implementation GameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

-(void)viewWillAppear:(BOOL)animated{
    
    
    //Configure the view.
    SKView * skView = (SKView *)self.view;
    skView.ignoresSiblingOrder = YES;
//    skView.multipleTouchEnabled = NO;
    

    GameScene *menuScene = [[GameScene alloc] initWithSize:skView.frame.size];
    menuScene.scaleMode = SKSceneScaleModeAspectFill;

    [skView presentScene:menuScene];
    
    
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
