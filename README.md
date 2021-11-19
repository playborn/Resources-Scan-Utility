# Resources-Scan-Utility

--- README IN PROGESS ---

  - Beacause i have no clue about licences you have to get ImageMagick Portable by yourself and put the files in "modul\imageMagick\" ---
  - https://download.imagemagick.org/ImageMagick/download/binaries/ImageMagick-7.1.0-portable-Q16-x64.zip


InGame settings:
  - Set your Map to "OSM Humanity"
  - ScanCloud 0% transparent
 
How to use:
  - First screenshot without Scancloud and Bright mode, name the first screenshot "1.png" so the Script use this picture as background (script sorts alphabetic)
  - Now make screenshots of your resource scans in DARK MODE (with Scancloud)
  - put all your pictures in "input" Folder
  - run "main.bat" (it will remove some unwanted colors from the scancloud like blue and merge them together in one picture.
  - NOW you have in "merged" folder one picture with all resource hotspots
 
 
 How to use SERVER:
  - Start "server.bat"
  - The Server will wait for "1.png" in "input" folder, if "1.png" is found, Server starts to merge all *.png placed in "input" folder
  - after merging is done, the merged Image is stored in "merged" folder.
  - !!ATTENTION!! Server will remove all *.png in "input" folder after merging is done.


:: Why Server?
  - Place the Script in your e.g GoogleDrive Cloud and run the Server
  - Upload Screenshots from your smartphone in GoogleDrive "input" folder
  - if all pictures you want to merge are uploaded name the "Brigth Mode screenshot" "1.png"
  - Server will start automatically merging the pirctures and clean the input folder
  - Now you can download the merged Picture from your GoogleDrive

That means you can make a Hotspot filtered merged Pircture on the fly.
