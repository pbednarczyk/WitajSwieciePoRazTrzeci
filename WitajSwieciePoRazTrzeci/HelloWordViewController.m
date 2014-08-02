//
//  HelloWordViewController.m
//  WitajSwieciePoRazTrzeci
//
//  Created by Pawel Bednarczyk on 02.08.2014.
//  Copyright (c) 2014 iOSTutki. All rights reserved.
//

#import "HelloWordViewController.h"

@interface HelloWordViewController ()

@end

@implementation HelloWordViewController

-(instancetype)init {
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake(106, 106);
    layout.minimumInteritemSpacing = 1.0;
    layout.minimumLineSpacing = 1.0;
    
    self = [super initWithCollectionViewLayout:layout];
    return self;
}

-(void) viewDidLoad {
    [super viewDidLoad];
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"Cell"];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.tablica = @[@"Styczeń", @"Luty", @"Marzec", @"Kwiecień", @"Maj", @"Czerwiec", @"Lipiec", @"Sierpień", @"Wrzesień", @"Październik", @"Listopad", @"Grudzień"];

}

-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.tablica count];
}

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor lightGrayColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    label.attributedText = [[NSAttributedString alloc] initWithString:[self.tablica objectAtIndex:indexPath.row]];
    [cell addSubview:label];
     label.numberOfLines = 2;
    
    return cell;
}
@end

