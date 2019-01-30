//
//  ViewController.m
//  assignment1
//
//  Created by Kyle Franke on 1/29/19.
//  Copyright © 2019 Kyle Franke. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

// I used the following tutorial to learn how to use the "AVFoundation" framework:
// www.youtube.com/watch?v=FtGDQqSU_Hk

@interface ViewController () {
    AVAudioPlayer * _audioPlayer;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction) tapButton : (UIButton *)sender {
    // The note's name is taken from the sender argument, and I use that to decide
    // what sound I should play on each click. If it's A, play A.mp3, etc.

    // Build the URL to the sound in the "Sounds" group.
    NSString * note = [sender titleForState:UIControlStateNormal];
    NSString * path = [NSString stringWithFormat:@"%@/%@%@", [[NSBundle mainBundle] resourcePath], note, @".mp3"];
    NSURL * soundURL = [NSURL fileURLWithPath:path];
    
    // Build the audio player, setting it to nil first in case the last press was recent.
    _audioPlayer = nil;
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundURL error:nil];
    
    // Play it!
    [_audioPlayer play];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
