//
//  denuncia.m
//  Elecciones 2012
//
//  Created by Claudia Oliva on 04/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "denuncia.h"

@interface denuncia ()

@end

@implementation denuncia

@synthesize imagenView,abrirGaleria,tomarFoto;

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
    
    //cambiar color Boton Back
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]initWithTitle:@"Atras" style:UIBarButtonItemStyleBordered target:nil action:nil];
    
    backButton.tintColor = [UIColor brownColor];
    self.navigationItem.backBarButtonItem = backButton;
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

#pragma mark - Fotografía

-(IBAction)abrirGaleria:(id)sender{
    
    //Iniciar el controlador
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    
    //Definir el Delegate
    picker.delegate = self;
    
    //Establecer el origen de la Imagen
    picker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    
    //Agrega la vista del controlador a la pantalla
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        
        UIPopoverController *popover = [[UIPopoverController alloc]initWithContentViewController:picker];
        
        //        [popover presentPopoverFromRect:CGRectMake(200, 940.0, 0.0, 0.0) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
        
        [popover presentPopoverFromRect:CGRectMake(100, 490.0, 0.0, 0.0) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
        
        
    }
    else {
        [self presentModalViewController:picker animated:YES];
    }
    
    
}

-(IBAction)tomarFoto:(id)sender{
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    [self presentModalViewController:picker animated:YES];    
}


//Recibe el mensaje cuando el controlador a finalizado.
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
    //Quita la vista del controlador.
    [picker dismissModalViewControllerAnimated:YES];
    
    //Establece la imagen tomada en el objeto UIImageView.
    imagenView.image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    
}


#pragma mark - Twitter
-(IBAction)showTweetSheet{
    
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
    
//    NSString *opinionCadena = textopinion.text;
    
    //NSString *mensaje = @"Im just using the Amadeus app try it thats my score %@";
    NSString *mensaje01 = @"#ELECCIONES2012";
    
    //  Set the initial body of the Tweet2
    [tweetSheet setInitialText:mensaje01]; 
    
    //  Adds an image to the Tweet
    //  For demo purposes, assume we have an image named 'larry.png'
    //  that we wish to attach
    
           if (![tweetSheet addImage:imagenView.image]) 
            {
    
    
    
    
        if (![tweetSheet addImage:[UIImage imageNamed:imagenView]]) {
            NSLog(@"Unable to add the image!");
        }
            }
    
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
