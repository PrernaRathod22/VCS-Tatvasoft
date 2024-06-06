INSERT INTO city (id, countryid, cityname) VALUES
  ('001', '01', 'Ahmedabad '),
  ('002', '01', 'Navsari'),
  ('003', '02', 'Texas '),
  ('004', '03', 'Toronto '),
  ('005', '04', 'Paris ');
  
  
-- Insert Customer Order Records
INSERT INTO country (id, countryname) VALUES
  (01, 'India'),
  (02, 'US'),
  (03, 'Canada'),
  (04, 'France' );

INSERT INTO MissionApplication (MissionId, UserId, AppliedDate, Status, Sheet) VALUES
(1, 1, '2024-05-20 10:00:00', true, 3),
(2, 2, '2024-06-21 11:30:00', false, 2),
(3, 3, '2024-07-19 09:45:00', true, 4),
(1, 4, '2024-08-18 15:20:00', false, 1),
(4, 5, '2024-09-22 08:00:00', true, 5);

INSERT INTO Missions (
    MissionTitle, 
    MissionDescription, 
    MissionOrganisationName, 
    MissionOrganisationDetail, 
    CountryId, 
    CityId, 
    StartDate, 
    EndDate, 
    MissionType, 
    TotalSheets, 
    RegistrationDeadLine, 
    MissionThemeId, 
    MissionSkillId, 
    MissionImages, 
    MissionDocuments, 
    MissionAvilability, 
    MissionVideoUrl
) VALUES (
    ' Outreach Mission',
    ' children basic skills.',
    'Global Initiative',
    ' organization dedicated to improving education worldwide.',
    001,
    01,
    '2024-06-22',
    '2024-07-22',
    'Teaching',
    220,
    '2024-05-30',
    'Education',
    'Teaching Skills',
    'image1.jpg,image2.jpg',
    'document1.pdf',
    'Full-time availability',
    'https://www.youtube.com/education-mission'
);

INSERT INTO MissionSkill (SkillName, Status) VALUES
('Teaching Skills', 'Active'),
('Medical Skills', 'Active'),
('Engineering Skills', 'Active'),
('Community Development', 'Active'),
('Language Skills', 'Active');

INSERT INTO MissionTheme (ThemeName, Status) VALUES
('Education', 'Active'),
('Healthcare', 'Active'),
('Environmental Conservation', 'Active'),
('Disaster Relief', 'Active'),
('Community Development', 'Active');


INSERT INTO Users (
    FirstName, 
    LastName, 
    PhoneNumber, 
    EmailAddress, 
    UserType, 
    Password
) VALUES (
    'John',
    'Doe',
    '+123456789',
    'john.doe@example.com',
    'Volunteer',
    'hashed_password'
);

INSERT INTO UserDetail (
    UserId, 
    Name, 
    Surname, 
    EmployeeId, 
    Manager, 
    Title, 
    Department, 
    MyProfile, 
    WhyIVolunteer, 
    CountryId, 
    CityId, 
    Avilability, 
    LinkdInUrl, 
    MySkills, 
    UserImage, 
    Status
) VALUES (
    1,
    'John',
    'Doe',
    'EMP123',
    'Jane Smith',
    'Software Engineer',
    'IT Department',
    'I am passionate about volunteering and making a difference.',
    'I believe in giving back to the community.',
    1,
    1,
    'Weekends',
    'https://www.linkedin.com/johndoe',
    'Programming, Teaching, Communication',
    'profile_picture.jpg',
    true
);

INSERT INTO UserSkills (Skill, UserId) VALUES
('Programming', 1),
('Teaching', 1),
('Communication', 1),
('Medical Care', 2),
('Project Management', 2);


select*from city;


SELECT id, cityname
FROM city;
  
-- Update Statement
UPDATE city
SET cityname='surat'
WHERE  id = 001;
	
