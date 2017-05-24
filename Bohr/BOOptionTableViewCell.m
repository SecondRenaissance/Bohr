//
//  BOOptionTableViewCell.m
//  Bohr
//
//  Created by David Román Aguirre on 21/6/15.
//  Copyright (c) 2015 David Roman. All rights reserved.
//

#import "BOOptionTableViewCell.h"

#import "BOTableViewCell+Subclass.h"

@interface BOOptionTableViewCell()


@end

@implementation BOOptionTableViewCell

@synthesize settingsValue = _settingsValue;

- (void)setup {
	self.selectionStyle = UITableViewCellSelectionStyleDefault;
}

- (void)setSettingsValue:(id)settingsValue
{
	_settingsValue = settingsValue;
}

- (id)settingsValue
{
	if (_settingsValue)
	{
		return _settingsValue;
	}
	return [NSNumber numberWithInteger:self.indexPath.row];
}

- (void)wasSelectedFromViewController:(BOTableViewController *)viewController
{
    self.setting.value = self.settingsValue;
}

- (void)settingValueDidChange
{
    BOOL isSelected = (self.setting.value == self.settingsValue);
	self.accessoryType = isSelected ? UITableViewCellAccessoryCheckmark : UITableViewCellAccessoryNone;
}

@end
