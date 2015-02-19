//
//  comparte.h
//  Elecciones 2012
//
//  Created by Claudia Oliva on 02/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUi.h>
#import <Twitter/Twitter.h>
#import <Accounts/Accounts.h>


@interface comparte : UIViewController <UIActionSheetDelegate, MFMailComposeViewControllerDelegate>{
   
    IBOutlet UIImageView *imagenActualizar;
    
    IBOutlet UIActionSheet *hojaInformacion;
    
    IBOutlet UITextField *textopinion;
    
}

-(IBAction)muestraHoja:(id)sender;

-(IBAction)ocultarTeclado:(id)sender;





@end
