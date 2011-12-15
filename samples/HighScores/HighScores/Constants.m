/*
 * Copyright 2010-2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

#import "Constants.h"

@implementation Constants


+(UIAlertView *)credentialsAlert
{
    return [[[UIAlertView alloc] initWithTitle:@"Missing Credentials" message:CREDENTIALS_MESSAGE delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] autorelease];        
}

+(NSString*)getRandomPlayerName
{
    NSArray *playerNames = [[[NSArray alloc] initWithObjects:@"Norm", @"Jim", @"Jason", @"Zach", @"Matt", @"Glenn", @"Will", @"Wade", @"Trevor", @"Jeremy", @"Ryan", @"Matty", @"Steve", @"Pavel", nil] autorelease];
    int name1 = arc4random() % [playerNames count];
    int name2 = arc4random() % [playerNames count];
    
    return [NSString stringWithFormat:@"%@ %@", [playerNames objectAtIndex:name1], [playerNames objectAtIndex:name2]];
}

+(int)getRandomScore
{
    return (arc4random() % 1000) + 1;
}

@end

