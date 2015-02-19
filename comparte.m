//
//  comparte.m
//  Elecciones 2012
//
//  Created by Claudia Oliva on 02/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "comparte.h"


@interface comparte ()

@end

@implementation comparte

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //[self Imagenizar];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void)Imagenizar{
    
    NSString *imagestring = @"http://fipade.com/fipade/images/stories/tabla.png";
    
    NSURL *urlone= [NSURL URLWithString:imagestring];
    
    NSData *new=[NSData dataWithContentsOfURL:urlone];
    
    [imagenActualizar setImage:[UIImage imageWithData:new]];

    
}


-(IBAction)muestraHoja:(id)sender{
    
    hojaInformacion = [[UIActionSheet alloc] initWithTitle:@"Compartir" delegate:self cancelButtonTitle:@"Cancelar" destructiveButtonTitle:nil otherButtonTitles:@"Correo", @"Twitter", nil];
    
    [hojaInformacion showInView:self.view];
    
    
}

-(void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex{
    

    
    switch (buttonIndex) {
        case 0:
            [self mailIt];
            NSLog(@"Button 0");
            break;
        case 1:
            NSLog(@"Button 1");
            [self showTweetSheet];
            break;

    }
    
}


-(IBAction)ocultarTeclado:(id)sender{
    
    
}


#pragma mark - Correo
-(void)mailIt {MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
    
    picker.mailComposeDelegate = self;
    [picker setSubject:@"Elecciones 2012"];
    
    NSArray *aReceptores=[NSArray arrayWithObjects:@"", nil];
    [picker setToRecipients:aReceptores];
    
    
//    UIImage *roboPic = [UIImage imageNamed:@"info_durango.png"];
//    NSData *imageData = UIImageJPEGRepresentation(roboPic, 1);
//    [picker addAttachmentData:imageData mimeType:@"image/png" fileName:@"IMAGENMuestra.png"];
    
    NSString *opinionCadena = textopinion.text;
    
    NSString *emailBody = [NSString stringWithFormat:@"Esta es mi opinión sobre las elecciones de este 2012, %@", opinionCadena];
    
    [picker setMessageBody:emailBody isHTML:YES];
    
    [self presentModalViewController:picker animated:YES];
}

-(void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
    
    [self dismissModalViewControllerAnimated:YES];
}

#pragma mark - Twitter
-(void)showTweetSheet{
    
    //  Create an instance of the Tweet Sheet
    TWTweetComposeViewController *tweetSheet = [[TWTweetComposeViewController alloc] init];
    
    // Sets the completion handler.  Note that we don't know which thread the
    // block will be called on, so we need to ensure that any UI updates occur
    // on the main queue
    tweetSheet.completionHandler = ^(TWTweetComposeViewControllerResult result) {
        switch(result) {
            case TWTweetComposeViewControllerResultCancelled:
                //  This means the user cancelled without sending the Tweet
                break;
            case TWTweetComposeViewControllerResultDone:
                //  This means the user hit 'Send'
                break;
        }
        
        
        //  dismiss the Tweet Sheet 
        dispatch_async(dispatch_get_main_queue(), ^{            
            [self dismissViewControllerAnimated:YES completion:^{
                NSLog(@"Tweet Sheet has been dismissed."); 
            }];
        });
    };
    
    NSString *opinionCadena = textopinion.text;

    //NSString *mensaje = @"Im just using the Amadeus app try it thats my score %@";
    NSString *mensaje01 = [NSString stringWithFormat:@"Esta es mi opinión sobre las elecciones de este 2012, %@", opinionCadena];
    
    //  Set the initial body of the Tweet2
    [tweetSheet setInitialText:mensaje01]; 
    
    //  Adds an image to the Tweet
    //  For demo purposes, assume we have an image named 'larry.png'
    //  that we wish to attach
    
    //        if (![tweetSheet addImage:img.image]) 
    //        {
    
    
    
    
//    if (![tweetSheet addImage:[UIImage imageNamed:img]]) {
//        NSLog(@"Unable to add the image!");
//    }
    
    //  Add an URL to the Tweet.  You can add multiple URLs.
    /* if (![tweetSheet addURL:[NSURL URLWithString:@"http://twitter.com/"]]){
     NSLog(@"Unable to add the URL!");
     }*/
    
    //  Presents the Tweet Sheet to the user
    [self presentViewController:tweetSheet animated:YES completion:^{
        NSLog(@"Tweet sheet has been presented.");
    }];
    
}



@end
