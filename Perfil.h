//
//  Perfil.h
//  Elecciones 2012
//
//  Created by Claudia Oliva on 01/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <MessageUI/MessageUi.h>
#import <Twitter/Twitter.h>
#import <Accounts/Accounts.h>

#import <MapKit/MapKit.h>

@interface Perfil : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource, UIActionSheetDelegate, MFMailComposeViewControllerDelegate>{
    
    
    UIImageView *imagenEstados;
    UIImageView *imagenPartido;
    UIPickerView *pickerEstados;
    NSArray *pickerData;
    IBOutlet UITextView *infoEstado;
    IBOutlet UILabel *labelEstado;
    IBOutlet UIView *vista;
    IBOutlet UITextView *infoPartido;
    
    
    IBOutlet UITextField *nombre;
    IBOutlet UITextField *ocupacion;
    IBOutlet UITextField *edad;
    
    IBOutlet UILabel *labelNombre;
    IBOutlet UILabel *labelEdad;
    IBOutlet UILabel *labelEst;
    
    IBOutlet UIImageView *imagenPrincipal;
    
    IBOutlet MKMapView *mapaUbicacion;
    IBOutlet UILabel *labelPrueba;
    
    
    IBOutlet UISegmentedControl *segmentEdad;

    
#pragma mark - comparte
    IBOutlet UIImageView *imagenActualizar;
    
    IBOutlet UIActionSheet *hojaInformacion;
    
    IBOutlet UITextView *textopinion;
    
    IBOutlet UILabel *muestra;
    
 
    
    IBOutlet UIScrollView *scrollOpina;
    
    
    IBOutlet UIButton *butInfo;
    
}

@property (nonatomic, retain) IBOutlet UIImageView *imagenEstados;

@property (nonatomic, retain) IBOutlet UIImageView *imagenPartido;

@property (nonatomic, retain) IBOutlet UIPickerView *pickerEstados;

@property (nonatomic, retain) NSArray *pickerData;


-(IBAction)ocultarPicker:(id)sender;
-(IBAction)FueraTeclado:(id)sender;
-(IBAction)soloOcultar:(id)sender;


#pragma mark - comparte
-(IBAction)muestraHoja:(id)sender;

-(IBAction)ocultarTeclado:(id)sender;

-(IBAction)GuardarDato:(id)sender;
-(IBAction)CargarDato1:(id)sender;

-(IBAction)OcultaText:(id)sender;

-(IBAction)InfoApp:(id)sender;

@end
