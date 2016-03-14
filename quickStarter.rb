# Created by Kyle Cook
# Download and Install ShoesRB GUI interface before running
# Change drives and file paths in variables accordingly to computer specifications
 
 
 
Shoes.app title: "Arrow Electronics", #title for window when opened in upper left corner
 
        #Application window attributes
        :width => 380,
        :height =>450, 
        resizable: false do
        background black, :radius => 24
     
      
=begin
#Uncomment to create custom title instead of using arrow image below
 
         title("Arrow Electronics",   
                  top:    20,
                  align:  "center",
                  font:   "Trebuchet MS",
                  stroke: white)        
=end   
 
        # Arrow Image used for title inside program (set image path where picture is)
        image 'C:\Users\a75722\Pictures\arr.jpg', :width => 263, :height => 84, :left => 60
     
        # Set DIR to change icon in the upper left corner
        DIR = 'U:/app-icon.png' 
        Shoes.APPS.each {|a| a.set_window_icon_path("#{DIR}") } 
 
# Oracle DMS------------------------------------------------------  
 
oracleLink = 'http://vasprod.arrow.com/OA_HTML/RF.jsp?function_id=28716'
 
        flow :left => 51, :top =>90 do
        flow width: 0.3, height: 40 do
         
                button 'Oracle DMS', width: 1.0, height: 1.0 do(
                %x(start #{oracleLink})
                )
                end
            end
        end
 
#CCPSnums------------------------------------------------------ 
 
CCPSpath ='C:\Access97\Office\MSACCESS.EXE "V:\AccessDB\CCPSnums.mdb"'
 
        flow :left => 51, :top =>150 do
        flow width: 0.3, height: 40 do
         
                button 'CCPSnums', width: 1.0, height: 1.0 do(
                CCPsumsCMD = system("start #{CCPSpath}"))
                end    
            end
        end
         
#WIP Folder------------------------------------------------------
 
wipPath = 'B:\WIP_EVAL'
     
        flow :left => 51, :top =>210 do
        flow width: 0.3, height: 40 do
                 
                button 'WIP Folder', width: 1.0, height: 1.0 do(
                %x(start #{wipPath}))
                end
            end
        end
         
#Images Folder------------------------------------------------------    
 
imagePath = 'H:'
 
        flow :left => 51, :top =>270 do
        flow width: 0.3, height: 40 do
         
                button 'Images Folder', width: 1.0, height: 1.0 do(
                %x(start #{imagePath}))
                end
            end
        end
         
         
#NCMR ----------------------------------------------------------
 
NCMRpath ='C:\Access97\Office\MSACCESS.EXE "V:\AccessDB\Arrow NCMR.mdb"'
 
        flow :left => 51, :top =>330 do
        flow width: 0.3, height: 40 do
         
                button 'NCMR', width: 1.0, height: 1.0 do(
                ncmrCMD = system("start #{NCMRpath}"))
                end    
            end
        end
 
=begin 
#Power Off (uncomment if wanted, need to realign button position if using)
 
        flow :left => 51, :top =>390 do
        flow width: 0.3, height: 40 do
         
                    button 'Power Off', width: 1.0, height: 1.0 do(
                        if confirm("Are you sure you want to power off?")
                        %x(shutdown /s)
                        end)
                    end
                end
            end
=end
 
# LABELS--------------------------------------------------------------
 
labelDrive = 'Z:'
 
            flow :left => 51, :top =>390 do
        flow width: 0.3, height: 40 do
            button 'Labels', width: 1.0, height: 1.0 do(
                %x(start #{labelDrive}))
                end
            end
        end
                 
#Images2 Folder------------------------------------------------------       
 
image2Drive = 'I:'
 
flow :left => 220, :top =>90 do
        flow width: 0.3, height: 40 do
         
                button 'Images2 Folder', width: 1.0, height: 1.0 do(
                %x(start #{image2Drive}))
                end
            end
        end
         
#Shared Drive------------------------------------------------------ 
 
sharedPath = 'V:'
 
        flow :left => 220, :top =>150 do
        flow width: 0.3, height: 40 do
         
                button 'Shared Drive', width: 1.0, height: 1.0 do(
                %x(start #{sharedPath}))
                end
            end
        end
         
#ADP eTime------------------------------------------------------    
 
ADPlink = 'http://www.planetarrow.com/na/employee_resources/hr/payroll/G000089'
        flow :left => 220, :top =>210 do
        flow width: 0.3, height: 40 do
         
                button 'ADP eTime', width: 1.0, height: 1.0 do(
                %x(start #{ADPlink}))
                end
            end
        end 
         
#Email------------------------------------------------------    
 
emailPath = ' "" "C:\Program Files (x86)\Microsoft Office\Office14\OUTLOOK.EXE"'
 
        flow :left => 220, :top =>270 do
        flow width: 0.3, height: 40 do
                    button 'Email', width: 1.0, height: 1.0 do(
                    EmailCMD = system("start #{emailPath}"))
                    end    
            end
        end
         
#My Documents------------------------------------------------------ 
 
myDocPath = 'C:\Users\a75722\Documents'
 
        flow :left => 220, :top =>330 do
        flow width: 0.3, height: 40 do
         
                button 'My Documents', width: 1.0, height: 1.0 do(
                %x(start #{myDocPath}))
                end
            end
        end
 
#RPE Path----------------------------------------------------------------
         
rpePath = 'C:\Access97\Office\MSACCESS.EXE "V:\AccessDB\RPE.mdb"'
 
        flow :left => 220, :top =>390 do
        flow width: 0.3, height: 40 do
         
                button 'RPE', width: 1.0, height: 1.0 do(
                RPECMD = system("start #{rpePath}"))
                end
            end
        end
         
#----------------------------------------------------------------------------       
         
end # EOF