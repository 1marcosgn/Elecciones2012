//
//  Candidatos.m
//  Elecciones 2012
//
//  Created by Claudia Oliva on 14/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "Candidatos.h"

@interface Candidatos ()

@end

@implementation Candidatos


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
    
    //Scroll_Principal
    [scroll setScrollEnabled:YES];
    [scroll setContentSize:CGSizeMake(50, 750)];
    
    //Scroll_Principal
    [scrollNieto setScrollEnabled:YES];
    [scrollNieto setContentSize:CGSizeMake(50, 850)];
    
    //Scroll_Principal
    [scrollJVM setScrollEnabled:YES];
    [scrollJVM setContentSize:CGSizeMake(50, 850)];
    
    
    
    if ([labelPrueba.text isEqualToString:@"--"]) {
        [webAMLO loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://amloen2012.blogspot.mx/p/contacto.html"]]]; 
        timer = [NSTimer scheduledTimerWithTimeInterval:(1.0/2.0) target:self selector:@selector(loading) userInfo:nil repeats:YES];
    }
    else {
        [webQUADRI loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://nuevaalianza.mx/contacto.php"]]]; 
                
        timer1 = [NSTimer scheduledTimerWithTimeInterval:(1.0/2.0) target:self selector:@selector(loading1) userInfo:nil repeats:YES];
        
    }
    
    //cambiar color Boton Back
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]initWithTitle:@"Atras" style:UIBarButtonItemStyleBordered target:nil action:nil];
    
    backButton.tintColor = [UIColor brownColor];
    self.navigationItem.backBarButtonItem = backButton;
        
   	
}


-(void)loading{
    
    if(webAMLO.loading){
        [actividad startAnimating];
        actividad.alpha = 1.0;
    }
    else {
        [actividad stopAnimating];
        actividad.alpha = 0.0;
    }
    
}

-(void)loading1{
    
    if(webQUADRI.loading){
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

-(IBAction)tipoBioPropuestaNieto:(id)sender{
    
    
    
    switch (segmentoPenanieto.selectedSegmentIndex) {
        
        case 0:
            
            textView.alpha = 1.0;
            textPropuesta.alpha = 0.0;
            break;
        
        case  1:
            
            textView.alpha = 0.0;
            textPropuesta.alpha = 1.0;
            break;
                    
        default:
            break;
    }
    
}

-(IBAction)tipoBioPropuestaAMLO:(id)sender{
    
    switch (segmentoAMLO.selectedSegmentIndex) {
            
        case 0:
            
            textView.alpha = 1.0;
            textPropuesta.alpha = 0.0;
            break;
            
        case  1:
            
            textView.alpha = 0.0;
            textPropuesta.alpha = 1.0;
            break;

            
        default:
            break;
    }

    
}
-(IBAction)tipoBioPropuestaJVM:(id)sender{
    
    
    
    switch (segmentoJVM.selectedSegmentIndex) {
            
        case 0:
            textView.text = @"Fue la primera mujer en ocupar el cargo de Secretaria de Desarrollo Social y también la primera Secretaria de Educación Pública de México.   En el 2000, justo cuando arrancó la alternancia en nuestro país, Josefina entró a la vida política como diputada federal del Partido Acción Nacional en la LVIII legislatura (2000-2003), donde fue la subcoordinadora del área económica de su fracción parlamentaria. Al poco tiempo fue invitada por el Presidente Vicente Fox para integrarse a su gabinete como Secretaria de Desarrollo Social.    A su llegada a la Sedesol, consolidó y amplió el principal programa social del gobierno mexicano, Oportunidades, hoy replicado en más de una decena de países. Reforzó los programas de apoyo alimentario para las familias que más lo requerían. Promovió la primera Ley General de Desarrollo Social, que estableció el Consejo Nacional de Evaluación de Política Social, impulsando la revisión exhaustiva de las políticas públicas, pilar de la rendición de cuentas.   Como parte de su agresiva política social para disminuir la pobreza en México, instauró una nueva estrategia para mejorar los entornos urbanos mediante Habitat. Favoreció la participación de las organizaciones de la sociedad civil en la gestión y ejecución de políticas públicas e impulsó la primera Ley de Fomento a las Actividades Realizadas por Organizaciones de la Sociedad Civil. Respaldó a los grupos de migrantes mexicanos en Estados Unidos mediante el desarrollo de proyectos para sus comunidades de origen. Durante su gestión, los clubes de migrantes crecieron de 30 a casi 1000.  ";
            
            break;
            
        case  1:
            textView.text = @"Yo quiero un México de paz con justicia y oportunidades para todos. Sé que juntos lo podemos alcanzar.  Sí es posible construir un México donde prevalezca la justicia sobre la impunidad, la honestidad sobre la corrupción; un México en donde prive el Estado de Derecho, un México en donde la ley jamás se negocie.  Sí es posible construir un México con una economía dinámica y que genere empleos bien remunerados para su gente; un México fuerte y seguro de sí mismo, que compita y gane en el mundo; un México con la voluntad y la capacidad para desplegar su enorme potencial de crecimiento. Sí es posible construir un México más próspero, justo y solidario con las familias más vulnerables; un México que brinde oportunidades para que los mexicanos puedan salir adelante con su propio esfuerzo; un México que le ofrezca a su gente las herramientas para desarrollar sus capacidades y forjarse un mejor futuro.   Ese México es posible y lo vamos a lograr. Trabajaré con visión de Estado, más allá de coyunturas y oportunismos, para hacer los cambios que necesita México. Pongo al servicio de los mexicanos lo mejor de mí.";
            break;
            
        default:
            break;
    }

    
}
-(IBAction)tipoBioPropuestaQUADRI:(id)sender{
    
    switch (segmentoQuadri.selectedSegmentIndex) {
            
        case 0:
            
            textView.alpha = 1.0;
            textPropuesta.alpha = 0.0;
            break;
            
        case  1:
            
            textView.alpha = 0.0;
            textPropuesta.alpha = 1.0;
            break;
            
                   
        default:
            break;
    }

    
    
}

-(IBAction)OcultarTeclado:(id)sender{
    
    
}
-(IBAction)OcultarTexto:(id)sender{
    
    [textViewPropuesta resignFirstResponder];
    
    
}

-(IBAction)Mailsend:(id)sender{
    
    [self ValidarCampos];
    
    if ([labelNieto.text isEqualToString:@"--"] && camposllenos == TRUE ) {
        
        [self mailIt];
        
    }
    else if([labelNieto.text isEqualToString:@"::"] && camposllenos == TRUE) {
        [self mailItJVM];
    }
    
    
    
}

#pragma eMail - Envio de Correo

-(void)mailIt {
    
    MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
    
    picker.mailComposeDelegate = self;
    [picker setSubject:@"Propuesta - Elecciones 2012"];
    
    NSArray *aReceptores=[NSArray arrayWithObjects:@"propuestasepn@gmail.com", nil];
    [picker setToRecipients:aReceptores];
    
    
    
//    UIImage *roboPic = [UIImage imageNamed:@"nofondo.png"];
//    NSData *imageData = UIImageJPEGRepresentation(roboPic, 1);
//    [picker addAttachmentData:imageData mimeType:@"image/png" fileName:@"nofondo.png"];
//    
   
    NSString *nombre = textNombre.text;
//    NSString *correo = textCorreo.text;
    NSString *estado = textEstado.text;
//    NSString *cp = textCp.text;
//    NSString *celular = textCelular.text;
    NSString *propuesta = textViewPropuesta.text;
    
    //    NSString *mensaje = [NSString stringWithFormat:@"#VisitaDurango %@", msj];
    
    NSString *msj = [NSString stringWithFormat:@"Hola mi nombre es %@, soy originario de %@, y mi propuesta es la siguiente: %@", nombre,estado,propuesta];
    
    NSString *emailBody = msj;
    [picker setMessageBody:emailBody isHTML:YES];
    
    [self presentModalViewController:picker animated:YES];
}


-(void)mailItJVM {MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
    
    picker.mailComposeDelegate = self;
    [picker setSubject:@"Propuesta - Elecciones 2012"];
    
    NSArray *aReceptores=[NSArray arrayWithObjects:@"josefina@josefina.mx", nil];
    [picker setToRecipients:aReceptores];
    
    
    //    UIImage *roboPic = [UIImage imageNamed:@"nofondo.png"];
    //    NSData *imageData = UIImageJPEGRepresentation(roboPic, 1);
    //    [picker addAttachmentData:imageData mimeType:@"image/png" fileName:@"nofondo.png"];
    //    
    
    NSString *nombre = textNombre.text;
    //    NSString *correo = textCorreo.text;
    NSString *estado = textEstado.text;
    //    NSString *cp = textCp.text;
    //    NSString *celular = textCelular.text;
    NSString *propuesta = textViewPropuesta.text;
    
    //    NSString *mensaje = [NSString stringWithFormat:@"#VisitaDurango %@", msj];
    
    NSString *msj = [NSString stringWithFormat:@"Hola mi nombre es %@, soy originario de %@, y mi propuesta es la siguiente: %@", nombre,estado,propuesta];
    
    NSString *emailBody = msj;
    [picker setMessageBody:emailBody isHTML:YES];
    
    [self presentModalViewController:picker animated:YES];
}


-(void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
    
    [self dismissModalViewControllerAnimated:YES];
}

bool camposllenos = TRUE;

-(void)ValidarCampos{
    
    if ([textNombre.text isEqualToString:@""] || [textCorreo.text isEqualToString:@""] || [textEstado.text isEqualToString:@""] || [textCp.text isEqualToString:@""] || [textCelular.text isEqualToString:@""]) {
        
        camposllenos = FALSE;
        
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Elecciones 2012" message:@"Es necesario completar todos los Campos" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        [alert show];

        
    }
    else {
        camposllenos = TRUE;
    }
    
}


@end
