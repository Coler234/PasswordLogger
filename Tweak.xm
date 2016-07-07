%hook Springboard
		
	- (void)applicationDidFinishLaunching:(id)arg1{
		UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Respring!" message:@"Yay!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
		[alert show];
		[alert release];
	}
	
	
	
%end
*/

%hook SBApplicationIcon
-(void)launch
{
NSString *appName = [self displayName];
NSString *message = [NSString stringWithFormat:@"The app %@ has been launched", appName, nil];
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:appName message:message delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    [alert release];
    %orig;
}
%end

	



/*
	TODO: Log attempted password entries!
	
	When a password is submitted, create a log file and print it in their along with the time/date
	Also log any apps that they tried to open along with unlocking the phone
	
	Create an app to read and display the entries
	
	Save the file at: /User/Documents/PasswordLogger/Logs
	(.plist file? or sometype of file that could be read easily for when the app is created)


*/



//#import <version.h>



/*
BOOL isEnabled = YES;
NSString *passwordSubmitted = @"6666";
NSString *filePath = @"log.txt";

%hook SBDeviceLockController
	
	- (_Bool)attemptDeviceUnlockWithPassword:(id)arg1 appRequested:(_Bool)arg2{
			passwordSubmitted = arg1;

			//Create the log file, and submit the query

			//if file does not exist{
		if(![[NSFileManager defaultManager]fileExistsAtPath:filePath]){
				NSString *content = (passwordSubmitted);
				NSData *fileContents = [content dataUsingEncoding:NSUTF8StringEncoding];
				[[NSFileManager defaultManager] createFileAtPath:@"log.txt"
									contents:fileContents
									attributes:nil];
		}else{
			NSFileHandle *myHandle = [NSFileHandle fileHandleForWritingAtPath:filePath];
			[myHandle seekToEndOfFile];
			[myHandle writeData:[passwordSubmitted dataUsingEncoding:NSUTF8StringEncoding]];

		}
			//}else{
				//So if it does extist, just write the new entry into the file



		//}
		%orig;
		return passwordSubmitted;
		UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Password:" message:@"Test" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
		[alert show];
		[alert release];
	}
	
	
	
%end

*/
