//
//  TestYYTextLayout.m
//  YYTextDemo
//
//  Created by Ray on 2024/12/5.
//  Copyright © 2024 ibireme. All rights reserved.
//

#import "SHYYlTableViewCell.h"
#import "SHLayoutYYLabel.h"
#import "TestYYTextLayout.h"

@interface TestYYTextLayout ()<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation TestYYTextLayout

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self.tableView registerNib:[UINib nibWithNibName:@"SHYYlTableViewCell" bundle:nil] forCellReuseIdentifier:@"SHYYlTableViewCell"];
    
    self.tableView.dataSource = self;
    [self.tableView reloadData];
    
}
- (NSAttributedString *)padding {
    NSMutableAttributedString *pad = [[NSMutableAttributedString alloc] initWithString:@"\n\n"];
    pad.yy_font = [UIFont systemFontOfSize:4];
    return pad;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath { 
    SHYYlTableViewCell * cell = (SHYYlTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"SHYYlTableViewCell" forIndexPath:indexPath];
    NSInteger count = indexPath.item + 1;
    NSString * text = @"";
    for (int i = 0; i < count; i++) {
        text = [NSString stringWithFormat:@"%@%@",text,@"你好先生----- https://www.tiktok.com/@aurapurabr?_t=ZM-8wh3ubMnwEq&_r=1 "];
    }
    NSMutableAttributedString * newText = [[NSMutableAttributedString alloc] initWithString:text];
    
    newText = [cell.yyLabel detectText:newText];
    cell.yyLabel.attributedText = newText;
    
    return  cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section { 
    return  20;
}


@end
