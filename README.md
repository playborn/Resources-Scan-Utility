# Resources-Scan-Utility

--- READ ME IN PROGRESS ---

  - Because i have no clue about licences you have to get ImageMagick Portable by yourself and put the files in "modul\imageMagick\" ---
  - https://download.imagemagick.org/ImageMagick/download/binaries/ImageMagick-7.1.0-portable-Q16-x64.zip


InGame settings:
  - Set your Map to "OSM Humanity"
  - ScanCloud 0% transparent
 
How to use:
  - First screenshot without scancloud and bright mode, name the first screenshot "1.png" so the script use this picture as background (script sorts alphabetic)
  - Now make screenshots of your resource scans in DARK MODE (with Scancloud)
  - put all your pictures in "input" Folder
  - run "main.bat" (it will remove some unwanted colours from the scancloud like blue) and merge them together in one picture.
  - NOW you have in "merged" folder one picture with all resource hotspots
 
 
 How to use SERVER:
  - Start "server.bat"
  - The server will wait for "1.png" in "input" folder, if "1.png" is found, server starts to merge all *.png placed in "input" folder
  - after merging is done, the merged image is stored in "merged" folder.
  - !!ATTENTION!! Server will remove all *.png in "input" folder after merging is done.


:: Why server?
  - Place the script in your e.g GoogleDrive Cloud and run the server
  - Upload screenshots from your smartphone in GoogleDrive "input" folder
  - if all pictures you want to merge are uploaded name the "Brigth Mode screenshot" "1.png"
  - Server will start automatically merging the pirctures and clean the input folder
  - Now you can download the merged picture from your GoogleDrive

That means you can make a hotspot filtered merged Pircture on the fly.
