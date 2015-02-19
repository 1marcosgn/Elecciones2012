//
//  Perfil.m
//  Elecciones 2012
//
//  Created by Claudia Oliva on 01/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "Perfil.h"
//#import "mapAnnotation.h"


@interface Perfil ()

@end

@implementation Perfil

@synthesize pickerData, pickerEstados, imagenEstados, imagenPartido;

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
    
    //cambiar color Boton Back
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]initWithTitle:@"Atras" style:UIBarButtonItemStyleBordered target:nil action:nil];
    
    backButton.tintColor = [UIColor brownColor];
    self.navigationItem.backBarButtonItem = backButton;
    [super viewDidLoad];
    
    if ([labelPrueba.text isEqualToString:@"::"]) {
        NSLog(@"No inicial");
        
        //[self PonerAnotacion];
        
        //Scroll_Principal
        [scrollOpina setScrollEnabled:YES];
        [scrollOpina setContentSize:CGSizeMake(50, 550)];
        
        [self CargarDato];
    }
    else {
        
	
    //Estados de la Republica
    pickerData = [[NSArray alloc] initWithObjects:@"Aguascalientes",@"Baja California",@"Baja California Sur", @"Campeche", @"Chiapas", @"Chihuahua", @"Coahuila", @"Colima", @"Distrito Federal", @"Durango", @"Guanajuato", @"Guerrero", @"Hidalgo", @"Jalisco", @"México", @"Michoacán", @"Morelos", @"Nayarit", @"Nuevo León", @"Oaxaca" , @"Puebla", @"Querétaro", @"Quintana Roo", @"San Luis Potosí", @"Sinaloa", @"Sonora", @"Tabasco", @"Tamaulipas", @"Tlaxcala", @"Veracruz", @"Yucatán", @"Zacatecas", nil]; 
    
    
    
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Elecciones 2012" message:@"Completa correctamente la información para conocer y registrar tu perfil" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
    [alert show];
    
//    if ([muestra.text isEqualToString:@"--"]) {
        //Carga los Datos
        [self CargarDato];
//    }
//    else {
//        NSLog(@"No es momento");
//    }
        
    }
//    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    [self setImagenEstados:nil];
    [self setImagenPartido:nil];
    [self setPickerEstados:nil];
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


#pragma mark - PickerView Data Sources Methods

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
    
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return [pickerData count];
    
}



#pragma mark - PickerView Delegate Methods

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return [pickerData objectAtIndex:row];
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    if ([[pickerData objectAtIndex:row] isEqualToString:@"Aguascalientes"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"Aguascalientes.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"1.jpeg"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Revolucionario Institucional";
        labelEstado.text = @"Aguascalientes";
        
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Baja California"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"Baja-California.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"pan2.png"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Acción Nacional";
        labelEstado.text = @"Baja California";
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Baja California Sur"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"Baja-California-Sur.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"pan2.png"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Acción Nacional";
        labelEstado.text = @"Baja California Sur";
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Campeche"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"Campeche.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"1.jpeg"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Revolucionario Institucional";
        labelEstado.text = @"Campeche";
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Chiapas"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"Chiapas.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"prd3.png"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido de la Revolución Democrática";
        labelEstado.text = @"Chiapas";
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Chihuahua"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"Chihuahua.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"1.jpeg"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Revolucionario Institucional";
        labelEstado.text = @"Chihuahua";
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Coahuila"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"Coahuila.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"1.jpeg"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Revolucionario Institucional";
        labelEstado.text = @"Coahuila";
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Colima"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"Colima.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"1.jpeg"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Revolucionario Institucional";
        labelEstado.text = @"Colima";
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Distrito Federal"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"DF.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"prd3.png"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido de la Revolución Democrática";

        labelEstado.text = @"Distrito Federal";
    }
    
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Durango"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"Durango.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"1.jpeg"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Revolucionario Institucional";
        labelEstado.text = @"Durango";
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Guanajuato"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"Guanajuato.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"pan2.png"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Acción Nacional";
        labelEstado.text = @"Guanajuato";
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Guerrero"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"Guerrero.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"prd3.png"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido de la Revolución Democrática";
        
        labelEstado.text = @"Guerrero";
    }
    
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Hidalgo"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"Hidalgo.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"1.jpeg"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Revolucionario Institucional";
        labelEstado.text = @"Hidalgo";
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Jalisco"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"Jalisco.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"pan2.png"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Acción Nacional";
        labelEstado.text = @"Jalisco";
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"México"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"EstadoDeMexico.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"1.jpeg"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Revolucionario Institucional";
        
        labelEstado.text = @"México";
    }
    
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Michoacán"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"Michoacan.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"1.jpeg"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Revolucionario Institucional";
        labelEstado.text = @"Michoacan";
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Morelos"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"Morelos.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"pan2.png"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Acción Nacional";
        labelEstado.text = @"Morelos";
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Nayarit"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"Nayarit.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"1.jpeg"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Revolucionario Institucional";
        
        labelEstado.text = @"Nayarit";
    }
    
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Nuevo León"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"Nuevo-Leon.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"1.jpeg"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Revolucionario Institucional";
        labelEstado.text = @"Nuevo León";
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Oaxaca"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"Oxaca.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"movc.png"]];
        infoEstado.text = @"Estado gobernado actualmento por el Movimiento Ciudadano";
        labelEstado.text = @"Oaxaca";
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Puebla"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"Puebla.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"pan2.png"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Acción Nacional";        
        labelEstado.text = @"Puebla";
    }
    
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Querétaro"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"Queretaro.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"1.jpeg"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Revolucionario Institucional";
        labelEstado.text = @"Querétaro";
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Quintana Roo"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"quintana-roo.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"1.jpeg"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Revolucionario Institucional";
        labelEstado.text = @"Quintana Roo";
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"San Luis Potosí"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"san-luis-potosi.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"1.jpeg"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Revolucionario Institucional";     
        labelEstado.text = @"San Luis Potosí";
    }
    
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Sinaloa"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"Sinaloa.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"pan2.png"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Acción Nacional"; 
        labelEstado.text = @"Sinaloa";
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Sonora"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"sonora.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"pan2.png"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Acción Nacional"; 
        labelEstado.text = @"Sonora";
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Tabasco"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"tabasco.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"1.jpeg"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Revolucionario Institucional";     
        labelEstado.text = @"Tabasco";
    }
    
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Tamaulipas"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"tamaulipas.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"1.jpeg"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Revolucionario Institucional"; 
        labelEstado.text = @"Tamaulipas";
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Tlaxcala"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"tlaxcala.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"1.jpeg"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Revolucionario Institucional"; 
        labelEstado.text = @"Tlaxcala";
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Veracruz"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"veracruz.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"1.jpeg"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Revolucionario Institucional";     
        labelEstado.text = @"Veracruz";
    }
    
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Yucatán"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"yucatan.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"1.jpeg"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Revolucionario Institucional"; 
        labelEstado.text = @"Yucatán";
    }
    else if ([[pickerData objectAtIndex:row] isEqualToString:@"Zacatecas"]) {
        
        [self.imagenEstados setImage:[UIImage imageNamed:@"Zacatecas.png"]];
        [self.imagenPartido setImage:[UIImage imageNamed:@"1.jpeg"]];
        infoEstado.text = @"Estado gobernado actualmento por el Partido Revolucionario Institucional";     
        labelEstado.text = @"Zacatecas";
    }
    
}

-(IBAction)ocultarPicker:(id)sender{
    
    imagenPrincipal.alpha = 0.0;
    
    float valorVista = vista.alpha;
    
    if (valorVista == 1.0) {
        [UIView animateWithDuration:0.3 animations:^(){
            
            vista.alpha = 0.0;
            
            //pone la imagen actual
            //            botonFecha.imageView = [UIImage imageNamed:@"butFecha01"];
            
            //UIImage *imagenFecha = [UIImage imageNamed:@"butFecha01.png"];
            
            //[botonFecha setBackgroundImage:imagenFecha forState:UIControlStateNormal];
            
            
            
        }];
    }
    else {
        [UIView animateWithDuration:0.3 animations:^(){
            
            vista.alpha = 1.0;
            
            //pone la nueva imagen
            
            //UIImage *imagenFecha = [UIImage imageNamed:@"butFecha02.png"];
            
            //[botonFecha setBackgroundImage:imagenFecha forState:UIControlStateNormal];
            
            //[self.view addSubview:botonFecha];
            
        }];
    }
    
    
}

-(IBAction)FueraTeclado:(id)sender{
    
}

-(IBAction)soloOcultar:(id)sender{
    
    infoPartido.alpha = 1.0;
    
    float valorVista = vista.alpha;
    
    if (valorVista == 1.0) {
        [UIView animateWithDuration:0.3 animations:^(){
            
            vista.alpha = 0.0;
            
            //pone la imagen actual
            //            botonFecha.imageView = [UIImage imageNamed:@"butFecha01"];
            
            //UIImage *imagenFecha = [UIImage imageNamed:@"butFecha01.png"];
            
            //[botonFecha setBackgroundImage:imagenFecha forState:UIControlStateNormal];
            
            
            
        }];
    }
    else {
        [UIView animateWithDuration:0.3 animations:^(){
            
            vista.alpha = 1.0;
            
            //pone la nueva imagen
            
            //UIImage *imagenFecha = [UIImage imageNamed:@"butFecha02.png"];
            
            //[botonFecha setBackgroundImage:imagenFecha forState:UIControlStateNormal];
            
            //[self.view addSubview:botonFecha];
            
        }];
    }
    

    
}


#pragma mark - comparte
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
    
    NSString *nombre1 = labelNombre.text;
    NSString *edad1 = labelEdad.text;
    NSString *estado1 = labelEst.text;
    
    NSString *emailBody = [NSString stringWithFormat:@"Esta es mi opinión sobre las elecciones de este 2012, %@, Datos: %@, %@ , %@", opinionCadena, nombre1, edad1, estado1];
    
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
    NSString *mensaje01 = [NSString stringWithFormat:@"#ELECCIONES2012 #%@ %@",  labelEst.text, opinionCadena];
    
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


-(IBAction)GuardarDato:(id)sender{
    
    NSString *edadCiudadano = @"18";
    
    switch (segmentEdad.selectedSegmentIndex) {
            
        case 0:
            edadCiudadano = @"18";
   
            break;
        case 1:
            edadCiudadano = @"19 - 35";
            
            break;
        case 2:
            edadCiudadano = @"36 - 55";
            
            break;
        case 3:
            edadCiudadano = @"+ 55";
            
            break;
            
        default:
            break;
}
    
    
    
    NSString *savestring = nombre.text;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:savestring forKey:@"savestring"];
    [defaults synchronize];
    
    NSString *savestring2 = edadCiudadano;
    NSUserDefaults *defaults2 = [NSUserDefaults standardUserDefaults];
    [defaults2 setObject:savestring2 forKey:@"savestring2"];
    [defaults2 synchronize];
    
    NSString *savestring3 = labelEstado.text;
    NSUserDefaults *defaults3 = [NSUserDefaults standardUserDefaults];
    [defaults3 setObject:savestring3 forKey:@"savestring3"];
    [defaults3 synchronize];
    
    
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Elecciones 2012" message:@"Tu perfil ha sido Almacenado correctamente, puedes continuar utilizando la Aplicación" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
    [alert show];
    
}
-(void)CargarDato{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *loadstring = [defaults objectForKey:@"savestring"];
    [labelNombre setText:loadstring];
    
    NSUserDefaults *defaults2 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring2 = [defaults2 objectForKey:@"savestring2"];
    [labelEdad setText:loadstring2];
    
    NSUserDefaults *defaults3 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring3 = [defaults3 objectForKey:@"savestring3"];
    [labelEst setText:loadstring3];
    
}

-(IBAction)CargarDato1:(id)sender{
    
    [self CargarDato];
    
}

-(IBAction)OcultaText:(id)sender{
    
    [textopinion resignFirstResponder];
    
}

//Poner Anotacion

-(void)PonerAnotacion{
    
    //Holiday Inn
    MKCoordinateRegion regionActual;
    regionActual.center.latitude = mapaUbicacion.userLocation.location.coordinate.latitude;
    regionActual.center.longitude= mapaUbicacion.userLocation.location.coordinate.longitude;
    regionActual.span.longitudeDelta=0.01;
    regionActual.span.latitudeDelta=0.01;
    [mapaUbicacion setRegion:regionActual animated:YES];
    
        
    
    
}


-(IBAction)InfoApp:(id)sender{
    
    NSLog(@"Info...");
    
    if (butInfo.alpha == 0.0) {
        butInfo.alpha = 1.0;
    }
    else {
        butInfo.alpha = 0.0;
    }
    
}




@end
