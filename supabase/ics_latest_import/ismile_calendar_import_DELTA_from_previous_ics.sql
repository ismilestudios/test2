-- iSmile Scheduler DELTA patch: previous ICS package -> latest ICS

-- Applies only post-2025-05-31 future calendar-event changes.

-- Historical Picture Day Info differences are included in CSV/XLSX review files, not auto-applied here.

BEGIN;

-- Added future events: 15

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT 'ics_512ab92cb90d315f', 'google_calendar_import', '6qm4k3ebasspfe6pdksgac736r@google.com', 'HOLD Northville SENIORS (2 photogs)', '2026-08-25'::date, '2026-08-26'::date, '9:00am', '8:30am', 'HOLD Northville', 'senior portraits', ARRAY[]::text[], ARRAY[]::text[], false, 'Sue Schmitt, yearbook advisor
sschmitt@northvillecsd.org
Arrive: 8:30am
Start: 9:00am
Indoor in library, outdoors around campus
We photograph the seniors in street clothes (generally something dressy) and then in suit/tie (we provide) or drape (we provide) and cap and gown (we provide).  We shoot both indoors (formal) and outdoors (casual) and our outdoor portraits incorporate different spots around school to give it a school spirit feel.', true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = '6qm4k3ebasspfe6pdksgac736r@google.com');

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT 'ics_6208e910c75d7c18', 'google_calendar_import', '58jhg98r9t454g8p23ubfcs86p@google.com', 'HOLD Northville Fall Sports (1 team)', '2026-09-03'::date, '2026-09-03'::date, '2:40pm', '2:00pm', 'HOLD Northville', 'senior portraits', ARRAY[]::text[], ARRAY[]::text[], false, 'Sue Schmitt, yearbook editor
sschmitt@northvillecsd.org

John Karbowski, Athletic Director
jkarbowski@northvillecsd.org

Renee Mackey
mackeyr003@gmail.com

Arrive: 2pm
Start: 2:40pm

Indoor in library
Group Team photos - AND separate group shot of all seniors together
Photographing all teams, schedule below:', true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = '58jhg98r9t454g8p23ubfcs86p@google.com');

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT 'ics_043a0840ed3ccb56', 'google_calendar_import', '3re4d9bpph6leu1gf343mdupba@google.com', 'HOLD Northville Picture Day (2 teams)', '2026-09-23'::date, '2026-09-23'::date, '8:15am', '7:45am', 'HOLD Northville', 'graduation/pano', ARRAY[]::text[], ARRAY[]::text[], false, 'Tammy Reidell, Principal
treidell@northvillecsd.org
Sue Schmitt, yearbook editor
sschmitt@northvillecsd.org
Set-up: 7:45am
Start time: 8:15am
Indoor: Classroom near Library
Individuals of students grades PK-12 (grade 12 for IDs)
Individuals of Faculty
Yearbook support
IDs for grades 6-12
Service strips for pk-5
GROUP class photos outdoors on steps', true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = '3re4d9bpph6leu1gf343mdupba@google.com');

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT 'ics_30be45a86ab38807', 'google_calendar_import', '3i6k67psfol41ft1dounpe1ku7@google.com', 'HOLD Glencliff Elementary (2 teams)', '2026-09-25'::date, '2026-09-25'::date, '8:30a', '7:45', 'HOLD Glencliff Elementary', 'review', ARRAY[]::text[], ARRAY[]::text[], false, 'Ashley Steele, PTO co-president
glencliffpto.copres@gmail.com
cell : (518) 461-7486

Arrive: 7:45-8:00a
Start: 8:30a

Indoor in Gym
350 students
Individuals of all students and faculty/staff
All service items
Yearbook - Treering
Collages (told March for a delivery date)', true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = '3i6k67psfol41ft1dounpe1ku7@google.com');

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT 'ics_582b4c85fa4ee936', 'google_calendar_import', '6aud26hjtquui9gcjq9bu29cs3@google.com', 'HOLD Jefferson Elementary School (3 teams)', '2026-10-02'::date, '2026-10-02'::date, '8:30am', '8:00am', 'HOLD Jefferson Elementary School', 'picture day', ARRAY[]::text[], ARRAY[]::text[], false, 'Corrie Hoffman, PTA picture day contact
corrieh06@gmail.com

Main Office Admin
Denise Smith
dsmith@schalmont.net

Schedule prepared by Mr. Gifford, the principal.

700 STUDENTS K-4
Faculty too

Arrive: 8am - check in at the main office
Start: 8:30am staff, 9am students

Indoor photos on stage and spec classroom
collages
Treering / sticker strips

Schalmont Central School District', true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = '6aud26hjtquui9gcjq9bu29cs3@google.com');

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT 'ics_4d523a34b1b50570', 'google_calendar_import', '62mv8rha77sf5lto8t35lq4tvs@google.com', 'HOLD Wildwood School - Latham Site (Andrew +1)', '2026-10-26'::date, '2026-10-26'::date, '9:30', NULL, 'HOLD Wildwood School - Latham Site', 'review', ARRAY['Andrew']::text[], ARRAY[]::text[], false, 'Kellie or Willow, new main office admins
school-office@
wildwoodprograms.org
Classes 19-22 are in Latham
"For our Latham location, students are still arriving until 9:15. Your staff is welcome to come and set up at whatever time works best for them. Classes have requested that photo sessions start at 9:30 and that they have 20-30 minutes per class."
Times: 9am set-up for an 9:30am start
Indoor
students with special needs
Individuals pics of all students 
Continuous lights? 
No collages or class photos
Needs PSPA for yearbook', true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = '62mv8rha77sf5lto8t35lq4tvs@google.com');

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT 'ics_d778b2f00e853930', 'google_calendar_import', '47hu6g5hrkm595ga06abv9i9sl@google.com', 'HOLD Northville Makeup Day (1 team)', '2026-10-27'::date, '2026-10-27'::date, '11:30am', '11:00am', 'HOLD Northville', 'makeup/retake', ARRAY[]::text[], ARRAY[]::text[], false, 'Sue Schmitt, yearbook editor
sschmitt@northvillecsd.org

Arrive: 11:00am
Start: 11:30am makeups, then 12:15pm with the Senior, then makeups again at 12:30 until they end. Told school you have to be gone by 3-3:15pm, no later (had already stated that in an earlier email). ckg

Indoor - regular school photo makeups', true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = '47hu6g5hrkm595ga06abv9i9sl@google.com');

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT 'ics_956c3d779ee6e80f', 'google_calendar_import', '1lr9uoqqbn4fp4rtuvj7g7l3p7@google.com', 'HOLD Wildwood School - Curry Road (Andrew + 1)', '2026-10-27'::date, '2026-10-28'::date, NULL, NULL, 'HOLD Wildwood School - Curry Road', 'review', ARRAY['Andrew']::text[], ARRAY[]::text[], false, 'Kellie or Willow, new main office admins
school-office@
wildwoodprograms.org
2 Days at Curry Road site
Classes 1-18
"For our Curry Rd location, students are still arriving until 9:00. We could start picture sessions at 9:15 and do 15-20 minute blocks. We may also need to have some "free" blocks, where staff can bring students down separately, due to behaviors, etc. "
Times: 8:45a set-up for an 9:15am start 
Indoor 
students with special needs 
Individuals pics of all students 
Continuous lights? 
No collages or class photos 
Needs PSPA for yearbook', true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = '1lr9uoqqbn4fp4rtuvj7g7l3p7@google.com');

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT 'ics_47f535a26298d1a3', 'google_calendar_import', '42lhv0baplotktsskd442b0mdk@google.com', 'HOLD Glencliff Elem Makeup Day (1 team)', '2026-10-28'::date, '2026-10-28'::date, '8:30a', '7:45', 'HOLD Glencliff Elementary School', 'makeup/retake', ARRAY[]::text[], ARRAY[]::text[], false, 'Ashley Steele, PTO co-president
glencliffpto.copres@gmail.com
cell: (518) 461-7486
Arrive: 7:45-8:00a
Start: 8:30a', true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = '42lhv0baplotktsskd442b0mdk@google.com');

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT 'ics_c92ea930a41903fd', 'google_calendar_import', '41p9mm88a7po4ucq5a4354dgah@google.com', 'HOLD Jefferson Elementary MAKEUPS (1 team)', '2026-11-06'::date, '2026-11-06'::date, '9:15am', '8:30', 'HOLD Jefferson Elementary', 'makeup/retake', ARRAY[]::text[], ARRAY[]::text[], false, 'Main Office Admin
Denise Smith
dsmith@schalmont.net

PTA
Corrie Hoffman
corrieh06@gmail.com

NEW FALL 2024
700 STUDENTS K-4
Faculty too

2025 fall schedule for reference!
8:00 set up
8:30 start9:15 AM K9:30 1st9:45 3rd10:00 4th10:15 2nd10:30 Latecomers and faculty10:45 PM K', true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = '41p9mm88a7po4ucq5a4354dgah@google.com');

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT 'ics_884acd2df60a5f62', 'google_calendar_import', '6dgjhl2ohf56t0pu4lob6oa2mo@google.com', 'HOLD Wildwood Makeups (AM only ANDREW)', '2026-11-24'::date, '2026-11-24'::date, '9:30am', '9:00am', 'HOLD Wildwood', 'makeup/retake', ARRAY['Andrew']::text[], ARRAY[]::text[], false, 'Jill Wood 
jwood@wildwoodprograms.org
518-836-2200 x2212 
Curry Road site (any Latham students will come to Curry Rd)
Arrive: 9am
Start: 9:30am
End: no later than 11:30am
Indoor 
students with special needs 
Individuals pics of all students 
Continuous lights? 
No collages or class photos 
Needs PSPA for yearbook', true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = '6dgjhl2ohf56t0pu4lob6oa2mo@google.com');

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT 'ics_bae0c9bda2c501fd', 'google_calendar_import', '24o0s4qnl0527v8vq5sjitstji@google.com', 'HOLD Wildwood Seniors (1 team)', '2027-02-11'::date, '2027-02-11'::date, '10:00am', '9:30am', 'HOLD Wildwood', 'senior portraits', ARRAY[]::text[], ARRAY[]::text[], false, 'Jill Wood, main office admin UNTIL 1/23/26
jwood@wildwoodprograms.org
AFTER 1/23/26:
Kellie or Willow, new main office admins
school-office@
wildwoodprograms.org
Green cap and gown photos, may have to photoshop cap on some students.
Arrive: 9:30am
Start: 10am
We provide the digitals to Kellie and Willow for yearbook', true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = '24o0s4qnl0527v8vq5sjitstji@google.com');

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT 'ics_e36360c8106e77d1', 'google_calendar_import', '3gqosirhpp8o91r0hhe4u9shcu@google.com', 'HOLD Jefferson 4th Grade Grads (2 teams)', '2027-03-18'::date, '2027-03-18'::date, '9:00am', '8:30am', 'HOLD Jefferson 4th Grade Grads', 'graduation/pano', ARRAY[]::text[], ARRAY[]::text[], false, 'Corrie Hoffman, PTO contact
corrieh06@icloud.com

Denise Smith, Main Office Admin
dsmith@schalmont.net

3rd time doing GRADS with us

Arrive: 8:30am
Start:  9am

130 Grade 4 STUDENTS
Only NEW Faculty
4th grade grad photos and folders

Indoor
Take photos in regular clothes AND cap/gown to help increase sales
Green Caps/Gowns - look at GP from 24-25: https://app.gotphoto.com/config_jobs_photos/gallery/1616315722/6165330

Schalmont Central School District', true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = '3gqosirhpp8o91r0hhe4u9shcu@google.com');

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT 'ics_cb8b178a3aad4b71', 'google_calendar_import', '05mfhvju0l14e8l23n26e024sl@google.com', 'HOLD Jefferson 4th Grade Pano (1 photog)', '2027-05-14'::date, '2027-05-14'::date, '9:00am', '8:30am', 'HOLD Jefferson 4th Grade', 'graduation/pano', ARRAY[]::text[], ARRAY[]::text[], false, 'Corrie Hoffman, PTO contact
corrieh06@icloud.com
Denise Smith, Main Office Admin
dsmith@schalmont.net
3rd time doing pano with us
**4th grade pano outside
Arrive: 8:30am
Start: 9am
Outdoor photo
NOT pushing inside. Rain date for pano on May 18', true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = '05mfhvju0l14e8l23n26e024sl@google.com');

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT 'ics_719e471e5aa00f2e', 'google_calendar_import', '5h9m1rvccsr7pvaoht3go8cj6g@google.com', 'HOLD Jefferson 4th Grade Pano RAIN DATE (1 photog)', '2027-05-18'::date, '2027-05-18'::date, '9:00am', '8:30am', 'HOLD Jefferson 4th Grade', 'graduation/pano', ARRAY[]::text[], ARRAY[]::text[], false, 'Corrie Hoffman, PTO contact
corrieh06@icloud.com
Denise Smith, Main Office Admin
dsmith@schalmont.net
3rd time doing pano with us
**4th grade pano outside
Arrive: 8:30am
Start: 9am
Outdoor photo', true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = '5h9m1rvccsr7pvaoht3go8cj6g@google.com');

-- Modified future events: 23

UPDATE public.events
SET client_event_id = 'ics_c1b15c9cb7ff6782',
    title = 'AW Becker Elem Spring Photos (2 teams)',
    date = '2026-05-27'::date,
    end_date = '2026-05-27'::date,
    time = '9:15am',
    arrival_time = '8:45am',
    canonical_school = 'AW Becker Elementary School Spring',
    event_type = 'graduation/pano',
    photographers = ARRAY[]::text[],
    picture_day_info = '5/7/26 5th grade group being done on 5/12/26 ckg
5/6/26 school confirmed 5/27/26 date ckg; 
5/6/26 ORIGINAL DATE WAS DELETED IN ERROR FROM THE CALENDAR. OFFERING 5/22 (AND MAYBE 5/27) AS A NEW DATE PER SM ckg
**all images and 5th grade photo needs to be turned around ASAP as yearbook deadline is SOON!)**
Morgan Zinzow, Admin Asst (new fall 2025)
mzinzow@rcscsd.org
(518) 7565200 ext 5002 
Marybeth Bohl
mbohl@rcscsd.org
Setup: 8:45am
Start: 9:15 am
**PreK has a field trip from 9:30-11, so school asked they go after trip. I suggested before when they are "fresh" ckg**
Outdoor, PUSH INSIDE IF BAD WEATHER, room 207 (not band room)
Individuals of all students',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '1fhohvp5pln8sqcmb4o3qjmbog@google.com';

UPDATE public.events
SET client_event_id = 'ics_b379edf9e51edfd4',
    title = 'Rosendale Elem Field Day (1 photog)',
    date = '2026-06-12'::date,
    end_date = '2026-06-12'::date,
    time = NULL,
    arrival_time = NULL,
    canonical_school = 'Rosendale Elementary School Field Day',
    event_type = 'review',
    photographers = ARRAY[]::text[],
    picture_day_info = 'Ashley Feldman, PTO
ashleyfeldman929@gmail.com

Rain date in June 18

6/2/26 June 12 (Field Day) - It starts at 8AM and runs through around noon. 
emailed Ashley cc Molly ckg

4/9/26 booked, still need details! ckg',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '307vi6gtmusp2nvobedf7a1j19@google.com';

UPDATE public.events
SET client_event_id = 'ics_c43c8c22ae07df8d',
    title = 'Academy Golf Tournament Candids',
    date = '2026-06-22'::date,
    end_date = '2026-06-22'::date,
    time = NULL,
    arrival_time = NULL,
    canonical_school = 'Academy Golf Tournament Candids',
    event_type = 'review',
    photographers = ARRAY[]::text[],
    picture_day_info = 'Golf shotgun 12:00
Tennis starts at 9:00, told Layne I would be there at the end of tennis so like 1030, 1100?',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '6r0c7lj4u90rao6nu7hbdml2sj@google.com';

UPDATE public.events
SET client_event_id = 'ics_2175041cabcaedfc',
    title = 'Rosendale Elem Moving Up Ceremony AM (1 photog)',
    date = '2026-06-23'::date,
    end_date = '2026-06-23'::date,
    time = NULL,
    arrival_time = NULL,
    canonical_school = 'Rosendale Elementary School Moving Up Ceremony AM',
    event_type = 'graduation/pano',
    photographers = ARRAY[]::text[],
    picture_day_info = 'Ashley Feldman, PTO picture day contact
ashleyfeldman929@gmail.com
Morning
take candids before the ceremony
photos of each 5th grader as they cross the stage and receive their moving up certificate

6/2/26 June 23 (Moving Up Ceremony) - It starts at 8AM and runs through around noon as well! Emailed Ashley cc Beth ckg
3/24/26 booked, details to follow ckg
Ashley Feldman
9:01 AM (2 hours ago) 3/25/26
to me
I''m waiting to confrim to with our principal, but it sounds like Moving Up Ceremony is a go!  It would be June 23 and it starts at 8:30AM but there will be decorations,etc set up that maybe you could take pictures before the actual ceremony starts if possible.  The latest it would wrap up is 10:45 I believe, but again will confirm once I have those details.',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '0bb5f0j855nird7rckq1mrqfle@google.com';

UPDATE public.events
SET client_event_id = 'ics_7f2d54fd4cd72770',
    title = 'Bourbon and Blooms  MATT',
    date = '2026-08-13'::date,
    end_date = '2026-08-13'::date,
    time = NULL,
    arrival_time = NULL,
    canonical_school = NULL,
    event_type = 'photo booth',
    photographers = ARRAY['Matt']::text[],
    picture_day_info = '1 photographer - posed photo booth style family/couple/group pics using farm scenery as backdrop (your choice).    Also event candids and details.  VIP Michael Turner, new head of school, make sure you get a lot of him and his wife Meredith.
Photographer assigned will be given $100 at event for you to keep.
24 hour turnaround needed.
Contact Laura Hopper
HopperL@albanyacademy.org
I also wanted to get your thoughts on an idea for the Blooms and Bourbon event on Thursday, August 13. Since this will be Michael Turner''s big debut, I''d really love to elevate the experience from last year. I think a whimsical, garden-themed photo booth could be such a fun addition to the evening and a great opportunity to capture beautiful photos to share on our social media platforms.
Have you ever done something like that before? I''m envisioning a beautiful backdrop of the farm with fun props and a more styled "photo moment" rather than printing photos on-site. I''m not sure if that''s too ambitious or too much extra work, but I think it would add to the atmosphere and make the event feel extra special. 
Looking forward to hearing what you think!
@ Nikki- Have you seen people do something like this at events on the farm? 
Blooms & Bourbon | An Evening at Old Tavern Farm
An Albany Academy Event Graciously hosted by Nikki Borisenok ‘08
Thursday, August 13, 2026 | 5:30 PM – 8:00 PM
Old Tavern Farm Agricultural Village
142 County Route 71
Stillwater, NY 12170',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '40dh4kiu3ajkc73dlp4enku57q@google.com';

UPDATE public.events
SET client_event_id = 'ics_4c41a6667b40fd8e',
    title = 'Waterford-Halfmoon Seniors (2 photogs)',
    date = '2026-08-19'::date,
    end_date = '2026-08-21'::date,
    time = '9:00am',
    arrival_time = '8:30am',
    canonical_school = 'Waterford-Halfmoon',
    event_type = 'senior portraits',
    photographers = ARRAY[]::text[],
    picture_day_info = 'Kayla Ramundo, main contact for pictures and yearbook
kraymundo@whufsd.org

Christopher Scanlan, principal
Cscanlan@whufsd.org
Michael Healey, Superintendent
Mhealey@whufsd.org
ES GYM
Arrive: 8:30am
Start: 9am
NOTE on 8/21/26 can only go until 11am per Kayla
Indoor and outdoor portraits
Bring white and red caps / gowns
Look at Class of 2026 GotPhoto galleries to see what we did then
Needs yearbook images in the FALL! NOT TREERING',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '4d889o79drc39russi321fupmp@google.com';

UPDATE public.events
SET client_event_id = 'ics_40a65bf1693f0857',
    title = 'HOLD Waterford-Halfmoon Fall Sports (1 team)',
    date = '2026-09-01'::date,
    end_date = '2026-09-01'::date,
    time = '2:00pm',
    arrival_time = '1:30pm',
    canonical_school = 'HOLD Waterford-Halfmoon',
    event_type = 'sports',
    photographers = ARRAY[]::text[],
    picture_day_info = 'Kyle Williams
Director of PE, Athletics and Recreation
Waterford-Halfmoon Union Free School District
125 Middletown Road
Waterford, NY 12188
(518)237-0800 ext. 1311
kywilliams@whufsd.org

Arrive: 1:30pm
Start: 2pm

LOCATION: HS Auditorium
Individual players, and group team photos
ONLY V and JV TEAMS. No modified per Kyle.',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '5sf2t0ug9gq5r44htrpofaplaf@google.com';

UPDATE public.events
SET client_event_id = 'ics_ac04476f3b59fe14',
    title = 'Duanesburg MS/HS (1 team)',
    date = '2026-09-16'::date,
    end_date = '2026-09-17'::date,
    time = '7:50am',
    arrival_time = '7:20am',
    canonical_school = 'Duanesburg Middle School/High School',
    event_type = 'review',
    photographers = ARRAY[]::text[],
    picture_day_info = 'Andrea Hunter, Main Office
ahunter@duanesburg.org
Set-up: 7:20am
Start time: 7:50am
Indoor pics of all students and faculty
In auditorium on STAGE
During gym periods
All service items
Student and Faculty ID with bar codes
Yearbook support - Treering we flow',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '06cr3lqhdfpk7nk7hpipbqogie@google.com';

UPDATE public.events
SET client_event_id = 'ics_d418c6947126a79b',
    title = 'Duanesburg Elementary (2 teams+1)',
    date = '2026-09-18'::date,
    end_date = '2026-09-18'::date,
    time = '8:00am',
    arrival_time = '7:30am',
    canonical_school = 'Duanesburg Elementary',
    event_type = 'review',
    photographers = ARRAY[]::text[],
    picture_day_info = 'Leah Simpson, secretary to the principal
lsimpson@duanesburg.org
Please check in at the main office upon arrival. Need a photo ID. 
Set-up: 7:30am
Staff start at 8am; Students start time: 8:20am 
Indoor in GYM (confirm with Leah)
Individuals of all students and faculty/staff
All service items
Group class photos
Treering Yearbook - we upload all',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '18ljms0s90vdqce69gnfhtf71a@google.com';

UPDATE public.events
SET client_event_id = 'ics_5419ec24b8e081aa',
    title = 'Waterford-Halfmoon MS/HS (1 team)',
    date = '2026-10-08'::date,
    end_date = '2026-10-09'::date,
    time = NULL,
    arrival_time = '7:00am',
    canonical_school = 'Waterford-Halfmoon Middle School/High School',
    event_type = 'makeup/retake',
    photographers = ARRAY[]::text[],
    picture_day_info = 'Kayla Ramundo
kramundo@whufsd.org
**bring Senior binder and attire for makeups at end of day**
Check in at main office with photo ID upon arrival
Indoor in MULTIPURPOSE ROOM
Set-up: 7am. Custodian should meet us at main door.
School day runs from 7:57am to 2:20pm
Individual photos of students by gym class
Individual photos of all faculty staff for yearbook
Please photograph their therapy dog for the yearbook
SENIORS NEED TO BE PHOTOGRAPHED FOR ID CARDS. THESE PHOTOS WILL NOT GO TO THE YEARBOOK. DO NOT HAND OUT QR CARD TO SENIORS.
no group pics or collages
ID cards for students (none for faculty)
Yearbook PSPA',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '4jfjvt8e1go890opj06ftuntqm@google.com';

UPDATE public.events
SET client_event_id = 'ics_8707ee157ecf29eb',
    title = 'NEW No. Albany MS (2 teams)',
    date = '2026-10-14'::date,
    end_date = '2026-10-15'::date,
    time = NULL,
    arrival_time = NULL,
    canonical_school = 'NEW No. Albany Middle School',
    event_type = 'picture day',
    photographers = ARRAY[]::text[],
    picture_day_info = 'NAMS PTA
acsdnamspta@gmail.com

Kim Ruchelm, PTA picture day contact
kimberlyruchel@gmail.com

Renee Serbu, PTA picture day contact
renee.serbu@gmail.com

Arrive: 
Start: 

NEW FALL 2026
Eagle Point PTA referral (many EPES, and ASH kids are here)
Indoor during PE periods
Ask about ID cards
Yearbook - find out details',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '4eskhltbs7ugbimeggdjn0buu0@google.com';

UPDATE public.events
SET client_event_id = 'ics_578e2b6c8f7efd5e',
    title = 'Shatekon Elementary (2 teams)',
    date = '2026-10-14'::date,
    end_date = '2026-10-14'::date,
    time = '7:45am',
    arrival_time = '7:15am',
    canonical_school = 'Shatekon Elementary',
    event_type = 'review',
    photographers = ARRAY[]::text[],
    picture_day_info = 'Melissa O''Hara, main office admin
oharmeli@shenschools.org
set up: 7:15am
start: 7:45am staff, classes at 8:15am
Indoor 
**Pictures will take place in the ELA room. Room 351***
Individuals of all students and faculty
Collages
Service strips
Full yearbook support, Treering',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '7khuv5q01vlolsd5tbc85mh0k9@google.com';

UPDATE public.events
SET client_event_id = 'ics_5ec082703a7cf501',
    title = 'Duanesburg Makeup Day Elem & MSHS (1 team)',
    date = '2026-10-19'::date,
    end_date = '2026-10-19'::date,
    time = NULL,
    arrival_time = NULL,
    canonical_school = 'Duanesburg Elementary School & MSHS',
    event_type = 'makeup/retake',
    photographers = ARRAY[]::text[],
    picture_day_info = 'Leah Simpson, elementary school admin
lsimpson@duanesburg.org

Andrea Hunter, high school admin
ahunter@duanesburg.org

Both schools on same day',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '2jjvhdkf7mvbv59vd1s7ocn4l7@google.com';

UPDATE public.events
SET client_event_id = 'ics_2bdd0217bfd06a3a',
    title = 'Waterford-Halfmoon MS/HS Makeups (1 team)',
    date = '2026-11-13'::date,
    end_date = '2026-11-13'::date,
    time = NULL,
    arrival_time = NULL,
    canonical_school = 'Waterford-Halfmoon Middle School/High School',
    event_type = 'makeup/retake',
    photographers = ARRAY[]::text[],
    picture_day_info = 'Kayla Ramundo, main contact for pictures and yearbook
kraymundo@whufsd.org

Arrive: 
Start:',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '19ce6ceku24tlkte57so694rq1@google.com';

UPDATE public.events
SET client_event_id = 'ics_3f7ccebc4a39123c',
    title = 'Shatekon Makeups (1 team)',
    date = '2026-11-17'::date,
    end_date = '2026-11-17'::date,
    time = '10:00am',
    arrival_time = '9:30am',
    canonical_school = 'Shatekon',
    event_type = 'makeup/retake',
    photographers = ARRAY[]::text[],
    picture_day_info = 'Melissa O''Hara, main office admin
oharmeli@shenschools.org
set up: 9:30am
start: 10am
Indoor in CONFERENCE RM
Individuals of all students and faculty
Collages',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '4g4c1cfub3897gugbtjufsl8dt@google.com';

UPDATE public.events
SET client_event_id = 'ics_292423f07890bffe',
    title = 'NEW No. Albany MS MAKEUPS',
    date = '2026-11-18'::date,
    end_date = '2026-11-18'::date,
    time = NULL,
    arrival_time = NULL,
    canonical_school = NULL,
    event_type = 'makeup/retake',
    photographers = ARRAY[]::text[],
    picture_day_info = 'NAMS PTA
acsdnamspta@gmail.com
Kim Ruchelm, PTA picture day contact
kimberlyruchel@gmail.com

Renee Serbu, PTA picture day contact
renee.serbu@gmail.com
Arrive:  
Start:  
NEW FALL 2026
Eagle Point PTA referral (many EPES, and ASH kids are here) 
Indoor during PE periods 
Ask about ID cards 
Yearbook - find out details',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '0ico1uqsfdn3ce6bdc4k42t7d1@google.com';

UPDATE public.events
SET client_event_id = 'ics_f0e3560aa87fd4f4',
    title = 'Shatekon Grad Photos (1 team)',
    date = '2027-03-04'::date,
    end_date = '2027-03-04'::date,
    time = '7:45am',
    arrival_time = '7:15am',
    canonical_school = 'Shatekon',
    event_type = 'graduation/pano',
    photographers = ARRAY[]::text[],
    picture_day_info = 'Lisa Kelley, 5th grade aide/pic day contact
kelllisa@shenschools.org

Melissa O''Hara, main office admin
oharmeli@shenschools.org

Arrive: 7:15am
Start: 7:45am (staff)
8:15am (5th Graders)
main conference room

5 classes of 5th graders (approx 100 students)
ONLY cap & gown pics - we provide caps and gowns
Matt estimated we''d need about 20 minutes per class

2/10/26 done ckg; 1/8/26 make sure school nows about price increase to $4 per folder ckg
Making grad folders, PTO paying $4 each. Will personalize for school.',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '0phkv55ndsq03ujsqpjrjc3d67@google.com';

UPDATE public.events
SET client_event_id = 'ics_07051c5660f6d7c2',
    title = 'Shatekon Elem Spring Pic Day (2 teams plus one extra photog)',
    date = '2027-04-23'::date,
    end_date = '2027-04-23'::date,
    time = '8:15am',
    arrival_time = '7:45am',
    canonical_school = 'Shatekon Elementary School Spring Pic Day',
    event_type = 'graduation/pano',
    photographers = ARRAY[]::text[],
    picture_day_info = 'Melissa O''Hara, principal''s aide
oharmeli@shenschools.org
Setup: 7:45am
Start: 8:15am
Outdoor, 5th grade group class photo on same day. 3/28/25 steph approved adding one teacher to pano)
PUSH INSIDE IF BAD WEATHER - RAIN DATE IS ONLY FOR PANO!
Individuals of all students and new staff
PANO is 8x24, one for each 5th grader and teacher AND 1 framed for school. Free because we are photographing their entire school this spring.',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '2jrdfmui23bfplfntj73k92v1u@google.com';

UPDATE public.events
SET client_event_id = 'ics_dc59af754a4182c8',
    title = 'Shatekon PANO RAIN DATE (1 photog)',
    date = '2027-04-26'::date,
    end_date = '2027-04-26'::date,
    time = NULL,
    arrival_time = NULL,
    canonical_school = 'Shatekon',
    event_type = 'graduation/pano',
    photographers = ARRAY[]::text[],
    picture_day_info = 'Rain date for PANO only per school',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '7ne1edgppoms4ccm1ob22a5e6g@google.com';

UPDATE public.events
SET client_event_id = 'ics_c9cef57b26bcdfb9',
    title = 'Milton Terrace Spring Photos + 5th Grade Pano (2 teams)',
    date = '2027-05-06'::date,
    end_date = '2027-05-06'::date,
    time = '9:30am',
    arrival_time = '9:00am',
    canonical_school = 'Milton Terrace Spring',
    event_type = 'graduation/pano',
    photographers = ARRAY[]::text[],
    picture_day_info = 'Sarah Kinney, school admin asst
skinney@bscsd.org

Setup: 9am
Start: 9:30am

QUICK TURNAROUND FOR YEARBOOK

Outdoor, PUSH INDOORS TO STAGE IF BAD WEATHER, pano will be moved to rain date
450 students
5th grade group photo OUTDOOR ONLY',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '1hi6tj3ms1siidrdc8ekrc32ic@google.com';

UPDATE public.events
SET client_event_id = 'ics_f99caba72e4d706c',
    title = 'Milton Terrace RAIN 5th Grade Photo (1 photog)',
    date = '2027-05-10'::date,
    end_date = '2027-05-10'::date,
    time = NULL,
    arrival_time = NULL,
    canonical_school = 'Milton Terrace RAIN 5th Grade Photo',
    event_type = 'graduation/pano',
    photographers = ARRAY[]::text[],
    picture_day_info = 'Sarah Kinney, NEW main office admin
skinney@bscsd.org
NOT SURE YET WHAT TIME...',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '7mp2mn52n63v3ek5f7evsebkcc@google.com';

UPDATE public.events
SET client_event_id = 'ics_230ef2c4366c2517',
    title = 'Wood Road Spring Pics & 5th Grade Pano (2 teams)',
    date = '2027-05-12'::date,
    end_date = '2027-05-12'::date,
    time = '9:15am',
    arrival_time = '8:45am',
    canonical_school = 'Wood Road &',
    event_type = 'graduation/pano',
    photographers = ARRAY[]::text[],
    picture_day_info = 'WILL BE NEW (MaryBeth retired), main office admin
EMAIL: 
Setup: 8:45 am
Start:   9:15 am
Outdoor push in for bad weather
Individuals of all students
5th grade group photo unless it rains, use rain date',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '3q9034cf0tovjbcgrq818jsntk@google.com';

UPDATE public.events
SET client_event_id = 'ics_b75240fe4f6b464b',
    title = 'DES Spring Photos (2 teams)',
    date = '2027-05-19'::date,
    end_date = '2027-05-19'::date,
    time = '9:00am',
    arrival_time = NULL,
    canonical_school = 'DES Spring',
    event_type = 'spring picture day',
    photographers = ARRAY[]::text[],
    picture_day_info = 'Kerry Utstein pTO
kutstein@dcpta.org
Leah Simpson, elem school
lsimpson@duanesburg.org
Setup at elementary school 8:30am
Start time: 9:00am
Outdoor of only students, PUSH INDOORS if bad weather
10% fundraiser for the DCPTA',
    active = true
WHERE source = 'google_calendar_import' AND source_event_id = '1n2jpk7bbs6281aqq8lapnf9n1@google.com';

-- Removed future events: 0

COMMIT;