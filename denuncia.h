//
//  denuncia.h
//  Elecciones 2012
//
//  Created by Claudia Oliva on 04/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Twitter/Twitter.h>
#import <Accounts/Accounts.h>

@interface denuncia : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>{
    
#pragma mark Metodos Fotografia
    UIImageView *imagenView;
    UIButton *abrirGaleria;
    UIButton *tomarFoto;
    
    
}

@property (nonatomic, retain) IBOutlet UIImageView *imagenView;
@property (nonatomic, retain) IBOutlet UIButton *abrirGaleria;
@property (nonatomic, retain) IBOutlet UIButton *tomarFoto;

-(IBAction)abrirGaleria:(id)sender;
-(IBAction)tomarFoto:(id)sender;


-(IBAction)showTweetSheet;


@end
