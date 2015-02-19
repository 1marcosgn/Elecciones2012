//
//  Noticias.h
//  Elecciones 2012
//
//  Created by Claudia Oliva on 02/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AddressBook/AddressBook.h>

@interface Noticias : UIViewController{
    
    IBOutlet UIWebView *noticias;
    
    IBOutlet UIActivityIndicatorView *actividad;
    NSTimer *timer;
    
    IBOutlet UIWebView *webNieto;
    IBOutlet UIWebView *webAmlo;
    IBOutlet UIWebView *webJvm;
    IBOutlet UIWebView *webQuadri;
    
}

-(IBAction)AgregarContactoAgendaIFE:(id)sender;
-(IBAction)AgregarContactoAgendaFEPADE:(id)sender;



@end
