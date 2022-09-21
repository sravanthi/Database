BEGIN
   IF NOT EXISTS (SELECT * FROM tblDoctor 
                   WHERE DoctorName = 'Shaun the Sheep'
                   AND DoctorNumber=13
                   )
   BEGIN
       INSERT INTO tblDoctor (DoctorName, DoctorNumber)
       VALUES ('Shaun the Sheep', 13)
   END
END


SELECT * FROM tblDoctor WHERE DoctorNumber=13

delete from tblDoctor where DoctorNumber =13