//
//  voxClase.m
//  Elecciones 2012
//
//  Created by Claudia Oliva on 07/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "voxClase.h"
#import "JSON.h"

@interface voxClase ()

@end

@implementation voxClase

@synthesize outputTextView;

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
    
    if ([labelMuestra.text isEqualToString:@"--"]) {
        NSLog(@"Inicial");
    }
    else {
        
        NSURL *url = [NSURL URLWithString:@"https://api.twitter.com/1/statuses/public_timeline/epn.json"];
        NSData *datos = [[NSData alloc] initWithContentsOfURL:url];
        
        NSError *error = nil;
        
        NSString *datos_string = [[NSString alloc] initWithData:datos encoding:NSUTF8StringEncoding];
        
        SBJsonParser *parser = [[SBJsonParser alloc] init];
        
        //Muestra todo el contenido del array tweet
        NSLog(@"%@",[parser objectWithString:datos_string error:&error]);
        
        //[parser objectWithString:datos_string error:&error];
        
        
        
        NSArray *datos_array = [[NSArray alloc] initWithArray:[parser objectWithString:datos_string error:&error]];
        
        
        for (NSDictionary *item in datos_array) {
            
            //NSLog(@"%@",[[item objectForKey:@"user"] objectForKey:@"name"]);
            //NSLog(@"%@",[[item objectForKey:@"user"] objectForKey:@"name"]);
            //NSLog(@"%@",[item objectForKey:@"text"]);
            
            //NSLog(@"Tweet: %@ ::: Usuario: %@",[item objectForKey:@"text"], [[item objectForKey:@"user"] objectForKey:@"name"]);
            
            
            tweet01.text = [item objectForKey:@"text"];
            usuario01.text = [[item objectForKey:@"user"] objectForKey:@"name"];
            
        }
        
        [self nuevotweet];
        [self nuevoTweet03];
        [self nuevoTweet04];
        [self nuevoTweet05];

        
    }
    
    
    //cambiar color Boton Back
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]initWithTitle:@"Atras" style:UIBarButtonItemStyleBordered target:nil action:nil];
    
    backButton.tintColor = [UIColor brownColor];
    self.navigationItem.backBarButtonItem = backButton;
    
         
    
    [super viewDidLoad];
    
   
	
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


#pragma mark - Twitter Refresh

-(IBAction)Refresh:(id)sender{
    
    
    //si alguno esta vacio, el proceso correspondiente a esa celda se realiza de nuevo para cargar los tweets 
    
    //NSURL *url = [NSURL URLWithString:@"https://api.twitter.com/1/statuses/public_timeline.json"];
    NSURL *url = [NSURL URLWithString:@"https://api.twitter.com/1/statuses/user_timeline.json?include_entities=true&include_rts=true&screen_name=twitterapi&count=2"];
    NSData *datos = [[NSData alloc] initWithContentsOfURL:url];
    
    NSError *error = nil;
    
    NSString *datos_string = [[NSString alloc] initWithData:datos encoding:NSUTF8StringEncoding];
    
    SBJsonParser *parser = [[SBJsonParser alloc] init];
    
    
    NSArray *datos_array = [[NSArray alloc] initWithArray:[parser objectWithString:datos_string error:&error]];
    
    
    for (NSDictionary *item in datos_array) {
        
        NSLog(@"Tweet: %@ ::: Usuario: %@",[item objectForKey:@"text"], [[item objectForKey:@"user"] objectForKey:@"name"]);
        
        
        tweet01.text = [item objectForKey:@"text"];
        usuario01.text = [[item objectForKey:@"user"] objectForKey:@"name"];
        
        
        
        //NSString *imageUrl = [[item objectForKey:@"user"] objectForKey:@"profile_image_url"];
        
        //        NSString *imageUrl = @"http://twimg0-a.akamaihd.net/profile_images/721191736/logo.png";
        //        
        //        NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:imageUrl]];
        //        imagen.image = [UIImage imageWithData:data];
        
       
        //Imagen
        /*
        NSString *imagestring = @"http://twimg0-a.akamaihd.net/profile_images/721191736/logo.png";
        
        NSURL *urlone= [NSURL URLWithString:imagestring];
        
        NSData *new=[NSData dataWithContentsOfURL:urlone];
        
        UIImageView *imageview =[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
        [imageview setImage:[UIImage imageWithData:new]];
        [self.view addSubview:imageview];
        */
        
    }
    
    [self nuevotweet];
    
}


-(void)nuevotweet{
    
    NSURL *url = [NSURL URLWithString:@"https://api.twitter.com/1/statuses/public_timeline.json"];
    NSData *datos = [[NSData alloc] initWithContentsOfURL:url];
    
    NSError *error = nil;
    
    NSString *datos_string = [[NSString alloc] initWithData:datos encoding:NSUTF8StringEncoding];
    
    SBJsonParser *parser = [[SBJsonParser alloc] init];
    
    
    NSArray *datos_array = [[NSArray alloc] initWithArray:[parser objectWithString:datos_string error:&error]];
    
    
    for (NSDictionary *item in datos_array) {
        
        NSLog(@"Tweet: %@ ::: Usuario: %@",[item objectForKey:@"text"], [[item objectForKey:@"user"] objectForKey:@"name"]);
        
        
        //NSString *zonaTiempo = [[item objectForKey:@"user"] objectForKey:@"time_zone"];
        
        //if ([zonaTiempo isEqualToString:@"Mexico"]) {
        
        tweet02.text = [item objectForKey:@"text"];
        usuario02.text = [[item objectForKey:@"user"] objectForKey:@"name"];
        
        
    }
    
}


-(void)nuevoTweet03{
    
    NSURL *url = [NSURL URLWithString:@"https://api.twitter.com/1/statuses/public_timeline.json"];
    NSData *datos = [[NSData alloc] initWithContentsOfURL:url];
    
    NSError *error = nil;
    
    NSString *datos_string = [[NSString alloc] initWithData:datos encoding:NSUTF8StringEncoding];
    
    SBJsonParser *parser = [[SBJsonParser alloc] init];
    
    
    NSArray *datos_array = [[NSArray alloc] initWithArray:[parser objectWithString:datos_string error:&error]];
    
    
    for (NSDictionary *item in datos_array) {
        
        NSLog(@"Tweet: %@ ::: Usuario: %@",[item objectForKey:@"text"], [[item objectForKey:@"user"] objectForKey:@"name"]);
        
        
        tweet03.text = [item objectForKey:@"text"];
        usuario03.text = [[item objectForKey:@"user"] objectForKey:@"name"];
        
        
    }
    
    
}

-(void)nuevoTweet04{
    
    NSURL *url = [NSURL URLWithString:@"https://api.twitter.com/1/statuses/public_timeline.json"];
    NSData *datos = [[NSData alloc] initWithContentsOfURL:url];
    
    NSError *error = nil;
    
    NSString *datos_string = [[NSString alloc] initWithData:datos encoding:NSUTF8StringEncoding];
    
    SBJsonParser *parser = [[SBJsonParser alloc] init];
    
    
    NSArray *datos_array = [[NSArray alloc] initWithArray:[parser objectWithString:datos_string error:&error]];
    
    
    for (NSDictionary *item in datos_array) {
        
        NSLog(@"Tweet: %@ ::: Usuario: %@",[item objectForKey:@"text"], [[item objectForKey:@"user"] objectForKey:@"name"]);
        
        
        tweet04.text = [item objectForKey:@"text"];
        usuario04.text = [[item objectForKey:@"user"] objectForKey:@"name"];
        
        
    }
    
    
    
}

-(void)nuevoTweet05{
    
    NSURL *url = [NSURL URLWithString:@"https://api.twitter.com/1/statuses/public_timeline.json"];
    NSData *datos = [[NSData alloc] initWithContentsOfURL:url];
    
    NSError *error = nil;
    
    NSString *datos_string = [[NSString alloc] initWithData:datos encoding:NSUTF8StringEncoding];
    
    SBJsonParser *parser = [[SBJsonParser alloc] init];
    
    
    NSArray *datos_array = [[NSArray alloc] initWithArray:[parser objectWithString:datos_string error:&error]];
    
    
    for (NSDictionary *item in datos_array) {
        
        NSLog(@"Tweet: %@ ::: Usuario: %@",[item objectForKey:@"text"], [[item objectForKey:@"user"] objectForKey:@"name"]);
        
        
        tweet05.text = [item objectForKey:@"text"];
        usuario05.text = [[item objectForKey:@"user"] objectForKey:@"name"];
        
        
    }
    
    
}

- (IBAction)getPublicTimeline:(id)sender {
    // Create a request, which in this example, grabs the public timeline.
    // This example uses version 1 of the Twitter API.
    // This may need to be changed to whichever version is currently appropriate.
    TWRequest *postRequest = [[TWRequest alloc] initWithURL:[NSURL URLWithString:@"http://api.twitter.com/1/statuses/public_timeline.json"] parameters:nil requestMethod:TWRequestMethodGET];
    
    // Perform the request created above and create a handler block to handle the response.
    [postRequest performRequestWithHandler:^(NSData *responseData, NSHTTPURLResponse *urlResponse, NSError *error) {
        NSString *output;
        
        if ([urlResponse statusCode] == 200) {
            // Parse the responseData, which we asked to be in JSON format for this request, into an NSDictionary using NSJSONSerialization.
            NSError *jsonParsingError = nil;
            NSDictionary *publicTimeline = [NSJSONSerialization JSONObjectWithData:responseData options:0 error:&jsonParsingError];
            output = [NSString stringWithFormat:@"HTTP response status: %i\nPublic timeline:\n%@", [urlResponse statusCode], publicTimeline];
        }
        else {
            output = [NSString stringWithFormat:@"HTTP response status: %i\n", [urlResponse statusCode]];
        }
        
        [self performSelectorOnMainThread:@selector(displayText:) withObject:output waitUntilDone:NO];
    }];
}


-(void)displayText:(NSString *)text{
    
    self.outputTextView.text = text;
    
}

-(void)TweetMostrar:(int)partido{

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
    
    NSString *candidato;
    
    //NSString *mensaje = @"Im just using the Amadeus app try it thats my score %@";
    
    if (partido == 3) {
        candidato = @"@g_quadri";
    }
    if (partido == 1) {
        candidato = @"@JosefinaVM";
    }
    if (partido == 2) {
        candidato = @"@EPN";
    }
    if (partido == 4) {
        candidato = @"@lopezobrador_";
    }
    
    
    NSString *mensaje01 = [NSString stringWithFormat:@"%@ %@", candidato, opinionCadena];
    
    //  Set the initial body of the Tweet2
    [tweetSheet setInitialText:mensaje01]; 
    
    //  Presents the Tweet Sheet to the user
    [self presentViewController:tweetSheet animated:YES completion:^{
        NSLog(@"Tweet sheet has been presented.");
    }];
    
}

-(IBAction)TweetPAN:(id)sender{
    
    [self TweetMostrar:1];
    
}
-(IBAction)TweetPRI:(id)sender{
    
    [self TweetMostrar:2];
    
}
-(IBAction)TweetNA:(id)sender{
    
    [self TweetMostrar:3];
    
}


-(IBAction)TweetPRD:(id)sender{
    
    [self TweetMostrar:4];    
    
}

-(IBAction)oculta:(id)sender{
    
    
}

@end
