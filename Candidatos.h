//
//  Candidatos.h
//  Elecciones 2012
//
//  Created by Claudia Oliva on 14/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUi.h> 

@interface Candidatos : UIViewController <MFMailComposeViewControllerDelegate>{
    
    IBOutlet UIScrollView *scroll;
    
    IBOutlet UISegmentedControl *segmentoPenanieto;
    IBOutlet UISegmentedControl *segmentoAMLO;
    IBOutlet UISegmentedControl *segmentoJVM;
    IBOutlet UISegmentedControl *segmentoQuadri;
    
    IBOutlet UITextView *textView;
    
    IBOutlet UIWebView *webAMLO;
    IBOutlet UIWebView *webQUADRI;
    
    IBOutlet UIActivityIndicatorView *actividad;
    NSTimer *timer;
    
    
    IBOutlet UIActivityIndicatorView *actividad1;
    NSTimer *timer1;
    
    IBOutlet UILabel *labelPrueba;
    
    
    IBOutlet UIScrollView *scrollNieto;
    IBOutlet UIScrollView *scrollJVM;
    
    IBOutlet UITextField *textNombre;
    IBOutlet UITextField *textCorreo;
    IBOutlet UITextField *textEstado;
    IBOutlet UITextField *textCp;
    IBOutlet UITextField *textCelular;
    IBOutlet UITextView *textViewPropuesta;
    
    IBOutlet UILabel *labelNieto;
    
    IBOutlet UITextView *textPropuesta;
    
    
}

-(IBAction)tipoBioPropuestaNieto:(id)sender;
-(IBAction)tipoBioPropuestaAMLO:(id)sender;
-(IBAction)tipoBioPropuestaJVM:(id)sender;
-(IBAction)tipoBioPropuestaQUADRI:(id)sender;

-(IBAction)OcultarTeclado:(id)sender;
-(IBAction)OcultarTexto:(id)sender;

-(IBAction)Mailsend:(id)sender;




@end
