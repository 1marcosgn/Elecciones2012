//
//  Noticias.m
//  Elecciones 2012
//
//  Created by Claudia Oliva on 02/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "Noticias.h"

@interface Noticias ()

@end

@implementation Noticias

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
	
    [noticias addSubview: actividad];
    
    [noticias loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.ife.org.mx/portal/site/ifev2/Noticias_principales/"]]]; 
    
    timer = [NSTimer scheduledTimerWithTimeInterval:(1.0/2.0) target:self selector:@selector(loading) userInfo:nil repeats:YES];
    
    [webAmlo loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.amlo.org.mx/"]]]; 
    [webNieto loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.enriquepenanieto.com/"]]]; 
    [webJvm loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://josefina.mx/"]]]; 
    [webQuadri loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://nuevaalianza.mx/"]]]; 
    
    //cambiar color Boton Back
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]initWithTitle:@"Atras" style:UIBarButtonItemStyleBordered target:nil action:nil];
    
    backButton.tintColor = [UIColor brownColor];
    self.navigationItem.backBarButtonItem = backButton;

    
}

-(void)loading{
    
    if(noticias.loading || webAmlo.loading || webJvm.loading || webNieto.loading || webQuadri.loading){
        [actividad startAnimating];
        actividad.alpha = 1.0;
    }
    else {
        [actividad stopAnimating];
        actividad.alpha = 0.0;
        
    }
    
    
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

-(IBAction)AgregarContactoAgendaIFE:(id)sender{
    
    [self saveAgendaIFE];
    
}

-(IBAction)AgregarContactoAgendaFEPADE:(id)sender{
    
    [self saveAgendaFEPADE];
    
}


-(void)saveAgendaIFE{
    
    //Variable para captar posibles errores
    CFErrorRef error = NULL;
    
    
    //Creamos una referencia a nuestro AddressBook
    ABAddressBookRef iPhoneAddressBook = ABAddressBookCreate();
    
    //Creamos una nueva Persona
    ABRecordRef newPerson = ABPersonCreate();
    
    //Comenzamos agregando algunos datos..
    ABRecordSetValue(newPerson, kABPersonFirstNameProperty, @"IFE", &error);
    ABRecordSetValue(newPerson, kABPersonLastNameProperty, @"Instituto Federal Electoral", &error);
    
    ABRecordSetValue(newPerson, kABPersonOrganizationProperty, @"", &error);
    ABRecordSetValue(newPerson, kABPersonJobTitleProperty, @"", &error);
    
    //Agregando un telefono..
    ABMutableMultiValueRef multiPhone = ABMultiValueCreateMutable(kABMultiStringPropertyType);
    ABMultiValueAddValueAndLabel(multiPhone, @"01 800 433 2000", kABPersonPhoneMainLabel, NULL);
    ABMultiValueAddValueAndLabel(multiPhone, @"186 6986 83 06", kABPersonPhoneMobileLabel, NULL);
    ABMultiValueAddValueAndLabel(multiPhone, @"52 55 54 81 98 97", kABOtherLabel, NULL);
    ABRecordSetValue(newPerson, kABPersonPhoneProperty, multiPhone, nil);
    CFRelease(multiPhone);
    
    //Agregando una direccion de correo electronico
    ABMutableMultiValueRef multiEmail = ABMultiValueCreateMutable(kABMultiStringPropertyType);
    ABMultiValueAddValueAndLabel(multiEmail, @"rafael.vidal@ife.org.mx", kABWorkLabel, NULL);
    ABRecordSetValue(newPerson, kABPersonEmailProperty, multiEmail, &error);
    
    
    //Guardado la Informacion
    ABAddressBookAddRecord(iPhoneAddressBook, newPerson, &error);
    ABAddressBookSave(iPhoneAddressBook, &error);
    
    if (error != NULL) {
        
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Elecciones 2012" message:@"Esta Persona ya esta en su lista de Contactos" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        [alert show];
        
    }
    else {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Elecciones 2012" message:@"Se Agrego correctamente a la Lista de Contactos" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        [alert show];
    }
    
}


-(void)saveAgendaFEPADE{
    
    //Variable para captar posibles errores
    CFErrorRef error = NULL;
    
    
    //Creamos una referencia a nuestro AddressBook
    ABAddressBookRef iPhoneAddressBook = ABAddressBookCreate();
    
    //Creamos una nueva Persona
    ABRecordRef newPerson = ABPersonCreate();
    
    //Comenzamos agregando algunos datos..
    ABRecordSetValue(newPerson, kABPersonFirstNameProperty, @"FEPADE", &error);
    ABRecordSetValue(newPerson, kABPersonLastNameProperty, @"Fiscalia Especializada para la Atención de Delitos Electorales", &error);
    
    ABRecordSetValue(newPerson, kABPersonOrganizationProperty, @"", &error);
    ABRecordSetValue(newPerson, kABPersonJobTitleProperty, @"", &error);
    
    //Agregando un telefono..
    ABMutableMultiValueRef multiPhone = ABMultiValueCreateMutable(kABMultiStringPropertyType);
    ABMultiValueAddValueAndLabel(multiPhone, @"5 34 60000", kABPersonPhoneMainLabel, NULL);
    ABMultiValueAddValueAndLabel(multiPhone, @" ", kABPersonPhoneMobileLabel, NULL);
    ABMultiValueAddValueAndLabel(multiPhone, @" ", kABOtherLabel, NULL);
    ABRecordSetValue(newPerson, kABPersonPhoneProperty, multiPhone, nil);
    CFRelease(multiPhone);
    
    //Agregando una direccion de correo electronico
    ABMutableMultiValueRef multiEmail = ABMultiValueCreateMutable(kABMultiStringPropertyType);
    ABMultiValueAddValueAndLabel(multiEmail, @" ", kABWorkLabel, NULL);
    ABRecordSetValue(newPerson, kABPersonEmailProperty, multiEmail, &error);
    
    
    //Guardado la Informacion
    ABAddressBookAddRecord(iPhoneAddressBook, newPerson, &error);
    ABAddressBookSave(iPhoneAddressBook, &error);
    
    if (error != NULL) {
        
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Elecciones 2012" message:@"Esta Persona ya esta en su lista de Contactos" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        [alert show];
        
    }
    else {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Elecciones 2012" message:@"Se Agrego correctamente a la Lista de Contactos" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        [alert show];
    }
    
}


@end
