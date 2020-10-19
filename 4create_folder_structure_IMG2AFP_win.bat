@ECHO OFF

Set dir=E:\OutputTransformIMG2AFP\win\output\
Echo Deleting all files from %dir%
del %dir%\* /F /Q

Echo Deleting all folders from %dir%
for /d %%p in (%dir%\*) Do rd /Q /S "%%p"
@echo Folder deleted.

mkdir E:\OutputTransformIMG2AFP\win\output\out_PDF\TestFiles
echo mkdir E:\OutputTransformIMG2AFP2win\output\out_PDF\TestFiles

mkdir E:\OutputTransformIMG2AFP\win\output\out_TIFF\MF
echo mkdir E:\OutputTransformIMG2AFP\win\output\out_TIFF\MF

c:\Windows\System32\xcopy.exe /T /e e:\TestFiles_folder_structure\TestFiles\* E:\OutputTransformIMG2AFP\win\output\out_PDF\TestFiles\ /s /i
c:\Windows\System32\xcopy.exe /T /e e:\TestFiles_folder_structure\TestFiles\* E:\OutputTransformIMG2AFP\win\output\out_TIFF\MF\ /s /i

echo Folder structure succesfully done!