#import "LibExifTestViewController.h"

#include <libjpeg/jpeg-data.h>

@implementation LibExifTestViewController

- (void)viewDidLoad
{
	NSString * imagePath = [[NSBundle mainBundle] pathForResource:@"TestImage" ofType:@"jpg"];
	NSData * imageData = [NSData dataWithContentsOfFile:imagePath];
	if (imageData)
	{
		JPEGData * jpegData = jpeg_data_new_from_data((const unsigned char *)[imageData bytes], [imageData length]);
		if (jpegData)
		{
			ExifData * exifData = jpeg_data_get_exif_data(jpegData);
			if (exifData)
			{
				textView.text = @"Read EXIF data. See console for details";
				
				exif_data_dump(exifData);
								
				exif_data_unref(exifData); exifData = NULL;
			}
			else
			{
				textView.text = @"Could not read EXIF data from JPEG data";
			}
			jpeg_data_free(jpegData); jpegData = NULL;
		}
		else
		{
			textView.text = [NSString stringWithFormat:@"Could not read JPEGData. File size was %u bytes.", [imageData length]];
		}
	}
	else
	{
		textView.text = [NSString stringWithFormat:@"Could not read contents of file %@", imagePath];
	}
}

@end
