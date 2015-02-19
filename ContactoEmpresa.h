//
//  ContactoEmpresa.h
//  Elecciones 2012
//
//  Created by Claudia Oliva on 18/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUi.h>

@interface ContactoEmpresa : UIViewController <MFMailComposeViewControllerDelegate>{
    
    
}

-(IBAction)EnviarCorreo:(id)sender;

@end
