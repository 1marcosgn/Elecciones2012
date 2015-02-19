//
//  ContactoEmpresa.m
//  Elecciones 2012
//
//  Created by Claudia Oliva on 18/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "ContactoEmpresa.h"

@interface ContactoEmpresa ()

@end

@implementation ContactoEmpresa

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
	// Do any additional setup after loading the view.
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

-(IBAction)EnviarCorreo:(id)sender{
    
    [self mailIt];
    
}


-(void)mailIt{MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
    
    picker.mailComposeDelegate = self;
    [picker setSubject:@"App - Elecciones 2012"];
    
    NSArray *aReceptores=[NSArray arrayWithObjects:@"marcos.garcia@fipade.info", nil];
    [picker setToRecipients:aReceptores];
    
    
    
    
    NSString *msj = [NSString stringWithFormat:@""];
    
    NSString *emailBody = msj;
    [picker setMessageBody:emailBody isHTML:YES];
    
    [self presentModalViewController:picker animated:YES];
}


-(void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
    
    [self dismissModalViewControllerAnimated:YES];
}


@end
