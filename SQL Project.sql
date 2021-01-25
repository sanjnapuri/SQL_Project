-- Create a Videos Table
create table videos (
video_id serial Primary Key,
title VARCHAR (255) NOT NULL,
length float NOT NULL,
url VARCHAR (255) NOT NULL);

-- Insert Videos
insert into videos(title, length, url)
values('Selena Gomez Carpool Karaoke', 12.11, 'https://www.youtube.com/watch?v=mNcdlLIOdNw&ab_channel=TheLateLateShowwithJamesCorden'),
('One Direction Carpool Karaoke', 13.21, 'https://www.youtube.com/watch?v=329xjDM7YaE&ab_channel=TheLateLateShowwithJamesCorden'),
('Jonas Brothers Carpool Karaoke', 14.47, 'https://www.youtube.com/watch?v=aDcTSYZu-zY&t=213s&ab_channel=TheLateLateShowwithJamesCorden');

select * from Videos

--Create Reviewers Table
create table reviewers (
ID serial Primary Key,
video_id serial not null
REFERENCES videos (video_id) ON DELETE CASCADE,
username Varchar (255) NOT NULL,
rating int ,
review Varchar (255) NOT NULL);

--Insert Reviews
insert into reviewers(video_id, username, rating, review) 
values 
(1, 'Gabby', 5 , 'So funny!'),
(3, 'Stacey', 4, 'I love the Jonas Brothers!'),
(2, 'Nate', 2, 'HAHAH');

select * from reviewers

--Report on Video Reviews
select * from videos
full outer join reviewers
on videos.video_id = reviewers.video_id