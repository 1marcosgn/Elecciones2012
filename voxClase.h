//
//  voxClase.h
//  Elecciones 2012
//
//  Created by Claudia Oliva on 07/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Twitter/Twitter.h>
#import <Accounts/Accounts.h>

@interface voxClase : UIViewController{
    
    IBOutlet UILabel *tweet01;
    IBOutlet UILabel *usuario01;
    
    IBOutlet UILabel *tweet02;
    IBOutlet UILabel *usuario02;
    
    IBOutlet UILabel *tweet03;
    IBOutlet UILabel *usuario03;
    
    IBOutlet UILabel *tweet04;
    IBOutlet UILabel *usuario04;
    
    IBOutlet UILabel *tweet05;
    IBOutlet UILabel *usuario05;
    
    IBOutlet UITextView *outputTextView;
    
    IBOutlet UITextField *textopinion;
    
    IBOutlet UILabel *labelMuestra;
    
    
}

-(IBAction)Refresh:(id)sender;

-(IBAction)getPublicTimeline:(id)sender;



@property (nonatomic,retain) IBOutlet UITextView *outputTextView;


-(IBAction)TweetPRD:(id)sender;
-(IBAction)TweetPAN:(id)sender;
-(IBAction)TweetPRI:(id)sender;
-(IBAction)TweetNA:(id)sender;

-(IBAction)oculta:(id)sender;

@end
