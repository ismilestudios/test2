-- iSmile Scheduler FULL latest Google Calendar ICS import - DOLLAR-QUOTED SAFE VERSION
-- Use this file instead of the earlier FULL SQL if PostgreSQL reported: relation "the" does not exist.
-- Generated from latest uploaded School Events ICS package. Review before running.

BEGIN;

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_56a0e55dacaffd41$cid$, $src$google_calendar_import$src$, $uid$7e3kaua3vkvugmfsfdd5u0813i@google.com$uid$, $title$Gordon Creek PANO 5th Grade (1 photog)$title$, $d$2027-05-13$d$::date, $d$2027-05-13$d$::date, $tm$9:15am$tm$, $arr$8:45am$arr$, $sch$Gordon Creek 5th Grade$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Katie Bennice, admin
KBennice@bscsd.org
(518) 884-7270 ext.3368
Setup: 8:45AM in front of playground.
Start: 9:15am
Group photos, OUTDOOR IN FRONT OF PLAYGROUND. 
We are invoicing the school $6 per print; PTA will pay for them. This is the option they chose in lieu of us photographing the entire student body in the spring.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7e3kaua3vkvugmfsfdd5u0813i@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_76302d584805b35e$cid$, $src$google_calendar_import$src$, $uid$15kamtao3f67ga23v8a2ju0cun@google.com$uid$, $title$HOLD Little Achiever's Preschool (1 team)$title$, $d$2026-11-04$d$::date, $d$2026-11-05$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$HOLD Little Achiever s Preschool$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$*wanted earlier in fall, but per MM and our scheduling guidelines, preschools can't be earlier than Nov. ckg*
MAIN CONTACT:
Alexandria Tanski
ATanski@littleachievers.education
Roxeanne Lansing, Director
RLansing@littleachievers.education
https://littleachievers.education
Has MWF and TTh classes therefore we are there two days
Collages
Arrive: 8:30am
Start: 9:00am
INDOOR - fall backdrop
Pics of all students and faculty (approx 100 children, Infants, 
toddlers, and preschoolers)
Collages in the fall
No commission$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$15kamtao3f67ga23v8a2ju0cun@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e7adb3ad0a561c52$cid$, $src$google_calendar_import$src$, $uid$4767k0cjolelso9m9oiv7b4si8@google.com$uid$, $title$Siena Townhouse Pics STEPH$title$, $d$2025-10-22$d$::date, $d$2025-10-22$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$Hi Steph, 

So sorry for the late reply on this! It's been a bit bonkers over here with some of our other projects going on. We will be out front of the Roger Bacon building. We will begin setting up around 5pm but you are welcome to get there whenever is most convenient for you! 

My cell is 425-314-0952 if you need any directions or help the day of! We are working on a rain plan and I will let you know if we need to make a pivot at all 

Sarah$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4767k0cjolelso9m9oiv7b4si8@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c08567b734736b9e$cid$, $src$google_calendar_import$src$, $uid$06546kdg3um1agveeq4lrjulog@google.com$uid$, $title$Hudson Valley Consortium Makeups FULL DAY (REQ Molly)$title$, $d$2026-11-05$d$::date, $d$2026-11-05$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, $sch$Hudson Valley Consortium FULL DAY$sch$, $typ$makeup/retake$typ$, ARRAY[$a$Molly$a$]::text[], ARRAY[]::text[], false, $info$Teresa Rieder
hvcteresarieder@gmail.com
Arrive: 9am
Start: 9:30am
Indoor
Home school basis with 200 students, grades Infants -12
Meets on Tuesdays and Thursdays 
Individuals of students, no faculty
no class pics
Yearbook support$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$06546kdg3um1agveeq4lrjulog@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_5419ec24b8e081aa$cid$, $src$google_calendar_import$src$, $uid$4jfjvt8e1go890opj06ftuntqm@google.com$uid$, $title$Waterford-Halfmoon MS/HS (1 team)$title$, $d$2026-10-08$d$::date, $d$2026-10-09$d$::date, NULL, $arr$7:00am$arr$, $sch$Waterford-Halfmoon Middle School/High School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kayla Ramundo
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
Yearbook PSPA$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4jfjvt8e1go890opj06ftuntqm@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_0de20fa4e3187254$cid$, $src$google_calendar_import$src$, $uid$7frdv2vk2l2evcoqp9nv2umt96@google.com$uid$, $title$Little Scholars Viaport Spring and Grads (1 team)$title$, $d$2025-06-17$d$::date, $d$2025-06-17$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Little Scholars Viaport Spring Grads$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Rebecca Paludi or Ariel
Littlescholarslc10@gmail.com

6/12/25 per Molly, another new director:

"Before I forget - Nelly is the new director here at dburg road, Ariel is the temp director at viaport, and Emma is no longer employed. Not sure who Rebecca is, she’s not here, but Nelly said Andrew should email Rebecca to confirm next week! "

5/22/25 moved to June 17; Just learned that this site can only do Mondays or Tuesday from 9-11am ckg
5/19/25 new date booked with Emma J. ckg
5/16/25 moving to June

Arrive: 8:30am
Start: 9am

5/22 date adjusted; 5/20 new date picked; 5/16 called; 5/14 emailed; 5/12 called; 5/5/25 emailed Ashley to confirm ckg
Viaport: 93 West Campbell Road PO Box 6135 Schenectady NY 12306

Indoor with spring backdrop AND Grad photos - they have caps & gowns
Small, 20-25 kiddos
Photos of all students
no service items
no commission (under 100 students)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7frdv2vk2l2evcoqp9nv2umt96@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3b97432eba0a62cf$cid$, $src$google_calendar_import$src$, $uid$1p91vjnma9l7je10pdjo0vof61@google.com$uid$, $title$Gardner-Dickinson Grad Photos (1 photog)$title$, $d$2026-06-24$d$::date, $d$2026-06-24$d$::date, $tm$6:00pm$tm$, $arr$5:30pm$arr$, $sch$Gardner-Dickinson$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$2/18/26 booked with Kyle ckg ckg

Kyle Barber
kbarber@wynantskillufsd.org

Arrive: 5:30PM
Start: 6PM (Graduation starts at 7pm)

Individual poses of each grad, headshot, full body and poses in-between -look at prior years: https://app.gotphoto.com/config_jobs_photos/gallery/1638852756/4487327

PLEASE MAKE SURE INDEX PHOTO IS "YEARBOOK STYLE" FOR GRAD FOLDER.

38-ish 8th graders

3/6 draft approved; 
3/5/26 grad folder draft in review for Kyle's approval ckg; 2/24/26 PTA buying grad folders at $4 ea. Ship in batch to Kyle's attn at school. ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1p91vjnma9l7je10pdjo0vof61@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_36464b705c997ae7$cid$, $src$google_calendar_import$src$, $uid$0m2ji73qg3aivk6ls7rk4vfge8@google.com$uid$, $title$Berne-Knox-Westerlo Secondary Spring (2 teams)$title$, $d$2026-03-19$d$::date, $d$2026-03-19$d$::date, $tm$8:05am$tm$, $arr$7:30am$arr$, $sch$Berne-Knox-Westerlo Secondary Spring$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Laurie Hilton, main office admin
laurie.hilton@bkwschools.org
2/10/26 confirmed with Laurie ckg
Arrive: 7:30am
Start: 8:05am
End 1pm
Indoor with Spring backdrop
Auditorium floor (not stage)
Grades 7-12$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0m2ji73qg3aivk6ls7rk4vfge8@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4c886e3cf73fc11c$cid$, $src$google_calendar_import$src$, $uid$2ufcarv60f0f69m9fklrvdlk5a@google.com$uid$, $title$KinderCare Niskayuna (2 teams)$title$, $d$2025-06-03$d$::date, $d$2025-06-03$d$::date, $tm$7:30am$tm$, $arr$7:00am$arr$, $sch$KinderCare Niskayuna$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jessica Ribner, New Director
jessica.ribner@kindercare.com
Mercedes, Asst Director
mercedes.fillmore@kindercare.com
KinderCare Learning Centers
1440 Balltown Road
Niskayuna, NY 12309

Arrive: 7am
Start: 7:30am
110-ish students
Indoor per JEssica on 5/28/25 (per an email with Molly) ckg
Individuals of all students AND teachers (practically all staff has changed since fall)
50% staff discount for their kid's photos
Molly Sosnow
8:39 AM (1 hour ago)
to jessica.ribner, mercedes.fillmore, Jeff, Beth, Andrew, me, Matthew
Hello!
I am reaching out to confirm details for your Spring Picture Day next Tuesday, June 3rd! Jeff and I will be the lead photographers and we will be assisted by Beth and Andrew. It looks like we are scheduled to arrive at 7:30am to get set up and we start pictures at 8am? Will we be shooting indoors with a Spring backdrop or are you hoping to take pictures outside? 
Is there a rough schedule made for the day that can be shared with us? 
Please let us know if you have any questions. Thank you so much! 
We are looking forward to seeing everyone next week :)
Best,
-- 
Molly Sosnow
Photographer
iSmile Studios
www.ismilestudios.com
www.facebook.com/ismilestudios
Share your great experience on Google!
Jessica Ribner
9:59 AM (1 minute ago)
to 
Mercedes
, Molly, Jeff, Beth, Andrew, me, Matthew
Hi Molly,
It would easiest if we take Spring pictures inside and get them going as soon as possible in the morning as we serve breakfast around 830.  We do have a classroom open to take photos in.
Jessica R Ribner
Molly Sosnow
11:33 AM (26 minutes ago)
to Jessica, Mercedes, Jeff, Beth, Andrew, me, Matthew
Hi Jessica, 
No problem, we will bring our equipment for two indoor Spring set ups! Do you want to start pictures earlier than 8am? Is there a schedule made for the day that can be shared with us? 
Thank you! 
www.ismilestudios.com
www.facebook.com/ismilestudios
Jessica Ribner
11:52 AM (8 minutes ago)
to Molly, Mercedes, Jeff, Beth, Andrew, me, Matthew
We can start right at 730 if you all wanted.  We typically start with infants, then toddlers, and last our preschoolers.  Then follow up with late drop offs.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2ufcarv60f0f69m9fklrvdlk5a@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_03a9c631c6a961bf$cid$, $src$google_calendar_import$src$, $uid$2ofg0njj87adujssmb9i2uhrc4@google.com$uid$, $title$Shaker Seniors 1 photog plus assistant if possible$title$, $d$2026-04-27$d$::date, $d$2026-05-01$d$::date, NULL, NULL, $sch$Shaker photog assistant if possible$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2ofg0njj87adujssmb9i2uhrc4@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_64b885c992192a71$cid$, $src$google_calendar_import$src$, $uid$7viqn2kh0tool6jov0ftjljp2p@google.com$uid$, $title$Latham Christian Academy Makeups (1 team)$title$, $d$2025-11-03$d$::date, $d$2025-11-03$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Latham Christian Academy$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Sarah Kettlewood, Principal
skettlewood@lcany.org

10/21/25 emailed Sarah to confirm ckg
Arrive: 8am
Start: 8:30am

Indoor
Kids in full school uniform (navy blue skirts, jumpers, or pants with white or light blue shirts)
Grades range from PK-12
IDs and full yearbook support
Service Strips
Attendance File
Group$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7viqn2kh0tool6jov0ftjljp2p@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2c1ae0f6521e3c2e$cid$, $src$google_calendar_import$src$, $uid$63g0j3uok7n9b9c59181qk7kef@google.com$uid$, $title$Heatly Field Day RAIN (1 photog)$title$, $d$2025-06-18$d$::date, $d$2025-06-18$d$::date, $tm$10:00am$tm$, $arr$9:30am$arr$, $sch$Heatly Field Day RAIN$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$6/12/25 school told Molly about this rain date, Molly said she'd cover if needed ckg
Stephanie Bouchey
sbouchey@greenisland.org
Sarah Lawlor
slawlor@greenisland.org

Arrive:  9:30am
Start:  10am until noon
5/8/25 booked with Stephanie B. ckg
2nd free event for school
Event goes most of the day so school said they see when we were available and pick a window of time for us to be there. See below:
Stephanie Bouchey
Wed, May 14, 6:40 PM (12 hours ago)
to 
Sarah
, me
Field day will run the am session will be 9-10:30, the next will run 11-12:30…..but if you can  come 10-12 you could get a small amt of time of each group?
Stephanie Bouchey
Principal's Assistant
Green Island UFSD
Carrie Graziano
7:31 AM (0 minutes ago)
to Stephanie, Sarah
That sounds perfect! We can arrive about 9:30am to get the lay of the land, and connect with you or Sarah.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$63g0j3uok7n9b9c59181qk7kef@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_53093fd56c604461$cid$, $src$google_calendar_import$src$, $uid$7rfdg59lu2f9js7fc14gt6704l@google.com$uid$, $title$Academy Closings$title$, $d$2026-06-04$d$::date, $d$2026-06-04$d$::date, NULL, NULL, $sch$Academy Closings$sch$, $typ$photo booth$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Our Grades 1-4 ceremony is on June 4 and runs 1:00-1:40. Our reception follows directly after and runs until 3:00 and we will have a photo booth station set up with an Albany Academy background that families will want pictures in front of.  I will let them know you will be available after for taking family photos. 

Thank you for joining us for these special days. Let me know if you have any further questions.
Suzanne
Stephanie,
HI!  Hoping you are doing well.  As our LS Closings approach I wanted to reach out to see about a few things.  Our PreK & K Closing & Reception is June 3
rd
, 8:30-10:30.  Will you be available to take our kindergarten photos with the caps and gowns that morning?  Can we still use the caps and gowns you have?  The Grades 1-4 Closing & Reception is June 4
th
, 1:00-3:00.  Will you be available to take pictures for families as you were in the past, at the receptions for both Closings?  Looking forward to connecting.
Thanks,
Suzanne

SUZANNE GARDNER-CLARKSON
HEAD OF LOWER SCHOOL

MS Closing Ceremony (boys) - 8:30am in the LS/MS Campus Auditorium
MS Moving Up Ceremony (girls) - 11:00am in the LS/MS Campus Auditorium
LS Grades 1-4 Closing - 1:00pm in the LS/MS Campus Auditorium$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7rfdg59lu2f9js7fc14gt6704l@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_91f9c7b2def83c0d$cid$, $src$google_calendar_import$src$, $uid$3421fenretumiu7oa21gteo3m6@google.com$uid$, $title$Atrea ELC SHEN (3 teams)$title$, $d$2026-09-22$d$::date, $d$2026-09-22$d$::date, NULL, NULL, $sch$Atrea ELC SHEN$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Erica Ryan, Principal
ryaneric@shenschools.org
5 Maxwell Dr.
Clifton Park, NY 12065
518-881-0500

NEW Shen K school
600+ kindergarten students at 5/8/26

Indoor
individuals of students and staff
Collages
Service items?
Yearbook?$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3421fenretumiu7oa21gteo3m6@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c26f42be528ad90f$cid$, $src$google_calendar_import$src$, $uid$4loh9cv4svi3jijt55ko9l8sg3@google.com$uid$, $title$Arbor Hill Elementary AM ONLY (2 teams)$title$, $d$2025-10-14$d$::date, $d$2025-10-14$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Arbor Hill Elementary AM ONLY$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Tiffany Jones-Johnson, office manager
tjones-johnson@albany.k12.ny.us
Setup: 8am
Start: 8:30am staff, 9:10am students
check-in main office first, with photo id
Indoor
Individuals of all students and teachers
Collages
Attendance, yearbook files and service strips needed
Principal's book needed
5th grade Grad folders using fall images
No faculty IDs$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4loh9cv4svi3jijt55ko9l8sg3@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_36e032a70d7ed47e$cid$, $src$google_calendar_import$src$, $uid$0ralfhq9vgmcah3298vsg28l8f@google.com$uid$, $title$Shatekon Elem Spring Pic Day (2 teams plus one extra photog)$title$, $d$2026-04-24$d$::date, $d$2026-04-24$d$::date, $tm$8:15am$tm$, $arr$7:45am$arr$, $sch$Shatekon Elementary School Spring Pic Day$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Erica Ryan, principal
ryaneric@shenschools.org
Melissa O'Hara (new) principal's aide
oharmeli@shenschools.org
3/30 Melissa confirmed and finished schedule ckg; 3/30/26 emailed Melissa to confirm ckg
Setup: 7:45am
Start: 8:15am
Outdoor, 5th grade group class photo on same day. 3/28/25 steph approved adding one teacher to pano)
PUSH INSIDE IF BAD WEATHER - RAIN DATE IS ONLY FOR PANO!
Individuals of all students and new staff
PANO is 8x24, one for each 5th grader and teacher AND 1 framed for school. Free because we are photographing their entire school this spring.
Shatekon
April 24, 2026
Time Slot
Photographer A
Photographer B
8:15-8:35
FSD-Lass
FSD-Cornell
8:35-8:55
K Luke
K Clark
8:55-9:15
1 Stockert
1 Grant
9:15-9:35
FSD-Bailey
FSD-DePaolo
9:35-9:55
1 Dunn
1 Russell
9:55-10:15
2 Pembrook
2 Hubbard
10:15-10:35
2 Harrington
2 Funaro
10:35-10:55
4 Smith
4 Cushman
10:55-11:15
4 Gould
4 Forth
11:15-11:35
5 Treacy
5 Blais
11:35-11:55
3 Early
3 Brown
11:55-12:15
3 Allen
3 Anderton
12:15-12:35
K Luke
K Clark
12:45-1:05
5 Simmons
5 Shain$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0ralfhq9vgmcah3298vsg28l8f@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_8a970590ffb66315$cid$, $src$google_calendar_import$src$, $uid$0do3ke4rtb1m77lgk3c7ff2ag7@google.com$uid$, $title$HOLD Karigon Elementary School (2 teams)$title$, $d$2026-09-30$d$::date, $d$2026-09-30$d$::date, $tm$8:20am$tm$, $arr$7:40am$arr$, $sch$HOLD Karigon Elementary School$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Nupoor Gordon, main office admin
gordnupo@shenschools.org
Set-up at 7:40am
Start at 8:20am, school days ends at 2pm.
Indoor - both teams in the gym.
All students and faculty
All service items
Full yearbook support (Treering)
Collages
Directories (student & principal's book)
Planners$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0do3ke4rtb1m77lgk3c7ff2ag7@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e638379f8dc83d85$cid$, $src$google_calendar_import$src$, $uid$4kre35id83b9jivc6e3e148g8d@google.com$uid$, $title$Union College Career Fair EVENING$title$, $d$2025-09-30$d$::date, $d$2025-09-30$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$9/9/25 per the note from Union, Jeff did the Sept '24 event and Steph shot the Nov '24 event. Both have sales and downloads in GP, so students did get their headshots. ckg
STEPHANIE!
How are you?! It's been a while but I just wanted to say hello and ask if you or your colleagues have any availability to do headshots again for our Career Fair on Tuesday September 30th from 4:00pm-6:30pm? I would like to kindly request that we not have the same photographer that came last year. I know that Kari (our previous office coordinator) reached out with concerns that many of our students did not receive their photos. 
I am also copying our new office coordinator, Kelly, who just started this summer. She will be handling the logistics going forward and can help give more details for setup etc. 
I hope you are doing well and that iSmile is having a great year too! 
Sincerely,
Julie
-- 
Julie Brannon 
(she/her/hers)
Assistant Director of Career Education
Union College, Career Center in Becker Hall
518-388-8781$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4kre35id83b9jivc6e3e148g8d@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_db7323bd46b21e6b$cid$, $src$google_calendar_import$src$, $uid$1cdhvrvspprfh7ttlfkpql4cfd@google.com$uid$, $title$Hoosic Valley Seniors (1 team)$title$, $d$2026-09-15$d$::date, $d$2026-09-17$d$::date, NULL, NULL, $sch$Hoosic Valley$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$work with main office admin:
Amy Vautrin
avautrin@hoosicvalley.org
Yearbook editor:
Rochelle Dinallo
rdinallo@hoosicvalley.org
Seniors 2:30-5:15pm on 9/15 and 9/16 - SETUP -  2pm
Seniors during school day starting at 8am 9/17 - SETUP -  7:30am
Seniors - 70-ish
15 minute increments per school$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1cdhvrvspprfh7ttlfkpql4cfd@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_27e202dc4b3e6fd4$cid$, $src$google_calendar_import$src$, $uid$3h0vss2o3d1j0vm1g64vb5l855@google.com$uid$, $title$Berne-Knox-Westerlo Secondary School (1 team)$title$, $d$2025-09-26$d$::date, $d$2025-09-26$d$::date, NULL, NULL, $sch$Berne-Knox-Westerlo Secondary School$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Laurie Hilton, main office admin
laurie.hilton@bkwschools.org
Arrive: we can get there as early as 7am
Start: Students  7:45am
Indoor
(
Your team will be setting up in the auditorium.....they can sign in the main office and then drive in between the buildings by the bulldog statue to unload nearest to the auditorium)
Grades 7-12 (12th graders need an ID card photo - do not hand them their QR)
All faculty
Yearbook and ID cards for students and faculty$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3h0vss2o3d1j0vm1g64vb5l855@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7b114059748dfda2$cid$, $src$google_calendar_import$src$, $uid$23ir2dl4mhihun3nsvj2mpjb38@google.com$uid$, $title$Karigon Immigration Day (1 photog EARLY AM)$title$, $d$2025-06-25$d$::date, $d$2025-06-25$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Tine Winther, 4th grade TA
winttine@shenschools.org
5/30 approved event by SM and MM
Early start, need to capture students arriving at school (arrive no later than 7:45am)
Carrie is getting more info - should be a short event
Making an exception to the 2 free guideline as it's a short shoot. May take $ off of commission to cover. ckg
Requested more details like what happens after the students arrive at school. ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$23ir2dl4mhihun3nsvj2mpjb38@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9f42e159c8d0ba9f$cid$, $src$google_calendar_import$src$, $uid$398gaqtssuh22um34u2voshtrb@google.com$uid$, $title$Troy School 14 Elem (2 teams)$title$, $d$2025-11-03$d$::date, $d$2025-11-03$d$::date, NULL, $arr$7:15am$arr$, $sch$Troy School Elementary School$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Christine Roe, David's admin asst
roec@troycsd.org
David Rossi, Asst Principal
rossid@troycsd.org
518-328-5811
10/20 emailed to confirm ckg
Setup at 7:15am to Start photos at 7:45am.
School days runs from 7:30am to 2:05pm
Elementary School
410 students
Indoor
Individuals of students and faculty
Collages
Service Strips
NO ID cards
NO yearbook
Attendance system files
Rossi, David
11:49 AM (26 minutes ago)
to Beth, roec, Matthew, me
Good Morning Beth, 
Below is the schedule we have for Monday.  Let us know if this will work for you.  It's similar to what we used last year. 
Thank you, 
David
Under the stairs Camera 1
Band Room- Camera 2
7:45
Beebe - K
Piraino- K
8:00
Christopher - K
Dufour - K
8:15
Weatherwax - 4
Maresco - 4
8:30
Varcasio - 2
Kenyon - 4
8:40
Klemm-5
McCarthy- 2
8:50
Bender - 2
Kelly - 4
9:10
Malone- 2
Thomas - 1
9:30
Wendelken - 3
Wildrick - 1
9:50
Rella - 3
Haskin - 3
10:10
Rulison-1
Frese - 3
10:30
Graham - 5
Davenport- 1
10:50
Nadal - 5
Farrigan- 5
11:10
Staff
11:30
Staff
Staff$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$398gaqtssuh22um34u2voshtrb@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_faaacc08b17bddc9$cid$, $src$google_calendar_import$src$, $uid$7lgregiphb5kmd5k83cnls8pm4@google.com$uid$, $title$Little Achiever's Preschool (1 team)$title$, $d$2025-11-05$d$::date, $d$2025-11-06$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Little Achiever s Preschool$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$MAIN CONTACT:
Alexandria Tanski
ATanski@littleachievers.education
Roxeanne Lansing, Director
RLansing@littleachievers.education
https://littleachievers.education
Has MWF and TTh classes therefore we are there two days
Collages
10/23/25 confirmed with Alexandria ckg
Arrive: 8:30am
Start: 9:00am
INDOOR - fall backdrop
Pics of all students and faculty (approx 100 children, Infants, 
toddlers, and preschoolers)
Collages in the fall
No commission$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7lgregiphb5kmd5k83cnls8pm4@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a50871c9303eb334$cid$, $src$google_calendar_import$src$, $uid$35t90gqhe13v6urtrc9ucan7q1@google.com$uid$, $title$LCS Graduation Morning (Matt + 1 photog)$title$, $d$2027-06-12$d$::date, $d$2027-06-12$d$::date, NULL, NULL, $sch$LCS Graduation$sch$, $typ$graduation/pano$typ$, ARRAY[$a$Matt$a$]::text[], ARRAY[]::text[], false, $info$Amy Thiel
Librarian/Lower School Tech Teacher/Graduation Coordinator
Loudonville Christian School
374 Loudon Rd. 
Loudonville, NY 12211
518.434.6051 x335
lcs.org
Ministry Center: photos before graduation from 9-10am
Graduation - 10:30am
3/25/26 booked with Bonnie ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$35t90gqhe13v6urtrc9ucan7q1@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_20d95b339b5d177f$cid$, $src$google_calendar_import$src$, $uid$2jdkpjalu6575asgj8ckdchdcv@google.com$uid$, $title$Walter B. Howard Elem (1 team)$title$, $d$2025-09-22$d$::date, $d$2025-09-22$d$::date, $tm$8:45am$tm$, $arr$8:15am$arr$, $sch$Walter B. Howard Elementary School$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mindy Keegan, main office admin
mkeegan@newlebanoncsd.org
Beth LaGrange, PTA
blagrange@newlebanoncsd.org
9/15 Beth L confirmed to Beth P ckg; 
9/5 emailed Mindy to confirm ckg
Setup 8:15am; start: 8:45am; classes every 20 minutes
Generally have a school volunteer that will help
Main office can provide walkie-talkie to call classes down if they're late
Please use stump
Outdoor - plain scene, no frills, no chair or shep hook per school
Individuals of all students and faculty/staff
All service items
Faculty ID cards
full yearbook support (Treering)
COLLAGES
LaGrange, Beth
1:19 PM (0 minutes ago)
to Beth, mkeegan, Matthew, me, Margaret
Hey Beth
 Arrival at 8:15 and starting photos at 8:45 still works for us.
The schedule is as fallows
8:45 Albrecht & Willis (4th)
9:00 deOliveira (K)
9:15 Gallucci (Pre-K)
9:30 Bove (K)
9:45 Griffith & Heslin (4th)
10:00 Rank (5th)
10:15 Rank (5th)
10:30 Jubie (3rd)
10:45 Ouimet (3rd)
11:00 Mastin (1st)
11:15 Watts (1st)
11:30 Stevens (2nd)
11:45 Stevens (2nd)
12:00 Schlosser (6th)
12:15 Bonacquisti (6th)
Rank and Stevens both have larger classes so we gave them 2 slots each
Thanks
Beth
LaGrange, Beth
8:54 AM (4 minutes ago)
to Beth, mkeegan, Matthew, me, Margaret
Good Morning,
We are going to have you in the spot we usually have the pictures set up. When looking at the school you will be to the left in the front.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2jdkpjalu6575asgj8ckdchdcv@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b786f6ecc86fb999$cid$, $src$google_calendar_import$src$, $uid$3glc10ju0cpc8ro6jn2d4697d4@google.com$uid$, $title$ERIN First Day!$title$, $d$2026-04-20$d$::date, $d$2026-04-20$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3glc10ju0cpc8ro6jn2d4697d4@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_56a1e65eaf013cb9$cid$, $src$google_calendar_import$src$, $uid$7j9g33o8abprvlis19m80pv9uf@google.com$uid$, $title$Gordon Creek Elem Fall Picture Day (2 teams)$title$, $d$2026-10-08$d$::date, $d$2026-10-08$d$::date, NULL, $arr$8:00am$arr$, $sch$Gordon Creek Elementary School Fall$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Katie Bennice
Administrative Assistant
Gordon Creek Elementary School
(518) 884-7270 ext.3368
kbennice@bscsd.org
Arrive: 8 am  Start with staff 830, students at 9:15am (staff not specifically noted on schedule)
500+ elementary students
individual students and faculty
all service items and yearbook support
wants one day
class composites
Katie sets the photo day schedule
10% commission$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7j9g33o8abprvlis19m80pv9uf@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_8a76e377ba7776b0$cid$, $src$google_calendar_import$src$, $uid$0cqm2ps7kinlj1bljdk4gqs5tq@google.com$uid$, $title$HOLD Chango Elem Picture Day (2 Teams)$title$, $d$2026-09-29$d$::date, $d$2026-09-29$d$::date, $tm$8:45am$tm$, $arr$8:15am$arr$, $sch$HOLD Chango Elementary School$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Emily Carter, PTO pic day contact
mily.carter4191@gmail.com

Arrive: 8:15am
Start: 8:45am staff, 9:15am students

Indoor
Collages
Treering Yearbook
Service Strips$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0cqm2ps7kinlj1bljdk4gqs5tq@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_43e80a441020d5a3$cid$, $src$google_calendar_import$src$, $uid$023DC03A-7C01-4767-8A69-3BD5684CA504$uid$, $title$Middle School Closings Steph$title$, $d$2025-06-05$d$::date, $d$2025-06-05$d$::date, NULL, NULL, $sch$Middle School Closings$sch$, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$023DC03A-7C01-4767-8A69-3BD5684CA504$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_1eb13e13e844d44d$cid$, $src$google_calendar_import$src$, $uid$1mr1hppb39dfb37ld64bt7gm1c@google.com$uid$, $title$Elevate Dance Project Day 1 4;00-8;30 PM$title$, $d$2026-03-30$d$::date, $d$2026-03-30$d$::date, $tm$4:45pm$tm$, $arr$4:15pm$arr$, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Bridget Engelhardt
bengelhardt@rcscsd.org
Molly Engelbardt, dance studio owner
elevatedanceproject1@gmail.com
3/11/26 emailed Bridget and Molly E cc Molly S to get rosters and schedule ckg
2/18/26 times per email from Bridget to Steph and Carrie
Arrive: 4:15pm
Start: 4:45pm
End about 8:30pm
Located in Faith Plaza, 2480 Route 9W, Ravena, NY 12143 
NEW SPACE upstairs in the mall
NOTE: BATCH SHIPPING TO THE STUDIO FOR MOLLY E. TO PICK UP
Bridget Engelhardt
9:40 AM (1 hour ago)
to 
Molly
, me, Bridget, elevatedanceproject1
Hey Molly!
There is a ton of parking, so feel free to park wherever you can find a spot.  If you're facing Shop n Save, the door is directly to the right.   The door is kind of facing the doors of the store. We are in between Shop n Save and the Chinese takeout spot.  There is a large decal on the door that says Elevate Dance Project on the door.  One of us will meet you right down by the door.
Looking forward to meeting you!!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1mr1hppb39dfb37ld64bt7gm1c@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_104f22f19098d1e9$cid$, $src$google_calendar_import$src$, $uid$7fqsdhvpmtcl4mcgdp70eq733e@google.com$uid$, $title$Wood Road Elem Fall Photos (2 teams)$title$, $d$2025-10-09$d$::date, $d$2025-10-09$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Wood Road Elementary School Fall$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$MaryBeth Leslie
Administrative Aide
Wood Road Elementary School
518-884-7290 x3411
cell: (518-545-0593) call to be let into the bldg
Setup: 8:00am
Start: 8:30am faculty, 9:15am start students
Indoor
600 students, 200 staff
Collages
ALL service items
Yearbook (Treering)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7fqsdhvpmtcl4mcgdp70eq733e@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4395a4b0153070da$cid$, $src$google_calendar_import$src$, $uid$7e1ej5ivpc7ci2sqagkvffvfab@google.com$uid$, $title$Berne-Knox-Westerlo SENIORS (2 photogs)$title$, $d$2025-08-28$d$::date, $d$2025-08-30$d$::date, NULL, NULL, $sch$Berne-Knox-Westerlo$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Michelle VanPatten NEW yesrbook editor and picture day contact
michelle.vanpatten@bkwschools.org
Laurie Hilton, school admin
laurie.hilton@bkwschools.org
Indoor/Outdoor
Indoor (Auditorium) - Casual, drape, tie, maroon/white cap & gown
Treering$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7e1ej5ivpc7ci2sqagkvffvfab@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_71ff88251e39ff8d$cid$, $src$google_calendar_import$src$, $uid$56qqhjugj334cpcs8ttpgdj0pf@google.com$uid$, $title$Hoosic Valley MS/HS (1 team) Underclass$title$, $d$2025-09-16$d$::date, $d$2025-09-17$d$::date, $tm$7:45am$tm$, $arr$7:15am$arr$, $sch$Hoosic Valley Middle School/High School Underclass$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$work with main office admin:
Amy Vautrin
avautrin@hoosicvalley.org
Yearbook editor:
Rochelle Dinallo
rdinallo@hoosicvalley.org
Underclass during school day on 9/16-9/17
Seniors from 2:30-5:15pm on 9/16-9/17
Seniors only on 9/18 during school day 8am - 2:30pm
Set-up: 7:15am
Start time: 7:45am
9/16 is DAY A
9/17 is DAY B
Indoor
Individuals of all students and faculty during PE classes
In gym 
IDs for students, yearbook in late fall
all classes have about 65-70 students in them.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$56qqhjugj334cpcs8ttpgdj0pf@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_419698feda8a81f6$cid$, $src$google_calendar_import$src$, $uid$FED95BF3-CEEA-4A2C-A5FF-AA11293DE3A3$uid$, $title$Hold Photo Booth for Erin Snyder$title$, $d$2026-10-31$d$::date, $d$2026-11-02$d$::date, NULL, NULL, NULL, $typ$photo booth$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$FED95BF3-CEEA-4A2C-A5FF-AA11293DE3A3$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_81e67dbd782fc601$cid$, $src$google_calendar_import$src$, $uid$2q76ho2sv9n8u9g6o2rfirm6rr@google.com$uid$, $title$Cairo-Durham Graduation RAIN DATE (2 photogs)$title$, $d$2026-06-27$d$::date, $d$2026-06-27$d$::date, NULL, NULL, $sch$Cairo-Durham Graduation$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Alyssa Bratton abratton@cairodurham.org

OUTDOOR, starts at 7:30pm
Rain date next day, June 27, time TBD

2 photogs to shoot grads as they cross stage from left and right
group senior photo$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2q76ho2sv9n8u9g6o2rfirm6rr@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_800863c57833d3c4$cid$, $src$google_calendar_import$src$, $uid$5ekkkk0taj91b95kf11nvdanq5@google.com$uid$, $title$Academy Upper School Pics (New/Mentor/US)$title$, $d$2025-09-04$d$::date, $d$2025-09-04$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Christine Vaughn, Head of Upper School
VaughanC@albanyacademy.org
Starting at 8:30, mentors arrive along with faculty. They can start getting photos taken then. We have a short meeting and then new students move to advisory. 
Photo Taking Time: 
9:15 - 9:40am - Taking photos of mentors 
9:40 - 10:20am  - Taking photos of mentors 
10:20 - 12:00am - you will have rotations of 35( 1 group at a time- 25 minutes) to take photos. There will be three rotations.
Faculty are expected to get photos taken before 9:15am or after 12:00am.
Rebeeca Trainor
TrainorR@albanyacademy.org
Rebecca Trainor
7/2/25 12:27 PM (1 hour ago)
to 
Stephanie
, me
No problem at all Carrie! I've just spoken with the DDs about our picture days, and it looks like we will do September 4 (half day) for US pictures, and then a full day on September 10 for all three divisions. I've cced Stephanie on this email too since she was communicating with Christine about all of this as well. Let me know if this works for you, and I'll make sure it is added to the master calendar!
Dear Steph,
Remembering last year and wanting to change the way we do pictures for your team, I wanted to see if we could book you for two half days. The first day being September 4
th
 - New Student Orientation Day. We can make sure you photograph all of our new students along with all of the mentors. It will be almost half of our school on that day. 
The second day you could be here is your usual day. The first day of school the 5th? Fill me in if this works for your schedule! We could also move to Monday the 8
th
 and Tuesday the 9
th
 and have you hear three half days?
Thanks a ton,
Christine$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5ekkkk0taj91b95kf11nvdanq5@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_22237584d5189c56$cid$, $src$google_calendar_import$src$, $uid$04v92dfcg806l0hjvastmp3p49@google.com$uid$, $title$Shatekon Grad Photos (1 team)$title$, $d$2026-03-05$d$::date, $d$2026-03-05$d$::date, $tm$7:45am$tm$, $arr$7:15am$arr$, $sch$Shatekon$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Lisa Kelley, 5th grade aide/pic day contact
kelllisa@shenschools.org

2/11/26 Lisa confirmed all ckg; 2/10/26 emailed Lisa to confirm ckg
Arrive: 7:15am
Start: 7:45am (staff)
8:15am (5th Graders)
main conference room

5 classes of 5th graders (approx 100 students)
ONLY cap & gown pics - we provide caps and gowns
Matt estimated we'd need about 20 minutes per class

2/10/26 done ckg; 1/8/26 make sure school nows about price increase to $4 per folder ckg
Making grad folders, PTO paying $4 each. Will personalize for school.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$04v92dfcg806l0hjvastmp3p49@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_6f9140305f4d0976$cid$, $src$google_calendar_import$src$, $uid$5ktqt1h1s9tjksvjjul2jdlepa@google.com$uid$, $title$HOLD Rosendale Elementary (2 teams+1)$title$, $d$2026-09-16$d$::date, $d$2026-09-16$d$::date, NULL, $arr$7:00am$arr$, $sch$HOLD Rosendale Elementary$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Ashley Feldman
ashleyfeldman929@gmail.com

Arrive: 7am
Start Staff: 7:35am 
Students: 8:05am

Indoor on stage, both teams
Outdoor GROUP class pictures
Service Strips
Yearbook support
NO IDs$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5ktqt1h1s9tjksvjjul2jdlepa@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_60a7a35f148eeb3b$cid$, $src$google_calendar_import$src$, $uid$1pucsq6i8dk93au4ls1ck48ion@google.com$uid$, $title$Capital Region BOCES Albany CTE Main (2 Teams)$title$, $d$2026-09-21$d$::date, $d$2026-09-21$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$NO NEED TO PRINT QR SHEETS - SHOOT OFF LAPTOPS
**DO NOT HAND OUT QR CARDS TO ANYONE - NOT SELLING THESE TO PARENTS**
CONTACT FOR ALBANY CTE MAIN LOCATION
Valeria Smith, asst principal
valerie.smith@neric.org
925B Watervliet-Shaker Rd, Albany, NY 12205
7:30am Arrival 
The AM shift runs from 8:10 – 10:34. The PM shift is from 11:10 – 1:34

Student headshots - take 2 of each student but only keep one
Staff headshots - same as students
Charging $3 per headshot delivered. NEEDS CONTRACT and W9
Roughly 600 students, am and pm sessions$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1pucsq6i8dk93au4ls1ck48ion@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e1416b4ca45af8e3$cid$, $src$google_calendar_import$src$, $uid$50c2r8q3f43l7ipprqakus4jsi@google.com$uid$, $title$Dean Leber Leadership Headshots STEPH$title$, $d$2025-12-11$d$::date, $d$2025-12-11$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$50c2r8q3f43l7ipprqakus4jsi@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_0701288d27f27dad$cid$, $src$google_calendar_import$src$, $uid$7h418lhv5kb5k50jncdh2rqe3r@google.com$uid$, $title$Airline Drive Academy Makeups (1 Team)$title$, $d$2025-12-04$d$::date, $d$2025-12-04$d$::date, $tm$7:30am$tm$, NULL, $sch$Airline Drive Academy$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Amanda McNeal, Asst Principal
amanda.mcneal@neric.org
70 Students (ages?)
70 Staff
Small classes of 5-6 students each
Capital Region BOCES school

8am Start
7:30am Arrival

Indoor, school blue background
Individuals of students and staff
Class pictures COLLAGES$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7h418lhv5kb5k50jncdh2rqe3r@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_41f1801eb315efe1$cid$, $src$google_calendar_import$src$, $uid$7r435gua9c75vihovleo5a1fmn@google.com$uid$, $title$Little Scholars Viaport Spring and Grads (1 team)$title$, $d$2026-06-03$d$::date, $d$2026-06-03$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Little Scholars Viaport Spring Grads$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Ariel Marino, asst director
littlescholarsariel@gmail.com

5/25/26 confirmed with Ariel, Nellie not director any longer ckg; 5/18 emailed Nellie cc Andrew ckg
Arrive: 8:30am
Start: 9am

Viaport: 93 West Campbell Road PO Box 6135 Schenectady NY 12306

Indoor with spring backdrop AND Grad photos - they have caps & gowns
Small, 20-25 kiddos (combined with Duanesburg Rd center so may be bigger at Aug 2025)
Photos of all students
no service items
no commission (under 100 students)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7r435gua9c75vihovleo5a1fmn@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_fcd3b34d08502e09$cid$, $src$google_calendar_import$src$, $uid$1n7nobqefv42n9bngra8scle75@google.com$uid$, $title$Karigon PANO RAIN DATE (1 photog)$title$, $d$2026-05-13$d$::date, $d$2026-05-13$d$::date, NULL, NULL, $sch$Karigon$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Nupoor Gordon (NEW picture day contact)
gordnupo@shenschools.org
Need to turn around FAST for yearbook deadline$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1n7nobqefv42n9bngra8scle75@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_97f94ee0d50b18b7$cid$, $src$google_calendar_import$src$, $uid$34uqqfh6g9hb370hq1jpopc39a@google.com$uid$, $title$Skano Elem Picture Day (3 teams)$title$, $d$2025-09-25$d$::date, $d$2025-09-25$d$::date, $tm$7:30am$tm$, $arr$7:00am$arr$, $sch$Skano Elementary School$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Erin Kisling, main office admin
kislerin@shenschools.org
Set-up 7am
Start: 7:30am staff, then 8am students, classes every 15 min with a short lunch break (1/15/25 try to go for 20 min per class)
FRIST TIME DOING ONE DAY with 3 teams
OUTDOOR
580 students
all faculty
all service items / attendance files
full yearbook / Treering$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$34uqqfh6g9hb370hq1jpopc39a@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4cab0fa0fe07a969$cid$, $src$google_calendar_import$src$, $uid$4o0hsbt3kf8tktk376unbrgu6g@google.com$uid$, $title$Senior Tea (Academy)$title$, $d$2026-06-05$d$::date, $d$2026-06-05$d$::date, NULL, NULL, $sch$Senior Tea Academy$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Friday, June 5
Senior Tea - 1:00pm under the Class of 1970 Pavillion on the US Campus (rain location - Buttery)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4o0hsbt3kf8tktk376unbrgu6g@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7cb4a7b2897886c6$cid$, $src$google_calendar_import$src$, $uid$7cut6l3dbvah8fch3pbf25d62e@google.com$uid$, $title$Tesago 5th Grade Group RAIN (1 photog)$title$, $d$2027-05-18$d$::date, $d$2027-05-18$d$::date, NULL, NULL, $sch$Tesago 5th Grade Group RAIN$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$RAIN DATE for pano only - need timing
SPRING PHOTOS (different contacts for fall and spring photos)
Emma Paradise 
paraemma@shenschools.org
SPRING PIC DAY CONTACT
*Darlene Kern: 
kerndarl@shenschools.org
, office admin$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7cut6l3dbvah8fch3pbf25d62e@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a8abd64dc173bbb1$cid$, $src$google_calendar_import$src$, $uid$6a8j3j83lsoi8sgpu5eqil34pq@google.com$uid$, $title$Arongen 5th Grade Graduation 8:00-10$title$, $d$2025-06-26$d$::date, $d$2025-06-26$d$::date, NULL, NULL, $sch$Arongen 5th Grade Graduation$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mallory Detzal, new pic day contact
detzel101312@gmail.com
Cindi Breen, main office admin
breecind@shenschools.org
6/24/25 Cindi emailed start time is earlier-promptly at 8:20am, so families may arrive about 8am.
3/25/25 details confirmed with Cindi ckg
notes for reference:
Hi everyone, as per the 5th grade team, they'd like you to capture photos of each student as they go on the stage and shake hands with Mr. Hills and their teacher.
CHANGED at 6/24/25 - see above! The ceremony begins promptly at 9:00am and families will be arriving as early as 8:15am.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6a8j3j83lsoi8sgpu5eqil34pq@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a482b8821adc8910$cid$, $src$google_calendar_import$src$, $uid$225me70mirr8tv57lm4mv1uifn@google.com$uid$, $title$Pachira White Party LAUREN$title$, $d$2025-08-07$d$::date, $d$2025-08-07$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, $info$Contact Brittany Lawton brittany@lawtonsocial.com$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$225me70mirr8tv57lm4mv1uifn@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_1b45e5d66cd72930$cid$, $src$google_calendar_import$src$, $uid$2spc1gl00e7u9hpbief7ahqqh1@google.com$uid$, $title$Northville Spring Sports & Clubs (2 photogs)$title$, $d$2026-04-02$d$::date, $d$2026-04-02$d$::date, NULL, $arr$11:30am$arr$, $sch$Northville & Clubs$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Schmitt, Sue, yearbook editor, pic day contact
sschmitt@northvillecsd.org
John Karbowski, Athletic Director
jkarbowski@northvillecsd.org
Individual and team photos
Clubs for the Yearbook - list below
NEW Students & Staff - BRING school blue background
Senior Banners**
NEED SUPER QUICK TURNAROUND ON BANNERS PER AD
Also on clubs for their FOR YEARBOOK (please name club images using club name)
CONFIRM TIMING
Arrive: 11:30am
Start Clubs: 12pm
Sports follow after clubs$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2spc1gl00e7u9hpbief7ahqqh1@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_810f6114a384a704$cid$, $src$google_calendar_import$src$, $uid$6si2ojaeig8c0tn7fsla2qshns@google.com$uid$, $title$Kira's Kids Corner - Rotterdam (Lauren)$title$, $d$2025-12-11$d$::date, $d$2025-12-11$d$::date, NULL, $arr$9:30am$arr$, $sch$Kira s Kids Corner - Rotterdam$sch$, $typ$review$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, $info$Kira Peck (Owner) | Home Daycare
Phone: (518) 902 - 6703
Email: 
Holiday4141@gmail.com

 Scheduled and spoke to Kira over the phone 11/03/25 LR
-- 
Nikki McGarw (Parent)
Email: 
L1U3CKY@yahoo.com
Works at a school we may or may not photograph, pushed Kira to schedule school pictures for daycare that her son attends.
--
12/8 got roster; 12/1/25 emailed to confirm and get roster ckg
Address: 2431 Barton Ave, Rotterdam, NY 12306, USA
13 Kids
9:00 AM Setup
9:30 AM Start 

Winter Setup Indoors (In Living Room) 
- (1) 6m, can sit up unsupported
- The rest are toddler age
- 1 or 2 sets of siblings

10:30 Approx End

Lauren 
Collage
--$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6si2ojaeig8c0tn7fsla2qshns@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ab73f94bb0a284ed$cid$, $src$google_calendar_import$src$, $uid$47vkjphkaqp3dj07dhr51aj2f5@google.com$uid$, $title$Waterford-Halfmoon Elem MAKEUP DAY (same team as HS)$title$, $d$2025-10-16$d$::date, $d$2025-10-16$d$::date, NULL, $arr$8:30$arr$, $sch$Waterford-Halfmoon Elementary School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jessica Rice, new PTA President
waterfordhalfmoonpto@gmail.com
SAME DAY AS MS/HS
Multipurpose room
Tentative - need to confirm
8:00 am - set up
8:30   K
8:45  1-2
9:00  3-4
9:30  5-6
9:45  start middle/high schoolers
Staff can come anytime$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$47vkjphkaqp3dj07dhr51aj2f5@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_daa606e6925e0033$cid$, $src$google_calendar_import$src$, $uid$0ei9a9huvo71qqqp7lr0ov5glj@google.com$uid$, $title$Belanger Nursing Senior Photos (2 photogs)$title$, $d$2026-02-17$d$::date, $d$2026-02-17$d$::date, $tm$12:30pm$tm$, $arr$12:00pm$arr$, $sch$Belanger Nursing Senior$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Caitlyn Poole (She/Her/Hers)
Student Services Coordinator 
518-243-1582
poolec@ellismedicine.org
2/12/26 update to timing ckg:
Arrive 12:00pm
Start 12:30pm-2:30pm
Indoor senior photos
Bring drape
NO SHIRT/TIE/JACKET - males are asked to bring own ckg
If faculty stop by, we'll have blanks for these - change price list on album within grad job
Senior composite to be made BEFORE May graduation. 
Deadline is APRIL 13 for all senior portraits to be taken and selected
- Caitlyn will proof
1/12/26 WE ARE NOT PHOTOGRAPHING THEIR 5/22/26 GRADUATION. THEY BALKED AT THE $300 FEE. ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0ei9a9huvo71qqqp7lr0ov5glj@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_972d27e3fcefedea$cid$, $src$google_calendar_import$src$, $uid$7ke264u2h9tcdnmggerhdims3f@google.com$uid$, $title$Albany JCC (1 team)$title$, $d$2025-11-13$d$::date, $d$2025-11-14$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Albany JCC$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Nikki Mann, Early Childhood Program Coordinator
nikkim@albanyjcc.org
Sidney Albert Albany Jewish Community Center
340 Whitehall Rd
Albany, NY  12208
E.C Main Line 518-689-0039
Phone 518-438-6651 x118
NEW Fall 2024
10/28/25 emailed Nikki to confirm ckg
Arrive: 8:30am
Start: 9am, need to end between 12-12:30 each day
About 160 students, infants to preschool age
Indoor on school blue background (Nikki is okay with the blue background even if babies cannot be cut out for background changes)
photos of all students and faculty
***GROUP class pics on a large backdrop
(was with Lifetouch in 2023-24)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7ke264u2h9tcdnmggerhdims3f@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f295da5ea69cbd3f$cid$, $src$google_calendar_import$src$, $uid$43kjiecuehp9o48u980ri2sem8@google.com$uid$, $title$Rotterdam Youth Soccer$title$, $d$2025-09-27$d$::date, $d$2025-09-27$d$::date, NULL, NULL, NULL, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Contact CJ Goodwin (Erin Goodwin's husband)
Photos done on fields adjacent to Jefferson Elementary
30 teams, individual and group photos
Games run from 9:30-3:30, 4 games at a time, pictures 45 minutes to 1 hour before games
Everyone gets a free team 5x7 (ok per Steph) - print and deliver those separately from parent orders
Batch shipping to CJ as an option for parent orders
In case of rain, pushing indoors to indoor practice facility nearby due to lack of rain date availability this year
Stephanie McCauley
Mon, Sep 15, 2:53 PM (18 hours ago)
to CJ, me
Hi CJ!
I had a second to draft a schedule for the photos.  
To be truthful this is a VERY aggressive timeline/schedule for one person, which is all I have available for this date.  (I do have someone doing the team photos after I am done with the individuals but only me taking all the individuals.)   This will result in two things:
1.  I will be limited to just a couple poses per kid, which should be ok because I can turn a full body into a close up and change to black and white etc so there will still be variety, but 
bigger …
2.  
Every single solitary team needs to come FIVE MINUTES EARLY, lined up ALPHABETICALLY, with a ball (unless I can grab one from you to use all day) and have a coach WITH ME who is able to “feed” me the kids one at a time and then corral them after for their team pic immediately after their individuals.   This is the ONLY way this will work using just one individual photographer.  It has to be locked in with every team all day.
Do you think everyone is capable of this?  Because, if they aren't, I WILL run behind and then everyone will be mad and then games will be delayed and if someone is late at the start it will domino all day long.  Thinking about that scenario, it would be better to not even do photos than to cause that level of disruption.
Thoughts?
Not trying to be Negative Nancy, just know from vast experience what this can devolve into and acknowledging that this is a LOT of kids for one person.   If EVERYONE is five minutes early with their players lined up alphabetically, it can be done.
SESSION 1   GIRLS 3-4 - game time 9:30
8:00 am  3/4 Girls Green 
8:15 am  3/4 Girls White
8:30 am 3/4 Girls Orange
8:45 am 3/4 Girls Black
SESSION 2  GIRLS 1-2 and BOYS 3-4   game time 11:00
9:00 am 1/2 Girls White
9:10 am 1/2 Girls Black
9:20 am 1/2 Girls Royal
9:30 am  1/2 Girls Green
9:40 am  3/4 Boys Red
9:50 am  3/4 Boys Orange
10:00 am  3/4 Boys Green
10:15 am  3/4 Boys Black
10:30  am  3/4 Boys Royal
10:45 am  3/4 Boys White
SESSION 3 - KINDERGARTEN AND BOYS 1/2   game time 1:30
11:00 am 1/2 Boys Orange
11:10 am  1/2 Boys Green

11:20 am1/2 Boys Royal
11:30 am 1/2 Boys White
11:50 am  Kindergarten Red
12:10 pm Kindergarten White
12:30 pm  Kindergarten Orange
12:50 pm  Kindergarten Black
SESSION 4   Girls and Boys 5/6 - game time 3:30
1:15 pm  5/6 Boys White
1:30 pm  5/6 Boys Red
1:45 pm  5/6 Boys Orange
2:00 pm  5/6 Boys Green
2:15 pm  5/6 Girls Black
2:30 pm  5/6 Girls Pink
2:45 pm  5/6 Girls Royal
3:00 pm  5/6 Girls Green$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$43kjiecuehp9o48u980ri2sem8@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b8e226d6e7087a2a$cid$, $src$google_calendar_import$src$, $uid$2kq5bmi8guru039rjtmt9hbeih@google.com$uid$, $title$Olivia Singer Rain date 9;00 STEPH$title$, $d$2026-06-02$d$::date, $d$2026-06-02$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2kq5bmi8guru039rjtmt9hbeih@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_cf1325142106cfdd$cid$, $src$google_calendar_import$src$, $uid$1pqj4q9p8j5hj903o5bl6nr7tg@google.com$uid$, $title$Photo booth Siena$title$, $d$2025-09-08$d$::date, $d$2025-09-08$d$::date, NULL, NULL, NULL, $typ$photo booth$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Hi Steph, 
How have you been? I hope you are having a great summer! How is your son feeling post-graduation?
I wanted to reach out to see if we might be able to rent your photo booth for September 8th from 1:00 p.m. - 2:00 p.m. We are partnering with our student activities team to offer an interactive table about Commencement. We thought it would be fun for students to "see themselves as graduates" and have them pose with some regalia on in front of the photo booth. 
Let me know if this might be possible and what the cost would be. Thank you so much!
Best, 
Sam 
𑁋
Sam Hesler
Asst. Director of Academic Programs and Events | Siena College
Office:
 518-783-2307
Email:

shesler@siena.edu
Website:

siena.edu$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1pqj4q9p8j5hj903o5bl6nr7tg@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3544a16e2f55e33b$cid$, $src$google_calendar_import$src$, $uid$5uc6j1h0dj82l1245kg1qge5n1@google.com$uid$, $title$TSL Kids Crew, Rotterdam & Grads (1 photog)$title$, $d$2026-05-20$d$::date, $d$2026-05-20$d$::date, $tm$8:30am$tm$, NULL, $sch$TSL Kids Crew Rotterdam & Grads$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Please hold this date - we messed up this school last year a couple of times (moving dates and then not showing up).
Natasha McKenzie
natashamckenzie33tsl@gmail.com
5/6/26 emailed Natasha cc Beth to confirm timing ckg
Arrival at main site at 2617 Hamburg St: 8am
Start: 8:30am (snack time is at 9:30 so finish before that time, and then go across street for infants)
Bring for grads:
Our cobalt blue kid size caps & gowns
a fake diploma for kids to hold (rolled up paper with a ribbon tied around it)
Indoor with preschool grad backdrop for grads AND Spring backdrop for toddlers
13-ish  preschoolers and 4 teachers
*QUICK TURNAROUND!!!! Shorter batch ordering as school ends mid June*$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5uc6j1h0dj82l1245kg1qge5n1@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_afdfb328a371da8c$cid$, $src$google_calendar_import$src$, $uid$4scc1fp1rc57mr1h2ajft40dvq@google.com$uid$, $title$Maple Leaf Halfmoon (2 teams-baby team/toddler team)$title$, $d$2025-11-20$d$::date, $d$2025-11-20$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$Maple Leaf Halfmoon$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Katie Dobbs
Executive Director for all Maple Leafs
kdobies@mapleleafchildcare.com
Tori, director (new as of August 2025)
halfmoon@mapleleafchildcare.com
Backdrops - 
WINTER THEME confirmed 11/6/25 ckg
TWO TEAMS - Bring appropriate baby stuff.
11/6 confirmed with Tori ckg
Setup: 7:30am
Start: 8am until noon (can go later, but then kids get messy and cranky)
Individuals of all 100 students (ages 5 mos to 5 years) and all staff
11/6/25 THEY DOUBLE CHECKED THEY WILL HAVE SIBLING PHOTOS. I told them that if the kiddos are cooperative, then we can certainly try. ckg
collages$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4scc1fp1rc57mr1h2ajft40dvq@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_858ae45af31b955e$cid$, $src$google_calendar_import$src$, $uid$7ptsvi6g9v53hcbq1occvhck0n@google.com$uid$, $title$Woestina Elem Pre-K AM$title$, $d$2025-11-20$d$::date, $d$2025-11-20$d$::date, $tm$9:15a$tm$, $arr$8:45a$arr$, $sch$Woestina Elementary School Pre-K AM$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$ONLY PRE-K STUDENTS at this location
1292 Main Street, Rotterdam Junction, NY 12150
(about 12 miles from Jefferson)
Carrie Fiske, coordinator
cfiske@schalmont.net
Thomas Reardon, Superintendent
treardon@schalmont.net
10/31 timing confirmed with Tom ckg
Arrive: 8:45a
Start: 9:15a
Indoor( like Jefferson in the fall per the superintendent)
Gym
Class Collages
54 students (3-4 year olds) and their staff (3 classes)
Attendance Files
Reardon, Thomas
Oct 31, 2025, 3:45 PM (2 days ago)
to 
Nicole
, 
Kimberly
, 
John
, 
Kathie
, me, Carrie
Greetings!
Thank you so much for writing us, and we are so excited to host you!!  We will definitely get that completed spreadsheet!  I am thinking we could easily use our gym, which has plenty of electricity and room to set up.  Our kids are in and settled by 9:00 am; would 9:15 perhaps work, with 20 minute increments for our three classes?  
I will also get these flyers copied and distributed to students ASAP!
So excited!
Tom :)--
------------------------------
------------------------------
-----
Dr. Thomas B. Reardon, Ed.D.
Superintendent of Schools
Schalmont Central School District
4 Sabre Drive
Schenectady, New York 12306
518-355-9200 x4001
treardon@schalmont.net$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7ptsvi6g9v53hcbq1occvhck0n@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_07c7ac0f5ab0817b$cid$, $src$google_calendar_import$src$, $uid$4rmanrpcacos26bi3cdstef70i@google.com$uid$, $title$Victoria and Nathan Wedding Consult On-Site 5pm (Matt)$title$, $d$2025-06-05$d$::date, $d$2025-06-05$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Matt$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4rmanrpcacos26bi3cdstef70i@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_5d965056e8507431$cid$, $src$google_calendar_import$src$, $uid$2fmsm9ui51vutdmjibjomhbtac@google.com$uid$, $title$TSL Daycare Guilderland (1 team)$title$, $d$2026-05-06$d$::date, $d$2026-05-06$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$TSL Daycare Guilderland$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Alexis LaRose
alexislarose.tsl@gmail.com
4/24 confirmed ckg; 4/20/26 emailed Alexis cc Molly to confirm ckg
Setup: 8:30am
Start: 9am
Indoor with spring backdrop
50 students (ages 3 months to 4 years) and NEW staff (7-8 of them)
Individuals of all the above
Redeemer Church
183 Schoolhouse Road
Albany, NY 12203$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2fmsm9ui51vutdmjibjomhbtac@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_5ec082703a7cf501$cid$, $src$google_calendar_import$src$, $uid$2jjvhdkf7mvbv59vd1s7ocn4l7@google.com$uid$, $title$Duanesburg Makeup Day Elem & MSHS (1 team)$title$, $d$2026-10-19$d$::date, $d$2026-10-19$d$::date, NULL, NULL, $sch$Duanesburg Elementary School & MSHS$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Leah Simpson, elementary school admin
lsimpson@duanesburg.org

Andrea Hunter, high school admin
ahunter@duanesburg.org

Both schools on same day$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2jjvhdkf7mvbv59vd1s7ocn4l7@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_98c254fe4b5e0c8d$cid$, $src$google_calendar_import$src$, $uid$38fuucrfja497o0rtghnr90al3@google.com$uid$, $title$Milton Terrace Yearbook Photos (1 photog)$title$, $d$2026-03-11$d$::date, $d$2026-03-11$d$::date, $tm$9:30am$tm$, $arr$9:15am$arr$, $sch$Milton Terrace Yearbook$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Sarah Kinney, main office admin
skinney@bscsd.org
2/20 SArah confirmed; 2/20/26 emailed Sarah cc Beth to confirm and get location/schedule ckg
Arrive: 9:15am
Start: 9:30am
Photos on stage in school cafeteria per Sarah
Photos of school's clubs and groups for the yearbook
Upload to Smug and send Carrie the link when ready
Please rename images with group or club name so they can be easily identified (Carrie can help if needed)
10 min between group
schedule: 
https://docs.google.com/document/d/1mMESema_4-S-rDP6fM1UlBozm4MHkLL29F8WoVEWrRc/edit?tab=t.0$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$38fuucrfja497o0rtghnr90al3@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7b5f7900f17867af$cid$, $src$google_calendar_import$src$, $uid$2d2meddmilhee6j9u5c5rrum5s@google.com$uid$, $title$Little Journeys Daycare (1 team)$title$, $d$2026-03-12$d$::date, $d$2026-03-12$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Little Journeys Daycare$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Ashley Stewart (formerly with Little Scholars)
(518) 218-6660 
stewart.ashley28@gmail.com

2/28 confirmed; 2/17/26 emailed Ashley cc Andrew to confirm ckg
Arrive: 8am 
Start: 8:30am

Indoor with a spring backdrop
30 kids, infants to preschool ages
students and new staff pics$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2d2meddmilhee6j9u5c5rrum5s@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_fcb3a79edaf8fa4a$cid$, $src$google_calendar_import$src$, $uid$57aejplipcs8kh1fqluulrfifu@google.com$uid$, $title$Albany Academy Makeup Day (1 photog)$title$, $d$2025-10-09$d$::date, $d$2025-10-09$d$::date, NULL, NULL, $sch$Albany Academy$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Rebecca Trainor
TrainorR@albanyacademy.org
9/23/25 Molly reviewed and Rebecca confirmed times ckg
8:00 set up at 140 Academy
8:30am-10:30am take makeups & retakes. Is it possible to break this time into 15 minute increments by grade so our photographer (Molly) knows who to expect?
11:00am set up at 135 Academy
11:30am-2:30pm take makeups & retakes - same as above - break this into 15 minutes grade increments? Just so it's not a free-for-all.
9/25/25 from Rebecca: I emailed Andrea this morning, and you are good to use the same locations (Silipigno lobby, Chapel stage) again for retakes!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$57aejplipcs8kh1fqluulrfifu@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3a333d6927bbfa2e$cid$, $src$google_calendar_import$src$, $uid$6g3h0qrpo2us64nafl6ak6am0n@google.com$uid$, $title$REDO Gordon Creek PANO 5th Grade (1 photog)$title$, $d$2026-05-19$d$::date, $d$2026-05-19$d$::date, $tm$9:15am$tm$, $arr$8:45am$arr$, $sch$REDO Gordon Creek 5th Grade$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$5/14/26 tried indoor on 5/13, Katie requested an outdoor shot on 5/19 ckg
Katie Bennice, admin
KBennice@bscsd.org
(518) 884-7270 ext.3368
4/29/26 emailed Katie cc Beth and Katie confirmed ckg
Setup: 8:45AM in front of playground.
Start: 9:15am
Group photos, OUTDOOR IN FRONT OF PLAYGROUND. 
We are invoicing the school $6 per print; PTA will pay for them. This is the option they chose in lieu of us photographing the entire student body in the spring.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6g3h0qrpo2us64nafl6ak6am0n@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4ca49f4eb1f85567$cid$, $src$google_calendar_import$src$, $uid$2vhgvbo426l3bimapa00p60kl0@google.com$uid$, $title$Wildwood School - Latham Site (Andrew +1)$title$, $d$2025-10-27$d$::date, $d$2025-10-27$d$::date, $tm$9:30$tm$, NULL, $sch$Wildwood School - Latham Site$sch$, $typ$review$typ$, ARRAY[$a$Andrew$a$]::text[], ARRAY[]::text[], false, $info$Jill Wood 
jwood@wildwoodprograms.org
 518-836-2200 x2212
Classes 19-22 are in Latham
"For our Latham location, students are still arriving until 9:15. Your staff is welcome to come and set up at whatever time works best for them. Classes have requested that photo sessions start at 9:30 and that they have 20-30 minutes per class."
Times: 9am set-up for an 9:30am start
Indoor
students with special needs
Individuals pics of all students 
Continuous lights? 
No collages or class photos
Needs PSPA for yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2vhgvbo426l3bimapa00p60kl0@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4b29fb5066c2f596$cid$, $src$google_calendar_import$src$, $uid$0ntkdk0iru89e6nbjgl5ed9u0g@google.com$uid$, $title$Walter B Howard Makeup Day (1 team)$title$, $d$2025-10-22$d$::date, $d$2025-10-22$d$::date, NULL, $arr$10:00$arr$, $sch$Walter B Howard$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mindy Keegan, main office admin
mkeegan@newlebanoncsd.org
Beth LaGrange, PTA
blagrange@newlebanoncsd.org
**school has requested  NO CHAIR be used in the photos - at least visibly.**
Outdoor
Individuals of all students and faculty/staff
All service items
Faculty ID cards
full yearbook support
COLLAGES
10/10/25 proposed schedule:9:30 set up
10:00 PK and K
10:15 1st
10:30 3rd
11:00 4th
11:15 2nd
11:30 5th
11:45 6th, staff, latecomers$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0ntkdk0iru89e6nbjgl5ed9u0g@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_204e8a4a92b0c8a3$cid$, $src$google_calendar_import$src$, $uid$4dp1tqdlk4ok0o73dk9h794sts@google.com$uid$, $title$Yates Elementary Makeups (1 team)$title$, $d$2025-11-21$d$::date, $d$2025-11-21$d$::date, NULL, $arr$7:45am$arr$, $sch$Yates Elementary$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Samantha Eichle, Vice Principal
eicheles@schenectadyschools.org
Set up 7:45am; 8:30am start$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4dp1tqdlk4ok0o73dk9h794sts@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b3041e32bfb65826$cid$, $src$google_calendar_import$src$, $uid$547d77s57h6tsbpu25rkodfksu@google.com$uid$, $title$(Quick) Easter Bunny Quicks School Team Robert confirmed for bunny$title$, $d$2026-03-22$d$::date, $d$2026-03-22$d$::date, NULL, NULL, $sch$Quick Easter Bunny Quicks School Team Robert for bunny$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$547d77s57h6tsbpu25rkodfksu@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9bc1699b7e580e0c$cid$, $src$google_calendar_import$src$, $uid$7tdno5rgt5c0us4g6qcnbab2hb@google.com$uid$, $title$Eagle Point Elem Makeups (1 team)$title$, $d$2025-11-18$d$::date, $d$2025-11-18$d$::date, $tm$8:00am$tm$, NULL, $sch$Eagle Point Elementary School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Chris Wood, main office admin
cwood@albany.k12.ny.us
Indoor in 1
st
 Floor Lobby.
11/6 proposed this schedule:
In past years we have arrived at 7:30am to start at 8am, and set up in the lobby. We'll be sending one team, and usually run on a schedule like this:
8:00 - PK
8:15 - Fifth Grade
8:30 - Kindergarten
8:45 - First Grade
9:00 - Third Grade
9:15 - Second Grade
9:30 - Fourth Grade
9:45 - Any additional students or staff$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7tdno5rgt5c0us4g6qcnbab2hb@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_79ffc0ece37110c3$cid$, $src$google_calendar_import$src$, $uid$52b6jikfl6le632ktsuvmhu6tk@google.com$uid$, $title$Siena Career Fair 1 Photog$title$, $d$2026-02-04$d$::date, $d$2026-02-04$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$February 4, 2025
 | 12:30 PM – 2:00 PM | Student Center$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$52b6jikfl6le632ktsuvmhu6tk@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_edd96763fe3a7dd8$cid$, $src$google_calendar_import$src$, $uid$58g9gerfnu10kmtoh3vmkbp8no@google.com$uid$, $title$Heatly 8th Grade Grad Photos (1 photog + Asst)$title$, $d$2027-02-05$d$::date, $d$2027-02-05$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Heatly 8th Grade$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jodi Mazzeo, yearbook editor (new pic day contact as of S26)
jmazzeo@greenisland.org
Stephanie Bouchey, principal
sbouchey@greenisland.org
Grad folders $4 each (because we photograph their students in both fall and spring). Shipping is included when ordered in a batch.
Arrive: 8:30am
Start: 9am
Indoor in gym (1/2)
Need a photog and assistant due to age of kids and cap/gown changes 
About 22 - 8th graders
Cap & Gown are FOREST GREEN (not Kelly Green) we have in studio as of February 2025
Photos in both regular clothing AND cap/gown$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$58g9gerfnu10kmtoh3vmkbp8no@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7798967c9a3120a0$cid$, $src$google_calendar_import$src$, $uid$77erosl1hq01bhdtc4ckogm0nm@google.com$uid$, $title$Spotted Zebra (2 days, 1 team REQ Andrew +1)$title$, $d$2026-04-20$d$::date, $d$2026-04-21$d$::date, $tm$9:15am$tm$, $arr$8:45am$arr$, $sch$Spotted Zebra$sch$, $typ$review$typ$, ARRAY[$a$Andrew$a$]::text[], ARRAY[]::text[], false, $info$Derek Wolfe
derekw@spottedzebra.org
Sheri Canfield, director
sheri@spottedzebra.org
Setup at 8:45am, start 9:15 am on both days.
Indoor photos on school blue backdrop
Special needs preschoolers and younger - 
we need to be SUPER patient. They almost left us a few years ago because our photog rushed their kiddos.
REQUESTED ANDREW + someone great with special needs kiddos
Individual photos of students AND staff for ID cards/collages
Class collages (they have special fun ones that Erik made up a few years ago. Carrie has the psd files)
2 days due to when students attend school on what day.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$77erosl1hq01bhdtc4ckogm0nm@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f2d98c6aa6726200$cid$, $src$google_calendar_import$src$, $uid$08m3i8ocm218obh449juv48dh9@google.com$uid$, $title$Wood Road Makeup Day (1 team)$title$, $d$2026-11-05$d$::date, $d$2026-11-05$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Wood Road$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Gwendolyn Goodbreed (from Gordon Creek) is a MOVE Student who will be photographed this day. We just want it noted she is not a Wood Road student :) -MM 9/30/25 

WILL BE NEW (MaryBeth retired)
Administrative Aide
518-884-7290 x 3411
Email: 
Arrive: 8:30am
Start: 9am$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$08m3i8ocm218obh449juv48dh9@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_236e92b91f237da7$cid$, $src$google_calendar_import$src$, $uid$4gsu86kn5a7o20ddhnr0d3l6bc@google.com$uid$, $title$BKW Graduation 1 Photog$title$, $d$2026-06-25$d$::date, $d$2026-06-25$d$::date, $tm$6:00pm$tm$, NULL, $sch$BKW Graduation Photog$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$START: 6pm
Michelle Van Patten
9:21 AM (3 minutes ago)
to me
Hi Carrie!
I hope you are doing well!
I'm reaching out about a photographer for the graduation ceremony for BKW. I think in the past iSmile has had a photographer at the ceremony to take various photos. Can you let me know how that works and the cost? We would love to have you there at our ceremony if possible! BKW Graduation is at The Egg on Thursday, June 25 at 6:00 PM.
Thank you!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4gsu86kn5a7o20ddhnr0d3l6bc@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e4d3b8b48ac85e8f$cid$, $src$google_calendar_import$src$, $uid$3dfhkctq54caabca6p94spca9g@google.com$uid$, $title$Academy (US Campus) Senior Photos (2 photogs)$title$, $d$2025-09-02$d$::date, $d$2025-09-03$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$Academy Senior$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Rebecca Trainor
TrainorR@albanyacademies.org
Arrive: 7:30am to start at 8am
Upper School campus (old AA) Indoor/Outdoor IN CHAPEL$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3dfhkctq54caabca6p94spca9g@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_6775636b2cde597e$cid$, $src$google_calendar_import$src$, $uid$3fb1i5mmpi4kirme1b1o8e1m2o@google.com$uid$, $title$School Team Huddle 8pm?$title$, $d$2025-09-29$d$::date, $d$2025-09-29$d$::date, NULL, NULL, $sch$School Team Huddle$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$meet.google.com/zod-jzhv-kdc$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3fb1i5mmpi4kirme1b1o8e1m2o@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_045910259bc36fef$cid$, $src$google_calendar_import$src$, $uid$1h1omcdlgd32lap0t7acqa399e@google.com$uid$, $title$HOLD Little Achiever's Preschool (1 team)$title$, $d$2027-05-03$d$::date, $d$2027-05-04$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$HOLD Little Achiever s Preschool$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$MAIN CONTACT:
Alexandria Tanski
ATanski@littleachievers.education
Roxeanne Lansing, Director
RLansing@littleachievers.education
https://littleachievers.education
Has MWF and TTh classes therefore we are there two days
Arrive: 8:30am
Start: 9:00am
OUTDOOR, push in for rain
Pics of all students (approx 100 children, Infants, 
toddlers, and preschoolers)
Photographed in the fall, so no teacher's pics needed nor class collages.
No commission$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1h1omcdlgd32lap0t7acqa399e@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b53e5726abf817f4$cid$, $src$google_calendar_import$src$, $uid$3cv23hel9dedls8rsfqhguicdc@google.com$uid$, $title$TSL East Greenbush UPK & Grads (1 photog)$title$, $d$2026-04-30$d$::date, $d$2026-04-30$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$TSL East Greenbush UPK & Grads$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$**NEW LOCATION***
1580 Columbia Turnpike, Castleton on Hudson, NY 12033

Kylee Church, asst director
Miss.kylee.tsl@gmail.com

Abby Bowes, director (4/13/26 on maternity leave)
miss.abby.tsl@gmail.com

4/13 Kylee confirmed ckg; 4/13 emailed Abby cc Molly to confirm ckg
Arrive: 8:30am
Start: 9:00am

Outdoor, pushing inside with a spring background if bad weather

Grad photos added by Kylee on 4/13/26. they have their own caps/gowns.

20-25  students, will increase with new UPK program with district  (affiliated with the East Greenbush school district)
No staff or collages in spring

no commission$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3cv23hel9dedls8rsfqhguicdc@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_83b614a79b6831e4$cid$, $src$google_calendar_import$src$, $uid$5rksgv49fch7id9c590ie5ubq9@google.com$uid$, $title$HOLD Arongen Yearbook Photos (1 photog)$title$, $d$2027-03-10$d$::date, $d$2027-03-10$d$::date, $tm$8:50am$tm$, $arr$8:20am$arr$, $sch$HOLD Arongen Yearbook$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mallory Detzel, PTO Contact
detzel101312@gmail.com
Cindi Breen, main office admin
breecind@shenschools.org
Arrive: 8:20am
Start: 8:50am 
End: 12:00pm
Groups in the step area near the front office
Classroom candids$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5rksgv49fch7id9c590ie5ubq9@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c9d9ecb1f82a6749$cid$, $src$google_calendar_import$src$, $uid$2f73lrrju06gqe7hseirt7bt3t@google.com$uid$, $title$Shaker Seniors 2 Photogs$title$, $d$2026-04-20$d$::date, $d$2026-04-20$d$::date, NULL, NULL, $sch$Shaker Photogs$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2f73lrrju06gqe7hseirt7bt3t@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_14e54e845e01fe27$cid$, $src$google_calendar_import$src$, $uid$613qip9unti0e7b0u4qhg475c6@google.com$uid$, $title$DUANESBURG Winter Sports (1 team)$title$, $d$2025-12-04$d$::date, $d$2025-12-04$d$::date, $tm$3:00pm$tm$, NULL, $sch$DUANESBURG$sch$, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Brett Simpson
, Athletic Director NEW 11/2024
bsimpson@duanesburg.org
Kelsey Flahtery, Admin to the AD
kflaherty@duanesburg.org
10/27/25 timing suggested by Brett ckg
Setup in auditorium: 2:30pm
Start: 3pm-5pm$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$613qip9unti0e7b0u4qhg475c6@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9de149357c4e1289$cid$, $src$google_calendar_import$src$, $uid$0dg0scnqeic3tp53rlr1vktnjf@google.com$uid$, $title$Cairo-Durham Graduation RAIN DATE (2 photogs)$title$, $d$2025-06-28$d$::date, $d$2025-06-28$d$::date, NULL, NULL, $sch$Cairo-Durham Graduation$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Alyssa Bratton 
abratton@cairodurham.org

OUTDOOR, starts at 7:30pm
Rain date next day, June 28, time TBD

2 photogs to shoot grads as they cross stage from left and right
Will ask for a group senior photo$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0dg0scnqeic3tp53rlr1vktnjf@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c5e96405cea1e1dc$cid$, $src$google_calendar_import$src$, $uid$31kcdjg4mn6pcvlpv6ser28098@google.com$uid$, $title$HOLD Cohoes High School (1 team)$title$, $d$2026-10-06$d$::date, $d$2026-10-07$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$HOLD Cohoes High School$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Caryn Dollard
cdollard@cohoes.org
Set-up: 7:30am
Start: 8:00am
Day 1 - October ___
Day 2 - October ___
Indoor in Auditorium
Individuals of all students during gym periods
Faculty for Yearbook and ID Cards
ID cards for students & faculty
Yearbook support (PSPA)
Attendance files (Schooltool)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$31kcdjg4mn6pcvlpv6ser28098@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3b1f1540d8ea0731$cid$, $src$google_calendar_import$src$, $uid$0jjq43209hflkt98qpimp51oid@google.com$uid$, $title$NYS Defenders Association Headshots SARATOGA$title$, $d$2026-07-27$d$::date, $d$2026-07-27$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0jjq43209hflkt98qpimp51oid@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f38b48e5fd0760e8$cid$, $src$google_calendar_import$src$, $uid$0jjn15oi0lu131ko4915oe4ep1@google.com$uid$, $title$*DO NOT BOOK ANYTHING ELSE THANK YOU$title$, $d$2025-09-19$d$::date, $d$2025-09-19$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0jjn15oi0lu131ko4915oe4ep1@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_5e727fb1bbaf7549$cid$, $src$google_calendar_import$src$, $uid$50c87sm346q56jadq1d14tq4gk@google.com$uid$, $title$New Lebanon SENIORS Day 2 (1 team)$title$, $d$2025-11-21$d$::date, $d$2025-11-21$d$::date, NULL, NULL, $sch$New Lebanon Day$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Sarah Roblez
sroblez@newlebanoncsd.org
Michelle Bienes, yearbook editor 
michellebienes@newlebanoncsd.org
Koni Kraft, main office
kkraft@newlebanoncsd.org
USING ACUITY FOR APPOINTMENTS ckg
proposed after school like we do at Hoosic Valley - 3-6pm. Day 2 is on Makeup Day after makeups.
3rd time doing senior portraits (currently they have no organized program before us)
We use their black caps/gowns and orange stoles for portraits
Steph proposed indoor and outdoor photos
With 20-25 min sessions we can do the est. 30 seniors over 2 days from 8am-4pm with a 30 lunch break.
Indoors - in gym on the stage
Boys - asked to wear own button-down shirt, give option of a tie and/or jacket
Girls - asked to wear their own favorite blouse or dress, give drape option
ALL - photograph in cap and gown
Yearbook - they choose one formal and one casual image for their yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$50c87sm346q56jadq1d14tq4gk@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c86c9415e0d68af7$cid$, $src$google_calendar_import$src$, $uid$420kg1mihvacll2et3nibpgu67@google.com$uid$, $title$Loudonville Christian Makeup/Seniors Day (1 team)$title$, $d$2026-10-22$d$::date, $d$2026-10-22$d$::date, NULL, $arr$8:15am$arr$, $sch$Loudonville Christian Makeup/ Day$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Underclass Makeups & Senior Makeups

Bonnie Strock
bstrock@lcs.org
Proposed schedule:
7:45am set up
8:15am - underclass and teacher makeups
9:15am senior retakes$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$420kg1mihvacll2et3nibpgu67@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_600755e0794d7d25$cid$, $src$google_calendar_import$src$, $uid$6ce36u9j028dr78vvknv90mbi8@google.com$uid$, $title$AAG Commencement$title$, $d$2026-06-08$d$::date, $d$2026-06-08$d$::date, NULL, NULL, NULL, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$The same as last year. Separate Commencements but both under the tent on the football field.

•     7:45 A.M. - Senior Breakfast in the Buttery
•     8:15 A.M. - Rose bouquets/Boutonnieres & ties distributed/Individual portraits taken in Senior Lounge
•     8:45/9:00 A.M. - Class Photo: Sun - Front Steps, Rain - Chapel
•     9:45 A.M. - Seniors assemble for Processional- Front Lawn (sun) or Buttery Level Hallway (rain)
•     10:00 A.M. - Commencement Begins
•     11:30 A.M. - Reception (Courtyard) & Family Photos (in front of Dais/under the tent)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6ce36u9j028dr78vvknv90mbi8@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_174a141cc34935cb$cid$, $src$google_calendar_import$src$, $uid$5j84vks61igom2k2kspic5hptb@google.com$uid$, $title$Capital Region BOCES Schoharie (1 Team)$title$, $d$2025-09-09$d$::date, $d$2025-09-09$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$PRINTED QR SHEETS NOT NEEDED. SHOOT OFF LAPTOP
**DO NOT HAND OUT QR CARDS TO ANYONE - NOT SELLING THESE TO PARENTS**
CONTACT FOR SCHOHARIE
Matthew Ward
matthew.ward@neric.org
Callie Hempstead
callie.hempstead@neric.org
Capital Region BOCES Career and Technical School
Schoharie Campus
174 State Route 30A
Schoharie, NY 12157
10am Arrival /10:30am start; break, then 11:55am start
Student headshots - take 2 of each student but only keep one
Charged $3 per headshot in 23-24. NEEDS CONTRACT and W9$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5j84vks61igom2k2kspic5hptb@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_00efd71146a580d8$cid$, $src$google_calendar_import$src$, $uid$4e4b2jircl6l8qato6ikusmtn6@google.com$uid$, $title$Okte Elementary OUTDOOR (2 teams)$title$, $d$2025-09-12$d$::date, $d$2025-09-12$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Okte Elementary OUTDOOR$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Colleen Awa, PTA
colleen.awa@gmail.com
Patti Laiacona, Main Office Admin
laiapatr@shenschools.org
Arrival: 8am
Start: 8:30am with faculty, students start at 9:15am
OUTDOOR photos (requested by school)
Outdoor location is 
back lawn close to the parking lot near the tree line.
Individual photos of students and faculty
collages
all service items (yearbook, attendance files, service strips)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4e4b2jircl6l8qato6ikusmtn6@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_17134c39c124fdb5$cid$, $src$google_calendar_import$src$, $uid$6fptmdckqv8edv517uhje2ts99@google.com$uid$, $title$Steph out of town$title$, $d$2025-10-04$d$::date, $d$2025-10-05$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6fptmdckqv8edv517uhje2ts99@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c2776428465f5605$cid$, $src$google_calendar_import$src$, $uid$5vojs5dan3u80o1a5nurq1mhrh@google.com$uid$, $title$Outdesk Interviews 11;30$title$, $d$2026-05-19$d$::date, $d$2026-05-19$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5vojs5dan3u80o1a5nurq1mhrh@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e29da08efd59c834$cid$, $src$google_calendar_import$src$, $uid$3057c6qpeeckrngi80lbagsdip@google.com$uid$, $title$Arbor Hill Elementary AM ONLY (2 teams)$title$, $d$2026-04-16$d$::date, $d$2026-04-16$d$::date, $tm$9:15am$tm$, $arr$8:45am$arr$, $sch$Arbor Hill Elementary AM ONLY$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Tiffany Jones-Johnson, office manager
tjones-johnson@albany.k12.ny.us
*FIRST TIME DOING SPRING PHOTOS (EVER!)
3/31/26 suggested these times to Tiffany cc AR and MS ckg 
Setup: 8:45am
Start: 9:15am
Schedule link:
https://docs.google.com/spreadsheets/d/1hQax38xly_QOFR4pMsihUuOxmjhR03clmXBJiDArS9g/edit?usp=sharing
check-in main office first, with photo id
Outdoor, pushing inside for bad weather. Per Steph, they have a beautiful school that can be used as a backdrop for indoor natural light photos.
Individuals of all students and NEW teachers$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3057c6qpeeckrngi80lbagsdip@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f9af71329efc2d06$cid$, $src$google_calendar_import$src$, $uid$3u8rp1gkjdaagqbfucnahlu4sv@google.com$uid$, $title$Cairo-Durham Elem Spring (1 team)$title$, $d$2026-02-10$d$::date, $d$2026-02-10$d$::date, NULL, $arr$8:45am$arr$, $sch$Cairo-Durham Elementary School Spring$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Teacher 1
Teacher 2
Time
Rath
Mooney
9:15
Kuhn
Correll
9:35
Hall
Eskesen
9:55
Margiasso
Rodriguez
10:15
Feeney
AM Pre-k
10:35
Halstrom
Beare
10:55
Flubacher
Thibodeau
11:15
Wagor
Fitzgerald
11:35
11:55
Choinsky
Couser
12:15
Heilmann
12:35
Halwick
Scarlatta
12:55
Pre-k Full Day
PM Pre-k
1:15
1:35
Russell
Farnsworth
1:55
Chase
Rose
2:15
Kellegher
Abitz
2:35
Joanne Clearly
Main Office Admin
518-622-3231
jcleary@cairodurham.org
1/27/26 Joanne confirmed Feb 10 for all grades. Sent updated flyer ckg
1/26/26 emailed again; 1/15/26 emailed Mr. Stein about 1 day on 2/10.
1/14/26 emailed Joanne to confirm ckg:
Setup: 8:45am
Start photos: 9:15am
Day 1 grades PK-2
Day 2 grades 3-5
1/14/26 told Joanne we need 20 min per class ckg
Indoor photos using new spring backdrop in Multipurpose Room
All individuals of students
Individuals of new faculty since the fall.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3u8rp1gkjdaagqbfucnahlu4sv@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_af2ca2fd194a3840$cid$, $src$google_calendar_import$src$, $uid$1hggfqdeqf4q5adtujqitt8pm4@google.com$uid$, $title$Stevens Elementary (Burnt Hills) (2 TEAMS)$title$, $d$2025-10-08$d$::date, $d$2025-10-08$d$::date, NULL, $arr$8:00am$arr$, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Hi Carrie! 
If we could have you arrive around 8:00am ( before our buses enter the parking lot) You may pull up to the office door for dropping off equipment and then go park. Buses arrive around 8:20 till 8:40 so you will not be able to even enter the parking area at that time. If you need to get there before 8am please let me know and we will have someone meet you. 
At 8:00am we will have you set up in the gym. 
We have requested several tables and several chairs. There will be two parent Volunteers the day to assist with kids in line and getting them “ photo ready” . 
Staff will be arriving around 8:20-8:40 for their pictures. 
Two Classes at a time will be assigned at 9am on. We will hand you the schedule of the classes the morning of. There is about a 40 minute break for lunch in between.
Sally Draina
sdraina14@gmail.com
10/2 nudged; 9/15/25 emailed Sally asking about timing, schedule and location in the school ckg
Arrive: 8AM BEFORE BUSES, pull up to the office, drop equip, go park
Start: Staff at 8:20am, Students begin at 9am.
SCHEDULE PROVIDED UPON ARRIVAL PER SALLY!
Indoor in GYM
Students & Staff
(486 students in grades K-5)
Collages (6/25/25 asked for format)
Treering for Yearbook
Service Strips
IDs - asked not yet answered
Sally Draina
Thu, Oct 2, 4:14 PM (16 hours ago)
to me, Rachel, Nichole
Hi Carrie! 
If we could have you arrive around 8:00am ( before our buses enter the parking lot) You may pull up to the office door for dropping off equipment and then go park. Buses arrive around 8:20 till 8:40 so you will not be able to even enter the parking area at that time. If you need to get there before 8am please let me know and we will have someone meet you. 
At 8:00am we will have you set up in the gym. 
We have requested several tables and several chairs. There will be two parent Volunteers the day to assist with kids in line and getting them “ photo ready” . 
Staff will be arriving around 8:20-8:40 for their pictures. 
Two Classes at a time will be assigned at 9am on. We will hand you the schedule of the classes the morning of. There is about a 40 minute break for lunch in between.
Our staff does not need photos for badges.
Hi Carrie, 
I can't believe it's almost time for picture day! We look forward to working with you and Stephanie on October 8th.
 I have included in this email our PTA President, Nichole Harrell and our school's Executive Assistant to the Principle, Rachel Franciosa. Between the three of us we will be able to provide you with what you need from us and I also thought this makes it easier if you have information to share we can all receive it at the same time as well.
Please let us know what our next steps are? I know you had mentioned a flyer to be sent out in September.
Thank you for your time, 
Sally Draina- 518-229-2379
Nichole Harrell -518-253-0080
Rachel Franciosa- 518-399-9141$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1hggfqdeqf4q5adtujqitt8pm4@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_0b9e0a8227681b08$cid$, $src$google_calendar_import$src$, $uid$1330otfbsu4tps3kvpvvm536le@google.com$uid$, $title$HOLD Albany Academy (2 teams +1 class)$title$, $d$2026-09-10$d$::date, $d$2026-09-10$d$::date, $tm$7:45am$tm$, $arr$7:15am$arr$, $sch$HOLD Albany Academy$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$TWO TEAMS PLUS CLASS PHOTOGRAPHER - LOWER & MIDDLE SCHOOL
ONE TEAM - UPPER SCHOOL

Rebecca Trainor
TrainorR@albanyacademy.org 

Set-up: 7:15am; Start: 7:45am

*CONFIRM*
Indoor: LS/MS in Silipigno Lobby; US on Chapel Stage

Individuals of all students and faculty
Group class photos of grades PS-4th Outdoors
IDs for grades 5-12 and faculty
Yearbook Upload to Treering x2$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1330otfbsu4tps3kvpvvm536le@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_28da834d3cff8976$cid$, $src$google_calendar_import$src$, $uid$7omng1u9m1i83ego5tis5kk4qp@google.com$uid$, $title$TSL Daycare, Troy (STRONGLY REQ Lauren)$title$, $d$2026-04-28$d$::date, $d$2026-04-28$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$TSL Daycare Troy$sch$, $typ$spring picture day$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, $info$11/5/25 REQ Lauren AGAIN!; 5/21/25 REQ Lauren for 25-26 school year
3/20/25 NEW ADDRESS!
547 River St
Troy NY 12180
4/22/26 DIRECTOR UPDATE Karin no longer there. Work with:
Jennifer Kalle, TSLDaycare Compliance Officer
JKalle.TSL@gmail.com
OUTDOOR, to push indoors with spring backdrop in case of bad weather
4/22/26 emailed all to Jenn, cc Laurenckg; 3/25/26 emailed Karin, cc Lauren, to confirm ckg
Setup: 8:30am
Start: 9am
infants, toddlers, and preschool aged kids$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7omng1u9m1i83ego5tis5kk4qp@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_933aeb0d9194cea9$cid$, $src$google_calendar_import$src$, $uid$49beq1tv9a7aagbjjle1mqqbf1@google.com$uid$, $title$Lawton Social Google Meet 11;00$title$, $d$2026-03-02$d$::date, $d$2026-03-02$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$meet.google.com/fps-rzqs-qji$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$49beq1tv9a7aagbjjle1mqqbf1@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7c7218231df17535$cid$, $src$google_calendar_import$src$, $uid$4989p2fiadig6e4lsa10n9v1qn@google.com$uid$, $title$LCS Grad Rehearsal Morning (Matt)$title$, $d$2025-06-13$d$::date, $d$2025-06-13$d$::date, $tm$4:00$tm$, NULL, $sch$LCS Grad Rehearsal$sch$, $typ$graduation/pano$typ$, ARRAY[$a$Matt$a$]::text[], ARRAY[]::text[], false, $info$Amy Thiel
Librarian/Lower School Tech Teacher/Graduation Coordinator
Loudonville Christian School
374 Loudon Rd. 
Loudonville, NY 12211
518.434.6051 x335
lcs.org
9:30am start
4/25/25 confirmed; 2/19/25 holding based on LCS calendar ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4989p2fiadig6e4lsa10n9v1qn@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e6b6915299356202$cid$, $src$google_calendar_import$src$, $uid$1f6pejrmlrs99ki9r0gl81q64s@google.com$uid$, $title$Cairo-Durham Graduation (2 photogs)$title$, $d$2026-06-26$d$::date, $d$2026-06-26$d$::date, NULL, NULL, $sch$Cairo-Durham Graduation$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Alyssa Bratton abratton@cairodurham.org

OUTDOOR, starts at 7:30pm
Rain date next day, June 27, time TBD

2 photogs to shoot grads as they cross stage from left and right
group senior photo$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1f6pejrmlrs99ki9r0gl81q64s@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_60f08d1d37576991$cid$, $src$google_calendar_import$src$, $uid$6hetd73tt9vcgig6je75j863lg@google.com$uid$, $title$Airline Drive Academy (1 Team)$title$, $d$2025-11-04$d$::date, $d$2025-11-04$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$Airline Drive Academy$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Amanda McNeal, Asst Principal
amanda.mcneal@neric.org

10/20/25 confirmed with Amanda ckg (need 15 min increments in schedule due to number of classes) ckg
Arrival: 7:30am
Start: 8:00am

Indoor, school blue background
Individuals of students and staff
Class pictures COLLAGES

70 Students
70 Staff
Small classes of 5-6 students each
Capital Region BOCES school$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6hetd73tt9vcgig6je75j863lg@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_95416b712408b89f$cid$, $src$google_calendar_import$src$, $uid$3la97sh4qhd7uvpsbub5schr5t@google.com$uid$, $title$NEW Rosendale Elementary (2 teams+1)$title$, $d$2025-09-17$d$::date, $d$2025-09-17$d$::date, NULL, $arr$7:00am$arr$, $sch$NEW Rosendale Elementary$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Ashley Feldman
ashleyfeldman929@gmail.com

9/5/25 confirmed with Ashley ckg
Arrive: 7am
Start Staff: 7:35am 
Students: 8:05am

Indoor on stage, both teams
Outdoor GROUP class pictures
Service Strips
Yearbook support
NO IDs$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3la97sh4qhd7uvpsbub5schr5t@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d6eb0b7f313bb928$cid$, $src$google_calendar_import$src$, $uid$1B7D68CD-4F08-4EBD-BF37-752B36C17C88$uid$, $title$Maureen Parker day at track$title$, $d$2026-08-27$d$::date, $d$2026-08-27$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1B7D68CD-4F08-4EBD-BF37-752B36C17C88$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_035496c253b57b2a$cid$, $src$google_calendar_import$src$, $uid$B4D89AA9-ABB4-4756-BD66-20DAB20CF425$uid$, $title$No Steph if possible$title$, $d$2025-10-10$d$::date, $d$2025-10-10$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$B4D89AA9-ABB4-4756-BD66-20DAB20CF425$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9622b317ce4c79f7$cid$, $src$google_calendar_import$src$, $uid$24193g0bfg7045bph60uh6ubgg@google.com$uid$, $title$Pooh's Corner Picture Day (1 team)$title$, $d$2026-11-18$d$::date, $d$2026-11-18$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, $sch$Pooh s Corner$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Duane Hotaling
Asst Director
duane@poohscornerecc.org
Arrival: 9:00am
Start: 9:30am
Pooh’s Corner, Inc. – Early Childhood Center
500 Balltown Road, Building 10
Schenectady, NY 12304
(p): 518-370-7333
(f): 518-370-7421
(e): 
assistantdirector@poohscornerecc.org
(w): 
www.poohscornerecc.org
Indoor
Individuals of all students and staff
Collages (like last year's with logo)
ID cards for staff (like last year with logo)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$24193g0bfg7045bph60uh6ubgg@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ea53a4734446e052$cid$, $src$google_calendar_import$src$, $uid$2rugdkirnr6nvnk6kqg6uleacd@google.com$uid$, $title$Wood Road Yearbook Photos (1 photog)$title$, $d$2026-03-12$d$::date, $d$2026-03-12$d$::date, $tm$9:20$tm$, $arr$9:00am$arr$, $sch$Wood Road Yearbook$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Heather Thomas, yearbook editor
hthomas@bscsd.org
MaryBeth Leslie, main office admin
mleslie@bscsd.org
3/4/26 MB confirmed; 2/26/26 MaryBeth working on the schedule ckg; 2/20/26 emailed Heather & MB cc Beth for schedule and to confirm ckg
Arrive at 9am to begin photos at 9:20am
Indoor group photos for the yearbook in the DTR.
Leslie, MaryBeth
Wed, Mar 4, 5:38 PM (7 days ago)
to Beth, me, Heather
Hi Beth,
I believe we would like to start photos at 9:20. I have reserved the DTR and will have our backdrop all set up.  I am finalizing what groups will come when but we need to photograph 4 or 5 OM teams, the student council and the yearbook club.  I would think we will be done in about 45 minutes.  
I hope to have a final schedule for you by Friday, but if we could plan to start at 9:20 that would be great. 
Thank you, 
MaryBeth
Beth Picciano
Wed, Mar 4, 5:53 PM (7 days ago)
to MaryBeth, me, Heather
Hi MaryBeth,
That sounds good! I will plan to arrive a little before 9 to get set up. 
Best,
Beth$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2rugdkirnr6nvnk6kqg6uleacd@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_17d862fd49242f9b$cid$, $src$google_calendar_import$src$, $uid$57kv0ldve7asn506f53fam8nac@google.com$uid$, $title$Matt Meeting with REMOVE.BG 10am$title$, $d$2025-10-08$d$::date, $d$2025-10-08$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[$a$Matt$a$]::text[], ARRAY[]::text[], false, $info$10:00am - 10:30am, Wednesday, October 8, 2025$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$57kv0ldve7asn506f53fam8nac@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4aecaaa8477aa230$cid$, $src$google_calendar_import$src$, $uid$46mjcp21h3if6sibbt5eqimnu2@google.com$uid$, $title$RPI$title$, $d$2026-04-13$d$::date, $d$2026-04-17$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Student Union Room 1802
William O'Brien (Direct, Student Activities)
obriew2@rpi.edu
Student Activities Desk Phone Number: 
518-276-6505

Parking
Skylar Swatt
518-844-3373
swatts@rpi.edu$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$46mjcp21h3if6sibbt5eqimnu2@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_5dc177253b96f82a$cid$, $src$google_calendar_import$src$, $uid$6eml07j935vj50osu6iem645ba@google.com$uid$, $title$Cohoes High School Seniors (2 photogs)$title$, $d$2025-08-11$d$::date, $d$2025-08-15$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Cohoes High School$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$85-ish Seniors
Indoors (may be in the middle school due to high school contruction) in Tux & Cohoes Blue cap/gown 
Outdoors (not sure where) in Cap/gown and/or casual
Ask office to make sure front door is unlocked at school while appointments are happening

Caryn Dollard
cdollard@cohoes.org
Set-up: 8am
Start: 8:30am
Caryn Dollard
6:53 AM (2 hours ago)
to Beth, Andrew, Stephanie, Molly, Matthew, me
Beth, 
We are all set for pictures and you will be setting up in the auditorium. Teri Curtian arrives for work at 7:30 and she will be there to let you in. 
Caryn Dollard$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6eml07j935vj50osu6iem645ba@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_74e0162b1d5137e5$cid$, $src$google_calendar_import$src$, $uid$7ste5li79qj6b4vbdqb1qh0bif@google.com$uid$, $title$Waterford-Halfmoon Family Photo Night$title$, $d$2025-12-08$d$::date, $d$2025-12-08$d$::date, NULL, NULL, $sch$Waterford-Halfmoon Family Photo Night$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jessica Rice
waterfordhalfmoonpto@gmail.com
4p-8p 
Multipurpose room
Waterford-Halfmoon PTO
10:10 AM (4 hours ago)
to me
Hi Carrie!
We are confirmed to host the family photo night in our Multipurpose Room on December 8th, 2025.  I booked the room from 3:30-8:30 pm.  Do you know typically how long before the event you open the schedule for families to sign up?  Do you create the link to do the scheduling of each session?
Thank you,
Jessica Rice$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7ste5li79qj6b4vbdqb1qh0bif@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ac5e1f1222aa995f$cid$, $src$google_calendar_import$src$, $uid$193todhnis73k31l2jot1l744g@google.com$uid$, $title$Cairo-Durham Elem Makeups (1 team)$title$, $d$2025-10-15$d$::date, $d$2025-10-15$d$::date, NULL, $arr$10:00am$arr$, $sch$Cairo-Durham Elementary School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Joanne Cleary
jcleary@cairodurham.org
10/14/25 schedule from Joanne ckg
9:30
 set up
10:00 AM
 Pre- K
10:15
 1st
10:30
 3rd
11:00
 4th
11:15
 2nd
11:30
 5th
12:00 Full day PreK
12:45 to noon
 PM Pre-K$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$193todhnis73k31l2jot1l744g@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f18472f018722f87$cid$, $src$google_calendar_import$src$, $uid$5emmgth8n4mfns0qsr4f75jbos@google.com$uid$, $title$Little Scholars Viaport (1 team)$title$, $d$2025-11-06$d$::date, $d$2025-11-06$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$Little Scholars Viaport$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Nellie Dodge, new director as of August 2025
nelliedlslc@gmail.com

Arrive: 7:30am
Start: 8am

ONLY ONE LOCATION FOR LITTLE SCHOLARS AS OF 25-26
Indoor (SEE GP FOR BACKDROP USED IN PY)
Photos of all students and faculty
COLLAGE class photos (new for 2025-26)
no service items
no commission$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5emmgth8n4mfns0qsr4f75jbos@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e00d540ceeb108ed$cid$, $src$google_calendar_import$src$, $uid$3bon8tt1afrb40hn8upiaigp0c@google.com$uid$, $title$Maple Leaf MALTA NORTH (2 teams)$title$, $d$2025-11-21$d$::date, $d$2025-11-21$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Maple Leaf MALTA NORTH$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Ashlyn Krzyzak, Center Director
rt9malta@mapleleafchildcare.com
Maple Leaf Childcare -Malta North
2737 Rt 9 Malta, NY 12020
(518) 889-5045
11/12 confirmed; 11/6 emailed to confirm ckg
setup at 8:30am
start at 9am, need done in morning
Indoor
Winter themed backdrops -11/12 confirmed; 11/6 emailed to confirm ckg
STAFF PICS - new this fall
Collages
Perfect, thank you!! Winter backdrop is good with me! Lets do 
9:00: Robins and Chipmunks 
9:20: Sparrows and Muskrats 
9:40: Bluebirds and Groundhogs
10:00: Chickadees and Possums
10:20: Raccoons and Bears
10:40: Foxes and Owls 
11:00: Siblings, late arrivals, etc. 
Carrie Graziano
11/12/25 12:38 PM (0 minutes ago)
to 
Molly
, 
Lauren
, Malta
Great! I'll get to work on my prep now.
I'd say 20 minutes per class is good based on the class sizes. We are sending two photos teams who are familiar with your center, so you can assign two classes per time slot. As an example, here is the schedule that the Malta South center is using:
8:30    iSmile teams arrive to set-up9:00     Inf 1 and Tod 1
9:20     Inf 2 and Tod 2
9:40     Pre 1 and Tod 3
10:00   Pre 2 and PreK
10:20   siblings, late arrivals, etc...
I know your classes are named differently, but this gives you an idea of what may work for your center.
Does a winter-themed backdrop still work?
:).$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3bon8tt1afrb40hn8upiaigp0c@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e7e12bd790629b48$cid$, $src$google_calendar_import$src$, $uid$643kc1eq5a9q809oe70uldikpa@google.com$uid$, $title$Latham Christian Academy (1 team)$title$, $d$2025-10-01$d$::date, $d$2025-10-01$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$Latham Christian Academy$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Sarah Kettlewood, Principal (main contact)
skettlewood@lcany.org
Patti Kettlewood, main office admin
pkettlewood@lcany.org
Arrive: 7:30am
Start: 8am for staff, 8:30am for students
Indoor
Kids in full school uniform (
navy blue skirts, jumpers, or pants with white or light blue shirts)
Grades range from PK-12 
2 Seniors - take senior photos on Pic Day. BRING DRAPE, SUIT JACKET/SHIRT/TIE and CAP&GOWNS
IDs and full yearbook support
Service Strips
Attendance File
Collages$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$643kc1eq5a9q809oe70uldikpa@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9a582add74e803e7$cid$, $src$google_calendar_import$src$, $uid$4uj0k8oc4lsu6dmnr8sook4m9v@google.com$uid$, $title$Eagle Point 5th Grade Graduation (1 photog)$title$, $d$2026-06-24$d$::date, $d$2026-06-24$d$::date, $tm$9:00am$tm$, $arr$8:30$arr$, $sch$Eagle Point 5th Grade Graduation$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$5/4/26 confirmed ckg; 4/29/26 emailed Chris and Mr. Fox to schedule ckg
Eagle Point PTA
eaglepointpta@gmail.com
Christine Wood, main office
cwood@albany.k12.ny.us
Emily King, PTO
estaats10@gmail.com
Arrive: 8:30-8:45am
Start 9am - goes for one hour
2nd free event for 25-26
Danielle Unser
11:35 AM (1 hour ago)
to 
Emily
, me, Christine
Hi Carrie,
We were hoping you could do 5th grade graduation instead of Kindergarten this year if that is possible. Fifth grade graduation is Wednesday, June 25th at 9am at Eagle Point. The flyer looks great if you could just swap out Kindergarten for Fifth Grade, I will have them printed and ready to go. I have also cc'd Emily King on this email. She is on the PTA and graduation committee.
Thanks again,
Danielle$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4uj0k8oc4lsu6dmnr8sook4m9v@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_0ab3b131bbf12067$cid$, $src$google_calendar_import$src$, $uid$43frmfh74f7gd7cpln143fapmj@google.com$uid$, $title$Cohoes High School (1 team)$title$, $d$2025-10-07$d$::date, $d$2025-10-08$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$Cohoes High School$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Caryn Dollard
cdollard@cohoes.org
Set-up: 7:30am
Start: 8:00am
Day 1 - October ___
Day 2 - October ___
*Shooting student QRs from laptop, will send school contact sheets after images are uploaded into GP**
QRs will be in Alpha order in GP. There will be a binder with faculty QR cards and PE classes.
Indoor in Auditorium
Individuals of all students during gym periods
Faculty for Yearbook and ID Cards
ID cards for students & faculty
Yearbook support (PSPA)
Attendance files (Schooltool)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$43frmfh74f7gd7cpln143fapmj@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_8633657f2a76531a$cid$, $src$google_calendar_import$src$, $uid$713pg4jstgjnp17jttkju9q63j@google.com$uid$, $title$BKW Spring Sports (2 photogs)$title$, $d$2026-04-14$d$::date, $d$2026-04-14$d$::date, $tm$2:20pm$tm$, $arr$1:45pm$arr$, $sch$BKW$sch$, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Tom Galvin, Athletic Director
tom.galvin@bkwschools.org

Arrive: 1:45pm
Start: 2:20pm

2:20 PM - Varsity Track
2:40 PM - Mod Track
2:55 PM - JV Baseball
3:10 PM - Varsity Baseball
3:25 PM - Mod Baseball
3:40 PM - Mod Softball
3:55 PM - Varsity Softball
4:10 PM - JV Softball$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$713pg4jstgjnp17jttkju9q63j@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_5e059f04ee7a65fa$cid$, $src$google_calendar_import$src$, $uid$3vnfoke64gigjq8dk161upa31q@google.com$uid$, $title$Green Tech MS/HS (2 photogs on Day 1; 1 photog Day 2 + asst)$title$, $d$2026-09-09$d$::date, $d$2026-09-10$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Green Tech Middle School/High School$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$9/16/25 NOTE FOR 2026-27 - SCHEDULE 2 PHOTOGS FOR HS DAY PER BETH. ckg
Cedria Hood
chood@greentechhigh.org
Main Phone : (518) 396-5107
Setup: 8am
Start: 8:30am (PE classes?)
Indoor (in cafeteria)
Individuals of all students grades 6-12 (12 for ID cards)
Individuals of all faculty/staff
ID cards for all
See schedule for timing - Cedira will send over when ready
Yearbook and attendance files
Doing senior portraits in spring 2027$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3vnfoke64gigjq8dk161upa31q@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_333baa15c363510a$cid$, $src$google_calendar_import$src$, $uid$3k7k3vpqmehqo7q35mh4t683ir@google.com$uid$, $title$Pachira - White Party ( Lauren)$title$, $d$2026-08-13$d$::date, $d$2026-08-13$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3k7k3vpqmehqo7q35mh4t683ir@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a8c765de6729db17$cid$, $src$google_calendar_import$src$, $uid$1lpfi1dd4dul9b9v1e028rba2c@google.com$uid$, $title$Santa Nick booked$title$, $d$2025-12-10$d$::date, $d$2025-12-10$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1lpfi1dd4dul9b9v1e028rba2c@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_230ef2c4366c2517$cid$, $src$google_calendar_import$src$, $uid$3q9034cf0tovjbcgrq818jsntk@google.com$uid$, $title$Wood Road Spring Pics & 5th Grade Pano (2 teams)$title$, $d$2027-05-12$d$::date, $d$2027-05-12$d$::date, $tm$9:15am$tm$, $arr$8:45am$arr$, $sch$Wood Road &$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$WILL BE NEW (MaryBeth retired), main office admin
EMAIL: 
Setup: 8:45 am
Start:   9:15 am
Outdoor push in for bad weather
Individuals of all students
5th grade group photo unless it rains, use rain date$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3q9034cf0tovjbcgrq818jsntk@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_df7bc33166e667fe$cid$, $src$google_calendar_import$src$, $uid$0ambbhnqj6148lhsqteq42poh0@google.com$uid$, $title$Academy Winter Sports Day 2$title$, $d$2025-11-25$d$::date, $d$2025-11-25$d$::date, NULL, NULL, $sch$Academy Day$sch$, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Paul Gallucci
Sat, Nov 22, 9:27 AM (2 days ago)
to Stephanie, me, Jessica, Jak, Jerry, Joe, Jonathan, jimdavisgray@gmail.com, Tom, Michael
Good morning everyone:
Here is the proposed schedule for Tuesday Nov. 25th
2:30 - Women's Basketball
2:45 - B/G  Table Tennis
3:05 - B/G Squash
3:20 - B/G Skiing
3:30 - B/G Indoor Track$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0ambbhnqj6148lhsqteq42poh0@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_8916da1a01bd2b04$cid$, $src$google_calendar_import$src$, $uid$48e43eufqe3ljg505ho6r5so90@google.com$uid$, $title$Maple Leaf Burnt Hills/Glenville (2 teams)$title$, $d$2025-11-13$d$::date, $d$2025-11-13$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Maple Leaf Burnt Hills/Glenville$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Danielle Dicaprio, Director
Kerry Butler, Asst Director
MLCC Burnt Hills/Glenville
P: 518-384-1710
glenville@mapleleafchildcare.
com
*MUST BE DONE BY 11am**
11/6/25 time confirmed with Beth, carrie updated here; 10/28/25 emailed Kerry and Danielle to confirm ckg
Setup: 8am
Start: 8:30am
Indoor with WINTER backdrop
Individuals of about 100 students plus 35 faculty/staff
CLASS COMPOSITES
*wants an earlier date in late Sept/early Oct, but we are booked$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$48e43eufqe3ljg505ho6r5so90@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_6fcbd4b3ba0d0b85$cid$, $src$google_calendar_import$src$, $uid$2dgl4n0pvkon4et8bqc1asta7b@google.com$uid$, $title$Guilderland Junior Prom + photo booth$title$, $d$2027-05-22$d$::date, $d$2027-05-22$d$::date, NULL, NULL, NULL, $typ$photo booth$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Danielle Benner
bennerd@guilderlandschools.net

4/15/26 booked. 
Wants Option A with the photo booth
SM asked for 50% deposit. Carrie emailed Danielle today, invoice sent 4/17/26 ckg

Per the updated flyer, option A is:
4 hours coverage
Couple/group pics on arrival and throughout the night
Candids, detail shots
All digital files
$750 + $200 for photo booth add-on (4/28/26 PAID IN FULL ckg)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2dgl4n0pvkon4et8bqc1asta7b@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c61d3d8cc3ba860e$cid$, $src$google_calendar_import$src$, $uid$3ernh47s8gha7192spf9o1lt5d@google.com$uid$, $title$Luke Apy School Team Interview 2;00$title$, $d$2026-01-30$d$::date, $d$2026-01-30$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$meet.google.com/khw-uaes-wdh$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3ernh47s8gha7192spf9o1lt5d@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ac970083a5d6f523$cid$, $src$google_calendar_import$src$, $uid$3tf2vm8q1br2c408psdtfg5e00@google.com$uid$, $title$NEW Widdle One’s Childcare Center (1 team)$title$, $d$2025-11-19$d$::date, $d$2025-11-19$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$NEW Widdle s Childcare Center$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kristyn Molis
Assistant Director
Widdle One’s Childcare Center
(518) 355-1334
Kristyn@widdleoneschildcare.org

NEW Fall 2025

11/4 emailed Kristyn for information ckg
Arrive: 7:30am
Start: 8am

Indoor with holiday/Christmas themed background
50-60 daycare aged kids (youngest infant will be 4 months old to 5 years old)
Sibling pics - worked out with Molly on 11/5/25 ckg
Guilderland school district
Collages

(booked in Nov per Steph)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3tf2vm8q1br2c408psdtfg5e00@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_1456e50cda0313b5$cid$, $src$google_calendar_import$src$, $uid$2CC6D534-8D1F-45BF-97F1-E8821AD6D0FD$uid$, $title$Okte Rain Date$title$, $d$2025-09-16$d$::date, $d$2025-09-16$d$::date, NULL, NULL, NULL, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$4/24/25 holding by Matt 
NOTE: Carrie had turned them to an "outdoor but move indoor for bad weather school in fall 2025" so CHECK to see if this date is needed. Was only booking full school rain date for spring photos.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2CC6D534-8D1F-45BF-97F1-E8821AD6D0FD$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_63739fa32f54963c$cid$, $src$google_calendar_import$src$, $uid$1qpifigc9m29pmffq6o5c4tu03@google.com$uid$, $title$Germantown High School Winter Sports (NEW)$title$, $d$2025-12-08$d$::date, $d$2025-12-08$d$::date, NULL, NULL, $sch$Germantown High School NEW$sch$, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Contact Ryan Broast - 
rbroast@germantowncsd.org
6 teams
Following up for schedule and rosters   SM
2:30 set up in gym
Girls Varsity Basketball         3:00 - 3:15
Girls Modified Basketball      3:15 - 3:30
Boys Modified Basketball     3:30 - 3:45
Cheer                                   3:45 - 4:00
Boys JV Basketball              4:00 - 4:15
Boys Varsity Basketball       4:15 - 4:30$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1qpifigc9m29pmffq6o5c4tu03@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_77c6c41126b883dd$cid$, $src$google_calendar_import$src$, $uid$59qf48kcsn4816gt5omppoeg6g@google.com$uid$, $title$Learning Garden Childcare SLINGERLANDS (2 teams)$title$, $d$2025-10-21$d$::date, $d$2025-10-21$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Learning Garden Childcare SLINGERLANDS$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$NEW FALL 2025

392 Maple Road
Slingerlands, NY 12159

Jennifer Hogan
jennifer@learninggarden.kids

McKenna Stephens
mckenna@learninggarden.kids

Renata Filiaci
renata@learninggarden.kids

Dawn Benoit
lathamdirector@steppingstonedaycare.kids

10/9 confirmed with Jennfier ckg
Arrive: 8:30am
Start: 9am

Indoor - morning 10/10 school blue background ckg
125 students
Collages

This sounds great.
Why don’t we plan to have your photographers arrive by 8 am in Latham with photos starting at 8:30.

In Slingerlands let’s have your photographers arrive at 8:30 with photos starting at 9:00.

I believe the spreadsheets are done and ready for you now. Please let me know what else you need before photo day. 

Thanks!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$59qf48kcsn4816gt5omppoeg6g@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a14cab51f95196de$cid$, $src$google_calendar_import$src$, $uid$3opu6ome6iatudobf2md7cchnv@google.com$uid$, $title$Albany Law Headshots$title$, $d$2025-11-10$d$::date, $d$2025-11-10$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Hi Stephanie,

Great news, I found Alexandra’s picture. It was the one I sent you so mystery solved. Would Monday, November 10
th
 still be available for our LinkedIn Headshots. I was thinking from 10:00 am – 2:00 pm. 

I cannot wait to see you and catch up!

Joanne

Joanne Casey$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3opu6ome6iatudobf2md7cchnv@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c9e1bd68ccb1d9b1$cid$, $src$google_calendar_import$src$, $uid$6qc15vg7356ia2vr25vr55utl9@google.com$uid$, $title$Malta Ave Picture Day & 5th Grade Pano (2 teams)$title$, $d$2026-04-16$d$::date, $d$2026-04-16$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, $sch$Malta Ave &$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jenny Bottisti
(518) 884-7250 ext 1380
JBottisti@bscsd.org
3/31/26 confirmed with Jenny cc Steph and Beth ckg
Set-up: 9am - check in at main office with photo ID upon arrival.
Start: 9:30am
2pm: one team stays for club pics for the yearbook
5th grade group on or near playground OUTSIDE about 10am. They have recess on the playground beginning at 10:15, so we need to be done by then. If rain, use rain date for only pano.
INDIVIDUAL PHOTOS INDOOR in auditorium - need two spring backdrops.
9:00 - 9:30 Set Up
9:30 - 9:45 Manning
9:45 - 10:00 Constantine
10:00 - 10:15 Tombari/Eggleston
10:15 - 10:30 5th Grade Group Photo on
Playground (rain date 4/17)
10:15 - 10:30 Sheft
10:30 - 10:45 Townsend
10:45 - 11:00 Burr
11:00 - 11:15 Baker
11:15 - 11:30 Nafus
11:30 - 11:45 DeGregorio
11:45 - 12:00 Bryant
12:00 - 12:15 Richards/Coons
12:15 - 12:30 Micheller
12:30 - 12:45
Lunch
12:45 - 1:00
1:00 - 1:15 Darmofal/Petar
1:15 - 1:30 Johnson
1:30 - 2:30
Club Photos:
Chorus/Band/Orchestra
Student Council/ Odessey of the Mind
Young Scholars
Malta Way Club
Drama Club
Bottisti, Jenny
2:11 PM (37 minutes ago)
to me, Stephanie, Beth
I can't believe it's April already!
Yes, photos will be in the auditorium again starting at 9am to set up.
5th grade has recess from 10:15 - 10:40, so we will do their photo around 10:00 then they can just stay outside for recess.
Rain date is the 17th.
Thank you for the flyer and confirming all the information :)
Looking forward to working with everyone again!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6qc15vg7356ia2vr25vr55utl9@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f1ee96286f27eea4$cid$, $src$google_calendar_import$src$, $uid$11csd537ccguojm0rcqhnrevi9@google.com$uid$, $title$Heatly School (1 team + class pic photg)$title$, $d$2026-10-02$d$::date, $d$2026-10-02$d$::date, $tm$9:00am$tm$, NULL, $sch$Heatly School$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jodi Mazzeo, yearbook editor (new pic day contact as of S26)
jmazzeo@greenisland.org
Stephanie Bouchey, principal
sbouchey@greenisland.org
Arrival: ~8:30am
Start: 9:00am is first class
Indoor
As of F25, only grades PK-8 now. No high school. 
All grades get ID cards
Yes to faculty IDs
photographing all students and faculty
Treering yearbook
Service strips for all
GROUP class pics$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$11csd537ccguojm0rcqhnrevi9@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_19928d7413bd69bf$cid$, $src$google_calendar_import$src$, $uid$7qjbcse71hae6v9dchmbvl7s3b@google.com$uid$, $title$Albany Law Headshots$title$, $d$2026-08-28$d$::date, $d$2026-08-28$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$am not sure if you remember but last year, we did two days of headshots for our Flex JD students in August. These are our students who are coming from all across the country and are doing their JD degrees online. They will be back on-campus in August and was wondering if you would be available on Thursday, August 27 from 12:30 pm – 2:30 pm and then again on Friday, August 28 from 12:15 pm – 2:15 pm.

Let me know if you are available. I would love to see you.

Thank you so much,

Joanne

Joanne Casey
She|Her|Hers
Assistant Dean, Career and Professional Development Center
image003.png
80 New Scotland Avenue | Albany, NY 12208
518-472-5875| 
jcase@albanylaw.edu
www.albanylaw.edu/careers/
 | 
ALBANY
LAW LINK$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7qjbcse71hae6v9dchmbvl7s3b@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_cc79d60e34655934$cid$, $src$google_calendar_import$src$, $uid$1ul8n7jnoia0eter709e2dald1@google.com$uid$, $title$Cairo-Durham Elem PK/K/5th Grad Pics  (2 teams)$title$, $d$2026-03-18$d$::date, $d$2026-03-18$d$::date, NULL, NULL, $sch$Cairo-Durham Elementary School PK/K/5th Grad$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Joanne Cleary, main office admin
jcleary@cairodurham.org
518-622-3231, 1
PANOS ARE 8X24
Group shot of all K classes for a PANO on playground weather permitting
Group shot of all 5th grades classes for a PANO on playground weather permitting
PreK class photos in their classrooms
We are making GRAD FOLDERS for all 5th, K and PreK students DO EARLY
Caps & gowns are iSmiles.
Setup: in 
multipurpose room
 8:35am
Start: student photos at 9:05am$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1ul8n7jnoia0eter709e2dald1@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_437abbe43df93dfa$cid$, $src$google_calendar_import$src$, $uid$3jrc18rq74tihc6dfaduene86i@google.com$uid$, $title$FALL DEBRIEF$title$, $d$2026-01-05$d$::date, $d$2026-01-05$d$::date, NULL, NULL, NULL, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3jrc18rq74tihc6dfaduene86i@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_379cb249e8e3cfc7$cid$, $src$google_calendar_import$src$, $uid$4mb1gf8he9uc5tv3pijp3f5824@google.com$uid$, $title$Siena Career Fair 1 Photog (Evening)$title$, $d$2026-03-26$d$::date, $d$2026-03-26$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$March 26, 2025
 | 4:30 PM – 6:30 PM | MAC$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4mb1gf8he9uc5tv3pijp3f5824@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_49ee4b858f401e00$cid$, $src$google_calendar_import$src$, $uid$7nobttvh3ig2uk7efr41vm35jr@google.com$uid$, $title$Okte Spring Pics & 5th grade pano (2 teams)$title$, $d$2027-04-22$d$::date, $d$2027-04-22$d$::date, $tm$9:15am$tm$, $arr$8:45am$arr$, $sch$Okte &$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Colleen Awa
colleen.awa@gmail.com
Arrival: 8:45am
Start: 9:15am
OUTDOOR photos - will not push in for bad weather, rain date scheduled for all
Individual photos of students
5th grade group pano$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7nobttvh3ig2uk7efr41vm35jr@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2db20abdb7c98411$cid$, $src$google_calendar_import$src$, $uid$0hu92nmjmnsnce6rvp0bgbqrfc@google.com$uid$, $title$Jefferson 4th Grade Pano RAIN DATE (1 photog)$title$, $d$2026-05-19$d$::date, $d$2026-05-19$d$::date, NULL, NULL, $sch$Jefferson 4th Grade$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Corrie Hoffman, PTO contact
corrieh06@icloud.com
Denise Smith, Main Office Admin
dsmith@schalmont.net
2ND time doing pano with us
**4th grade pano outside
Outdoor photo
NOT pushing inside. Rain date for pano on May 19
PANO DETAILS - 8x24, 1 for each 4th grader and their teachers, one framed in black for school. $6 EACH
Schalmont Central School District$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0hu92nmjmnsnce6rvp0bgbqrfc@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_8fa2ac87d104e9a6$cid$, $src$google_calendar_import$src$, $uid$4ld2l2e82g1a4pvbvueuefnh6j@google.com$uid$, $title$New Lebanon Grad Group Photo (1 photog)$title$, $d$2025-06-26$d$::date, $d$2025-06-26$d$::date, NULL, NULL, $sch$New Lebanon Grad Group Photo$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$4/30/25 booked with Sarah Roblez in main office (
sroblez@newlebanoncsd.org
)
2/19/25 holding based on district's calendar ckg
9:30am start at WBH Elementary
group senior photo at grad rehearsal
Going with option 1, put on GP with a $6 8x10 print option, ship to school. Batch to school is open for one week after 6/26/25. Make flyer for parents and email to Sarah. Also have hard copies for photograper bring to photo shoot.
Roblez, Sarah
6/24/25 7:08 AM (5 minutes ago)
to Jeff, me
Hi Jeff
We will be making the final call about the graduation location tomorrow morning. If it is moved inside, we will be at the New Lebanon Jr/Sr High school in the gym instead of outside at WBH Elementary school. I will let you know as soon as we make the official call.
Thank you for touching base.
Sarah
Carrie Graziano

<
carrie@ismilestudios.com
>
Apr 30, 2025, 12:13 PM
to Sarah
Hello Sarah!
I have been holding that date (based on when it was done last year) - so YES! We are confirmed to take this important photo for you. When you have a time, just let me know.
Enjoy today's sunshine!
Carrie
Carrie Graziano
iSmile Studios
**iSmile has moved! Find iSmile Studios at 84 Everett Road, Albany, NY 12205 beginning January 24, 2025!**
Roblez, Sarah
Apr 30, 2025, 12:17 PM
to me
Does 9:30 work? And what would be the cost and how would they order?
Carrie Graziano
 <
carrie@ismilestudios.com
>
Apr 30, 2025, 1:28 PM
to Sarah
Yes, that time works great. 
Last year, we made the 8x10 print available to parents to purchase online for $6 each. The ordering deadline was one week following the picture date to receive free shipping to the school. The batch of prints ship to the school once the deadline passes. 
That being said, only one parent ordered shipping to the school. The rest selected to pay a small shipping charge so it would go directly to their home.
We can do the same this year if you'd like. Just let me know :)
Carrie Graziano
iSmile Studios
**iSmile has moved! Find iSmile Studios at 84 Everett Road, Albany, NY 12205 beginning January 24, 2025!**
Roblez, Sarah
Apr 30, 2025, 2:11 PM
to me
That works. Thank you!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4ld2l2e82g1a4pvbvueuefnh6j@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_54ca197597caf7c1$cid$, $src$google_calendar_import$src$, $uid$3f7o9gfi0cg13517fuqs8b83ms@google.com$uid$, $title$Nassau-Shatford LL (2 photogs + 1 team)$title$, $d$2026-05-02$d$::date, $d$2026-05-02$d$::date, $tm$8:45am$tm$, $arr$8:25am$arr$, NULL, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jessikka
info
@
nassaubaseballassociation.com

cell: 518-755-1246
schedule at end and in binders
4/15/26 confirmed; 4/13/26 nudged; 2/25/26 emailed for date ckg
Arrive: 8:25am or so
Start: 8:45am, with a short break for opening ceremony
2 teams in dugouts on opening day, 1 photog for team pics
candids of the parade and opening ceremonies
Coach and sponsor 8x10s
Nassau-Shatford Baseball May 2nd
8:45AM
iSmile (T-Ball)
Hometown Pool & Spa (T-Ball)
9:00AM
Jimmy D’s Pizza Royale (T-Ball)
Darcy Construction (T-Ball)
9:15AM
HL Fuel – Mooneys Funeral Home (Majors)
Darcy Construction-Phelps Insurance (Majors)
9:30AM
Chuck Scott Auto (Minors)
Jimmy D’s Pizza Royale (Minors)
9:45AM
New York State Police (T-Ball)
Nassau Hardware – Hanson Well Drilling (Majors)
10-1050 Break for Opening Ceremonies
11:00AM
Mavericks (T-Ball)
My Place & Co (Minors)
11:15AM
MRB Darcy Dirtwork (Minors)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3f7o9gfi0cg13517fuqs8b83ms@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e58981d098e324ee$cid$, $src$google_calendar_import$src$, $uid$FDCFA89A-57A5-4854-A85F-0FA6368745FD$uid$, $title$Steph Binghamton if possible$title$, $d$2026-09-17$d$::date, $d$2026-09-18$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$FDCFA89A-57A5-4854-A85F-0FA6368745FD$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_cbbb1e6e8dce4716$cid$, $src$google_calendar_import$src$, $uid$7kq8u6rk8o0r7mc9kmcmls31jb@google.com$uid$, $title$Van Corlaer Elem Makeups (1 team)$title$, $d$2025-11-24$d$::date, $d$2025-11-24$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Van Corlaer Elementary School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Proposed make up schedule:
Arrival and set up 8:30 am
Staff 9:00 - 10:00
PK/K - 9:00 - 9:15
1/2- 9:15 - 9:30
3/4 - 9:30 - 9:45
5 - 9:40 - 10:00
8/6/25 per Denise, should be back on Guilderland Ave for the 25-26 school year. ckg
EMAIL BOTH THE PRINCIPAL AND SECRETARY!
Denise Lehman
lehmand@schenectadyschools.org
Tanya Delameter, principal
delamatert@schenectadyschools.org
Check in at main office with photo ID first!
Set-up: 830am; 
Start: 9am
In the gymnasium CONFIRM$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7kq8u6rk8o0r7mc9kmcmls31jb@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4c0f7499b48bfb89$cid$, $src$google_calendar_import$src$, $uid$419f021vuoc1lb818d07l55l7u@google.com$uid$, $title$Siena Headshots 12;30-2;30 SSU$title$, $d$2027-02-08$d$::date, $d$2027-02-08$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$419f021vuoc1lb818d07l55l7u@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9e9a9d73c98e5ef6$cid$, $src$google_calendar_import$src$, $uid$2birg4mg9hovrirh0inco68061@google.com$uid$, $title$NOVEMBER SCHEDULING CALL$title$, $d$2025-10-16$d$::date, $d$2025-10-16$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$meet.google.com/idf-veut-mwf$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2birg4mg9hovrirh0inco68061@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b6d3a2b842295cb3$cid$, $src$google_calendar_import$src$, $uid$2d6k59qqinqnoikop6sp4rng1m@google.com$uid$, $title$A.W. Becker Makeup Day (1 team)$title$, $d$2025-11-12$d$::date, $d$2025-11-12$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$A.W. Becker$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Morgan Zinzow, Admin Asst new since fall 2025
mzinzow@rcscsd.org
(518) 7565200 ext 5002
Arrive: 8am
Start: 8:30am faculty that need makeups
Start: 9:15am students
Indoor in CAFETERIA
11/7/25 confirmed with Morgan; 11/6/25 corrected today per Molly; 
10/31/25 proposed schedule to Morgan:
8:00 set up
8:30 faculty
9:15 students begin with PreK
9:30 K
9:45 1st
10:00 2nd
10:15 3rd
10:30 4th
10:45 5th and latecomers
11am - breakdown equipment$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2d6k59qqinqnoikop6sp4rng1m@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d2c1a75c035eddb0$cid$, $src$google_calendar_import$src$, $uid$02uqiuie314de1dveuc25ipbs6@google.com$uid$, $title$Cairo-Durham Fall Sports (1 team) 2p$title$, $d$2025-09-12$d$::date, $d$2025-09-12$d$::date, $tm$2:30pm$tm$, $arr$2:00pm$arr$, $sch$Cairo-Durham$sch$, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Greg Hagan, AD
ghagan@cairodurham.org
Set up at 2pm, start at 2:30pm (MAKE SURE WE HAVE TIME TO MOVE IF NECESSARY)
Team photos
Individual photos
NEED BANNERS FOR EARLY OCT PEP RALLY
Indoors in the HS Gym CONFIRMED 9/6 with Greg ckg
2:30 - Boys Modified Soccer
2:40 - Girls Modified Soccer
2:50 - Varsity Golf
3:00 - Girls Modified Volleyball
3:10 - Modified Football
3:20 - Varsity Football
3:30 - Girls JV Volleyball
3:40 - Girls Varsity Volleyball
3:50 - Cross Country
4:00 - Girls Varsity Soccer
4:10 - Boys Varsity Soccer
4:20 - Girls Varsity Tennis$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$02uqiuie314de1dveuc25ipbs6@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_272e8a2c9d5dae36$cid$, $src$google_calendar_import$src$, $uid$741r39e24m8t02v3aggbgrtj6s@google.com$uid$, $title$Santa Jim 4/8PM$title$, $d$2025-12-05$d$::date, $d$2025-12-05$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$741r39e24m8t02v3aggbgrtj6s@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_db6ac5cb97da2468$cid$, $src$google_calendar_import$src$, $uid$55so948mhhovk2v65iehd1iosr@google.com$uid$, $title$Union Seniors 2 Photogs$title$, $d$2026-05-22$d$::date, $d$2026-05-22$d$::date, NULL, NULL, $sch$Union Photogs$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$55so948mhhovk2v65iehd1iosr@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_fe3801c446c42b61$cid$, $src$google_calendar_import$src$, $uid$4fle2p4atcgb1n2766sdh534r6@google.com$uid$, $title$Okte Rain Date$title$, $d$2026-09-28$d$::date, $d$2026-09-28$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$4/28/26 Carrie asked again if they can move indoors for bad weather on 9/25/26 pic date, adn they said no. ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4fle2p4atcgb1n2766sdh534r6@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_369d6a6b8d46e4ce$cid$, $src$google_calendar_import$src$, $uid$2c3pvb2erts0qbqgqjr24arav2@google.com$uid$, $title$RPI Headshot Event PM (1 photog)$title$, $d$2025-06-25$d$::date, $d$2025-06-25$d$::date, $tm$6:00pm$tm$, $arr$5:30p$arr$, $sch$RPI Headshot Event PM$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$GP job named "Capital Region Careers Event at RPI 2025"
From: 
Burke, Dean

<
burked5@rpi.edu
>
Date: Tue, Mar 18, 2025 at 1:49 PM
Subject: Invitation to Provide Headshot Services at Capital Region Careers Networking Night - 06/25/2025
To: 
carrie@ismilestudios.com
 <
carrie@ismilestudios.com
>
Cc: Taylor, Tammy J. <
taylot8@rpi.edu
>
arrive: 5:30p
start: 6:00pm to 8:00pm
Hi Carrie, 

I hope you are doing well.  I am reaching out to see if iSmiles Studios would be available to provide professional headshot services at our upcoming Capital Region Careers Networking Night on Wednesday, June 25, 2025, from 6:00PM – 8:00PM, at the Hefner Alumni House on the RPI campus.  

This event is an opportunity for RPI students to connect with local Capital Region employers who are promoting internships and co-op opportunities.  I believe adding a professional headshot service would be a valuable opportunity, giving students an important resource as they build their professional image.

Please let me know if you are available and if you have any questions regarding logistics, space, or requirements you may have.  I would love to collaborate with you on making this a great opportunity for our students. I am looking forward to hearing from you. 

Dean Burke
Sr. Program Administrator
Rensselaer Polytechnic Institute
Job Location and Development Program
Center for Career and Professional Development
e: 
burked5@rpi.edu
  t: 518.276.8110$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2c3pvb2erts0qbqgqjr24arav2@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b379edf9e51edfd4$cid$, $src$google_calendar_import$src$, $uid$307vi6gtmusp2nvobedf7a1j19@google.com$uid$, $title$Rosendale Elem Field Day (1 photog)$title$, $d$2026-06-12$d$::date, $d$2026-06-12$d$::date, NULL, NULL, $sch$Rosendale Elementary School Field Day$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Ashley Feldman, PTO
ashleyfeldman929@gmail.com

Rain date in June 18

6/2/26 June 12 (Field Day) - It starts at 8AM and runs through around noon. 
emailed Ashley cc Molly ckg

4/9/26 booked, still need details! ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$307vi6gtmusp2nvobedf7a1j19@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ecdbaaf3f8d2f955$cid$, $src$google_calendar_import$src$, $uid$6s1l4qc97vj4k76qljqb3u1adj@google.com$uid$, $title$Milton Terrace RAIN 5th Grade Photo (1 photog)$title$, $d$2026-05-12$d$::date, $d$2026-05-12$d$::date, NULL, NULL, $sch$Milton Terrace RAIN 5th Grade Photo$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Sarah Kinney, NEW main office admin
skinney@bscsd.org
NOT SURE YET WHAT TIME...$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6s1l4qc97vj4k76qljqb3u1adj@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_09d0314ad57aff58$cid$, $src$google_calendar_import$src$, $uid$6hluhl26dtepgth7upq3o7312l@google.com$uid$, $title$SUMC Preschool NEW (1 team)$title$, $d$2025-09-29$d$::date, $d$2025-09-30$d$::date, NULL, NULL, $sch$SUMC Preschool NEW$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Julie A. Bardin
Preschool Director
SUMC Preschool
preschooldirector@shenumc.org
518.383.2605
9/29/25 per Molly super slow paced, no asst needed going forward? ckg
Preschool Director
 <
preschooldirector@shenumc.org
>
1:41 PM (16 minutes ago)
to Beth, me
Hi Beth, 
We hold pictures on a Monday & a Tuesday to cover all of our classes (as most children do not come everyday). This year the photographers ran pictures both days aprox. 8 -1. We have about 110 kids at our Preschool. 
This year our dates were 9/30 & 10/1, we aren’t locked into a Monday/Tuesday. It could be a MWF coupled with a Tuesday or Tuesday. We do prefer consecutive days if possible. 
Thanks,
Julie A. Bardin
Preschool Director
SUMC Preschool
518.383.2605$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6hluhl26dtepgth7upq3o7312l@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f3739717c0435c46$cid$, $src$google_calendar_import$src$, $uid$1cq7ucdmmlof7q76tf232l3l09@google.com$uid$, $title$HOLD Rosendale Elementary MAKEUPS (1 team)$title$, $d$2026-10-14$d$::date, $d$2026-10-14$d$::date, $tm$8:15am$tm$, $arr$7:45am$arr$, $sch$HOLD Rosendale Elementary$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Ashley Feldman 
ashleyfeldman929@gmail.com
Arrive: 7:45am
Start: 8:15am per below
No per-grade schedule; prefer to do K-2 and then 3-5 in groups. See 2025-26.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1cq7ucdmmlof7q76tf232l3l09@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_1c9e36ee19c5e2b3$cid$, $src$google_calendar_import$src$, $uid$6fnodem334mvds2n6n23r7b10g@google.com$uid$, $title$Karigon Elementary Makeups (1 team)$title$, $d$2025-10-23$d$::date, $d$2025-10-23$d$::date, NULL, $arr$10:00am$arr$, $sch$Karigon Elementary$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Nupoor Gordon (NEW picture day contact)
gordnupo@shenschools.org
indoor in Main Lobby, confirmed by Nupoor 10/22/25 ckg
9:30 set up
10:00 AM K
10:15 1st
10:30 3rd
11:00 4th
11:15 2nd
11:30 5th
11:45 to noon PM K$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6fnodem334mvds2n6n23r7b10g@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4e7805094aa4e138$cid$, $src$google_calendar_import$src$, $uid$3dcpcnpomc4f5c5phvqv8go4q3@google.com$uid$, $title$Destine Prep Makeup (1 photog)$title$, $d$2025-12-04$d$::date, $d$2025-12-04$d$::date, NULL, $arr$9:00am$arr$, $sch$Destine Prep Makeup$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mashoma Brydie, director
mbrydie@destineprepcharterschool.org
530 Franklin St, Third Floor, Schenectady NY 12305
11/25/25 confirmed with Mashoma ckg
Setup: 9:00am
Start:: 9:30am
Indoor in Cafe-inasium
**GREY BACKGROUND**
Collages in fall$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3dcpcnpomc4f5c5phvqv8go4q3@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ce85e583803f74fa$cid$, $src$google_calendar_import$src$, $uid$35se2cnhn22uc0bj9ma1qrp21l@google.com$uid$, $title$Myers Middle School (2 teams; 2 days)$title$, $d$2025-10-21$d$::date, $d$2025-10-22$d$::date, $tm$8:53am$tm$, $arr$8:20am$arr$, $sch$Myers Middle School$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$William Rivers, Principal
Donna Lounello, Principal's SST
Myers Middle School
dlounello@albany.k12.ny.us
518-475-6425 phone
518 475-6427 fax
10/10 all confirmd with Donna ckg
Setup: 8:20am
Start: 8:53am - first PE class time (2nd period)
Tues, Oct. 21 is a Day 1 and Wednesday will be Day 2.
CHECK IN THE MAIN OFFICE WITH PHOTO ID UPON ARRIVAL
Indoor, during gym times
Attendance files
Treering yearbook, T. Shane Cox editor$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$35se2cnhn22uc0bj9ma1qrp21l@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d816e3e8439691dd$cid$, $src$google_calendar_import$src$, $uid$5qu53g9ja1mjsaqmpp8rc3rcel@google.com$uid$, $title$Waterford-Halfmoon MS/HS Makeups (1 team)$title$, $d$2025-10-16$d$::date, $d$2025-10-16$d$::date, NULL, NULL, $sch$Waterford-Halfmoon Middle School/High School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$2024 Makeups: 9:45am-12:15pm 

SAME DAY AS ELEM SCHOOL$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5qu53g9ja1mjsaqmpp8rc3rcel@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_becf54e435cc6150$cid$, $src$google_calendar_import$src$, $uid$0hqth4j65ad57ct3b0o51e40ia@google.com$uid$, $title$Wonderland Co-op Nursery (REQ Lauren)$title$, $d$2025-10-01$d$::date, $d$2025-10-02$d$::date, $tm$12:30pm$tm$, $arr$9:00am$arr$, $sch$Wonderland Co-op Nursery$sch$, $typ$graduation/pano$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, $info$Kim Haley, teacher
khaley101682@gmail.com
10/1 - arrive at 9am, start four year olds fall pics and cap and gown pictures, class pic of all, and then 13 day kids
10/2 - arrive at 9am, start class at 9:30am for 1st class, start 12:30pm for 2nd class. Group class pics as noted by Kim.
Outdoor on the playground (confirmed 9/22/25 ckg)
Requesting Lauren again!
Individuals of students and teachers (ALL ONE GP JOB)
Group class photos - check with Kim on exactly how the classes should be grouped
Have own caps & gowns
Kimberly Haley
Sun, Sep 21, 7:17 PM (12 hours ago)
to me
Good Evening
I have shared the class list with you. If you do not receive it please let me know. 
Just to clarify we are doing the pictures outside on the playground
For the October 1 picture day that will just be the morning class which starts at 9:00. This will be the four year old class. We would like them to also do a picture with a cap and gown as we have done in the past. We would also like to do the class photo all together and then do a separate class photo for the 13 kids that are in the all day class. 
For the October 2 picture day this is the day we have an am and a pm class. The am class starts at 9:00 and the pm class starts at 12:00. We would also want to do a group class photo with both of those classes also. The PM class has 10 four year olds mixed in and I would like to do cap and gown photos with just those 10 kids.
We also know of one child that will not be there for picture day if we have any children absent on either of those days can we use one of the rain dates to have the photographer come back and take those childrens pictures? We could pick one of those days and just do one time slot and have them come. Please let me know
Also will we be able to get emailed to use all the childrens pictures like last year. Last year you guys sent us one photo of each of the kids for us to use for the yearbook.
I think I answered all your questions and asked you the questions I have. If I missed anything please let me know.
Thank you
Kim Haley
Kimberly Haley
6/19/2025 1:23 PM (1 hour ago)
to me
Good afternoon Carrie
We are looking to schedule or school photos again for the 25-26 school year. We would like them to be outside again like we have done in the past. We are looking for the following dates:
October 1st- 9:30 start four year olds with a cap and gown picture also
October 2nd-9:30 start 
October 2nd- 12:30 start
Rain dates would be 10/8 and 10/9
Please let me know if these dates work for you guys! We would love to have Lauren(I think that was her name) again 
Thank you
Kim Haley$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0hqth4j65ad57ct3b0o51e40ia@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2b4e7925c9f85428$cid$, $src$google_calendar_import$src$, $uid$0bi0964q4kpn1g8av41p9mb4eb@google.com$uid$, $title$Matt Interview w/ Erin Lefebvre (10am)$title$, $d$2026-02-04$d$::date, $d$2026-02-04$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[$a$Matt$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0bi0964q4kpn1g8av41p9mb4eb@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e98521cf7648f768$cid$, $src$google_calendar_import$src$, $uid$5cs3a3l0t77n40kmg4ekg8odvh@google.com$uid$, $title$Heatly School (1 team + class pic photg and Colleen)$title$, $d$2025-10-03$d$::date, $d$2025-10-03$d$::date, $tm$9:00am$tm$, NULL, $sch$Heatly School$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Stephanie Bouchey, principal, main contact
sbouchey@greenisland.org
9/22 confirmed and schedule shared with Beth ckg
Arrival: ~8:30am
Start: 9:00am is first class
Indoor
NEW - only grades PK-8 now. No high school. 
All grades get ID cards
Yes to faculty IDs
photographing all students and faculty
Treering yearbook
Service strips for all
GROUP class pics$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5cs3a3l0t77n40kmg4ekg8odvh@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_15d1be6c7d7005ba$cid$, $src$google_calendar_import$src$, $uid$1e9vh4i45fprl4rqt1umihi3mk@google.com$uid$, $title$AAG Commencement$title$, $d$2025-06-09$d$::date, $d$2025-06-09$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1e9vh4i45fprl4rqt1umihi3mk@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d63d9d5d7148f071$cid$, $src$google_calendar_import$src$, $uid$4cd1pb9nod66rcmr8e3ct9tf6f@google.com$uid$, $title$Academy Upper School Awards Ceremony$title$, $d$2026-06-03$d$::date, $d$2026-06-03$d$::date, NULL, NULL, $sch$Academy Upper School Awards Ceremony$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Dear Steph,
Would it be possible to have your assistant photographer here on June 3
rd
 for our 9:30 - 11:30 awards assembly? This is one of the biggest days of the year. We can pay for it, and we should.
Please let me know.
Thank you,
Christine$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4cd1pb9nod66rcmr8e3ct9tf6f@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c83654ef50061b1d$cid$, $src$google_calendar_import$src$, $uid$68rp1fodfii1de9n8f296hf4ae@google.com$uid$, $title$Tesago Spring Pics & 5th Grade Group Photo (2 teams)$title$, $d$2027-05-17$d$::date, $d$2027-05-17$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Tesago & 5th Grade Group Photo$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$SPRING PHOTOS (different contacts for fall and spring photos)
Emma Paradise 
paraemma@shenschools.org
SPRING PIC DAY CONTACT
*Darlene Kern: 
kerndarl@shenschools.org
, office admin
Setup: 8:30 am
Start: 9am
push inside if bad weather$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$68rp1fodfii1de9n8f296hf4ae@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f52fe651898d1905$cid$, $src$google_calendar_import$src$, $uid$4lvr80e4n5gc5aa77622rtd0r4@google.com$uid$, $title$Duanesburg Family Photo Night$title$, $d$2026-05-18$d$::date, $d$2026-05-18$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Hi Stephanie, sorry for the delay getting back to you - we had a board meeting yesterday and I wanted to clarify a few things with the group.

The Spring pictures on May 18th are going to be the typical pictures of kids. BUT ... I was wondering if you would be able to do some family slots after school. Maybe subsequent sign up slots afterschool can be an option? That would be the same format that was discussed for the Nov 30th event - $25 per family. 

Let me know if that would be an option. 
Thank you! Have a great weekend!
Kerry 
Kerry Utstein
kutstein@dcpta.org$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4lvr80e4n5gc5aa77622rtd0r4@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9598dd61ef4e9de0$cid$, $src$google_calendar_import$src$, $uid$5uq6adb6oqq05fvgahb0johh6m@google.com$uid$, $title$Keane 5th Grade Pano Rain Date (1 photog)$title$, $d$2026-05-15$d$::date, $d$2026-05-15$d$::date, $tm$10:00am$tm$, $arr$9:45am$arr$, $sch$Keane$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$CHRISTINE MAHADEO, building secretary (new pic day contact)
mahadeoc@schenectadyschools.org
Karen Williams, main office
williamsk@schenectadyschools.org
2/24/26 times updated with Karen ckg; 9/9/25 confirmed with Karen (note, time is different than for the original date) ckg
Arrive: 9:45am
Start: 10am
***PLEASE TAKE A FEW LANDSCAPE SHOTS OF THE OUTSIDE OF THE SCHOOL BUILDING FOR THE COVER OF THEIR PRINCIPAL'S BOOK*** 
In front of school
QUICK TURNAROUND for principal's book and yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5uq6adb6oqq05fvgahb0johh6m@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_884f2af1a78c4fec$cid$, $src$google_calendar_import$src$, $uid$0jk18dptf1vjpumbjtud16q3el@google.com$uid$, $title$Academy Theater Camp AM (Molly)$title$, $d$2025-07-09$d$::date, $d$2025-07-09$d$::date, $tm$9:15am$tm$, $arr$9:00am$arr$, $sch$Academy Theater Camp AM$sch$, $typ$review$typ$, ARRAY[$a$Molly$a$]::text[], ARRAY[]::text[], false, $info$Jason Ford
FordJ@albanyacademies.org
Outdoor
VERTICAL
Session 1 headshots and a CAST group photo
upload to GP job already created. Name album by date
Please refer to GP job to see how prior year's images were done
https://app.gotphoto.com/config_jobs_photos/index/509291208
ALSO - digital images need to be turned around FAST and shared with Jason so he can print in show's playbill. 
PRINTS - WORK WITH MILTON ON THESE - print 1 8x10 and 1 5x7 of each cast member's headshot and a 5x7 group cast photo for everyone 
SCHOOL NEEDS THEM ASAP FOR THE SHOW. This show is Friday, July 11!
Arrive: 9am
Start: 9:15am
Morning
Lower School Campus auditorium (old AAG side) 140 Academy Rd
Jason Ford
Mon, Jul 7, 9:44 PM (8 hours ago)
to me, Molly, Milton, Lauren, Andrew
Absolutely!
Typically, we get 1 8x10 and 1 5x7 of each child as well as a cast photo. We have 33 students this session. We also include a cast photo for each staff member, so a total of 40 cast photos. Thank you!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0jk18dptf1vjpumbjtud16q3el@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_10b84b92249e2187$cid$, $src$google_calendar_import$src$, $uid$6ivv0of0eu4rp22m6j1pu1r4i3@google.com$uid$, $title$NEW Craig Elementary RAIN 5th grade pano (1 photog)$title$, $d$2026-05-21$d$::date, $d$2026-05-21$d$::date, NULL, NULL, $sch$NEW Craig Elementary RAIN$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Amy Wickham awickham23@gmail.com
Erin Perry ebeland20@gmail.com

5th grade pano only rain date

3/30/36 emailed Shawna to confirm ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6ivv0of0eu4rp22m6j1pu1r4i3@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_719e471e5aa00f2e$cid$, $src$google_calendar_import$src$, $uid$5h9m1rvccsr7pvaoht3go8cj6g@google.com$uid$, $title$HOLD Jefferson 4th Grade Pano RAIN DATE (1 photog)$title$, $d$2027-05-18$d$::date, $d$2027-05-18$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$HOLD Jefferson 4th Grade$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Corrie Hoffman, PTO contact
corrieh06@icloud.com
Denise Smith, Main Office Admin
dsmith@schalmont.net
3rd time doing pano with us
**4th grade pano outside
Arrive: 8:30am
Start: 9am
Outdoor photo$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5h9m1rvccsr7pvaoht3go8cj6g@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e1a9e97117e207ef$cid$, $src$google_calendar_import$src$, $uid$0hk5l2vmmnqt6k5pbor5q2v504@google.com$uid$, $title$Interview:  Michael Springstead 11;00$title$, $d$2026-01-19$d$::date, $d$2026-01-19$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0hk5l2vmmnqt6k5pbor5q2v504@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_06d7832c119c9e0b$cid$, $src$google_calendar_import$src$, $uid$0oerp8787iu6f1tpgejl69qklp@google.com$uid$, $title$LCS Grad Rehearsal Morning (Matt)$title$, $d$2026-06-12$d$::date, $d$2026-06-12$d$::date, $tm$3:00$tm$, NULL, $sch$LCS Grad Rehearsal$sch$, $typ$graduation/pano$typ$, ARRAY[$a$Matt$a$]::text[], ARRAY[]::text[], false, $info$Amy Thiel
Librarian/Lower School Tech Teacher/Graduation Coordinator
Loudonville Christian School
374 Loudon Rd. 
Loudonville, NY 12211
518.434.6051 x335
lcs.org
9:30am start
3/25/26 booked with Bonnie ckg
Amy Thiel
Wed, May 13, 4:12 PM (15 hours ago)
to me, Matt
Hi Carrie & Matt - 
I am coordinating Graduation again this year and I wanted to reach out to keep you in the loop!  The LCS Baccalaureate will be held on Friday, June 12 at 6:30 pm (this is a change from last year) and Graduation is to be held on Saturday, June 13 at 10:30 am.  We will have practice on Friday, June 12, beginning at 9:30 am.  
I just want to confirm that you guys have that day on your calendar!  Please let me know if you have any questions or need anything further from me.  I want to also confirm that you'll be available for pictures on Saturday, June 13 beginning at 9:30 am in the Ministry Center (this is also slightly later than last year).  Our graduating class this year is only 8 students so I expect practice, Baccalaureate, Graduation and the pictures beforehand to run a little faster than in previous years.  
Once you have a QR code available, please send it along and I will share it with our families!  (I realize it's a bit early, but figured I would ask now!)
Thank you!  
Best, 
Amy
-- 
Amy Thiel
Office Manager/Librarian/
Grandparents' Day Coordinator/Graduation Coordinator
Loudonville Christian School
374 Loudon Rd. 
Loudonville, NY 12211
518.434.6051 x301
lcs.org
Matt iSmile Studios
Wed, May 13, 7:33 PM (11 hours ago)
to 
Beth
, Amy, me
Hi Amy,
This all sounds great! I'll be your photographer again this year, and Beth will be with me on Saturday for family photos in the morning. 
We'll loop back soon with a flyer and QR code. Have a great evening!
Thanks!
Matt$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0oerp8787iu6f1tpgejl69qklp@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_262df964ee5cb87d$cid$, $src$google_calendar_import$src$, $uid$56vb54ge3lracs4r7addeimkr1@google.com$uid$, $title$(Mini) Studio Early Bird Easter Bunny Robert confirmed for bunny$title$, $d$2026-03-14$d$::date, $d$2026-03-14$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$56vb54ge3lracs4r7addeimkr1@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c43c8c22ae07df8d$cid$, $src$google_calendar_import$src$, $uid$6r0c7lj4u90rao6nu7hbdml2sj@google.com$uid$, $title$Academy Golf Tournament Candids$title$, $d$2026-06-22$d$::date, $d$2026-06-22$d$::date, NULL, NULL, $sch$Academy Golf Tournament Candids$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Golf shotgun 12:00
Tennis starts at 9:00, told Layne I would be there at the end of tennis so like 1030, 1100?$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6r0c7lj4u90rao6nu7hbdml2sj@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4e0af3746d48c449$cid$, $src$google_calendar_import$src$, $uid$4vjg3hs7ipmh6b2vqq1kfrik6q@google.com$uid$, $title$Chamber Conference on short videos STEPH$title$, $d$2025-12-09$d$::date, $d$2025-12-09$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$Lights, Camera, Connection: How Short-Form Video Builds Trust and Drives Business
Key Takeaways:
Why Trust Wins: Learn why trust, not just reach, is the true driver of modern buying decisions.
Short-Form Strategy: Discover how 60-second videos can build credibility, authority, and connection.
Hook & Convert: Practice creating scroll-stopping intros and impactful content with two interactive exercises.
Your Action Plan: Leave with a ready-to-shoot idea, content structure, and confidence to go live.
Space is limited.
$15 Members
$35 non Members
Tuesday, December 9
th
10 to 11AM
The Suites on 7
814 Troy Schenectady Rd., Latham$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4vjg3hs7ipmh6b2vqq1kfrik6q@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7328bbbfb6308d40$cid$, $src$google_calendar_import$src$, $uid$2v95j9rqc38p1ofq3f96p3r7g7@google.com$uid$, $title$Okte Elem Makeup Day (1 studio photo)$title$, $d$2025-10-09$d$::date, $d$2025-10-09$d$::date, NULL, $arr$9:30am$arr$, $sch$Okte Elementary School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Colleen Awa
colleen.awa@gmail.com

Outdoor makeups

Arrive: 9:30am
Starting at 10am, going until 1pm
Front office will coordinate getting grades to us per Colleen. (I suggested a schedule we've in past years, grades every 15 minutes, with K am first and K PM last...awaiting final schedule) ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2v95j9rqc38p1ofq3f96p3r7g7@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_aa5b6c9df204fdfc$cid$, $src$google_calendar_import$src$, $uid$3var0f0s0rgkj0d30lf9f749n1@google.com$uid$, $title$TSL Daycare, Troy (REQ Lauren)$title$, $d$2025-11-05$d$::date, $d$2025-11-05$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$TSL Daycare Troy$sch$, $typ$review$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, $info$Karin Pregent, new director
kpregent.tsl@gmail.com
PH: 518.238.3346 school
5/21/25 REQ Lauren for 25-26 school year
3/20/25 NEW ADDRESS:
547 River St, Troy NY 12180
10/20/25 Karin confirmed timing and WINTER THEMED backdrop ckg
Setup: 8:30am
Start: 9am
(AFTER ALL KIDS AND STAFF ARE DONE, CARRIE OKAY'ED A FEW SHOTS OF DIRECTOR WITH EHR HUBBY)
Infant ages up to Preschoolers
10/21/25 carrie okay'ed a couple of pic ofs director Karin with hubby once all student pics are done.
Indoor (check what theme backdrop to use) WINTER THEME as of 10/20/25 ckg
Include staff 5x7s for school
Staff ID cards
Collages$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3var0f0s0rgkj0d30lf9f749n1@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_fbc5362fb5124ecb$cid$, $src$google_calendar_import$src$, $uid$52rpur911vhv1gm5h57v72ngcs@google.com$uid$, $title$Gardner-Dickinson Grad Photos (1 photog)$title$, $d$2025-06-27$d$::date, $d$2025-06-27$d$::date, $tm$6:00pm$tm$, $arr$5:30pm$arr$, $sch$Gardner-Dickinson$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$5/29/25 Kyle confirmed; 2/19/25 holding based on school's calendar ckg
Kyle Barber
kbarber@wynantskillufsd.org
5/28 emailed Kyle to confirm ckg
Arrive: 5:30PM
Start: 6PM (Graduation starts at 7pm)
Individual poses of each grad, headshot, full body and poses in-between -look at last years: 
https://app.gotphoto.com/config_jobs_photos/gallery/1638852756/4487327
38 8th graders
Carrie Graziano

Wed, May 28, 6:33 AM (1 day ago)
to Kyle
Hey Kyle!
I saved your 8th-grade grad date on our calendar, but I don't believe we've chatted about the details. Please forgive my absent-mindedness!
I have the graduation on June 27, and based on last year, we plan to arrive at 5:30 pm to start photos around 6 pm. The event begins at 7 pm. We'll be taking individual photos of the grads, headshots, full body shots, etc. I don't see that we took candids last year. Is that something you'd like us to do, or are you handling that?
Have I missed anything?
Hope the end of the school year is wrapping up well for you! Oh, I'll be reaching out soon to schedule for next year...so stay tuned!
Carrie
Carrie Graziano
iSmile Studios
Join the conversation online at 
www.facebook.com/
ismilestudios
www.ismilestudios.com
Share your great experience on Google
Kyle Barber
2:21 PM (40 minutes ago)
to me
All sounds great! I will take candids during, no worries there. We have 38 8th graders this year so if 6pm works for you that works for us!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$52rpur911vhv1gm5h57v72ngcs@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a6ddc51e28ca8114$cid$, $src$google_calendar_import$src$, $uid$76i0u1q56d0u0fdlit4ehjj9nf@google.com$uid$, $title$The Sara Marie School (1 photog)$title$, $d$2025-10-20$d$::date, $d$2025-10-20$d$::date, NULL, $arr$8:30am$arr$, $sch$The Sara Marie School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Stefanie Rawls, director
1-518-280-3982
srawls@thesaramarieschool.org
Arrive at 8:30am, to start photos at 9am. (10/14; 10/1 confirmed timing ckg)
take picture of setup for in-studio makeups!
Indoor with solid background
Composite class pics (10/14/25 confirmed ckg)
Need images for yearbook (Treering) - we upload
All students and teachers - individuals
Stefanie Rawls
10/14/25 11:06 AM (1 minute ago)
to me, Beth
Good Morning,
We are looking forward to working with Beth on Monday for our school pictures! 
Yes, 8:30am arrival time to begin at 9am sounds good. We will set up in our downstairs space again. 
Yes, we would love the composite style class photo again this year. 
Please let me know if there is anything else you need from us prior to Monday. We are looking forward to working with iSmile again this year and will have our students camera ready!😁 
Thanks so much for your help! 
Stefanie$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$76i0u1q56d0u0fdlit4ehjj9nf@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_07a937de6a83abdf$cid$, $src$google_calendar_import$src$, $uid$73fquq8hcgk3t93dks23esmj85@google.com$uid$, $title$Santa Jay$title$, $d$2025-12-15$d$::date, $d$2025-12-15$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$73fquq8hcgk3t93dks23esmj85@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f69fe47e66ba785f$cid$, $src$google_calendar_import$src$, $uid$7e6a08i6ad3a57qq84u724rarh@google.com$uid$, $title$Cohoes HS Spring Sports (1 team)$title$, $d$2026-03-27$d$::date, $d$2026-03-27$d$::date, $tm$2:55pm$tm$, $arr$2:25pm$arr$, $sch$Cohoes High School$sch$, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Laura Tarlo

ltarlo@cohoes.org
Principal
Caryn Dollard 
cdollard@cohoes.org
Our school contact
Jeffery Huneau 
jhuneau@cohoes.org
Althletic Director
Arrive: 2:25pm
Start: 2:55pm
In cafeteria
Lionk to schedule: 
https://docs.google.com/spreadsheets/d/1XNAunCkMi0wMf_Gbr8EmAccEa7X5vlUYg1asrVBiyeQ/edit?usp=sharing$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7e6a08i6ad3a57qq84u724rarh@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ec8bfc4059ef2d7b$cid$, $src$google_calendar_import$src$, $uid$9BD21A55-8993-4146-A9AF-B568C99AB4FD$uid$, $title$Ava LaSalle rain date Steph (mom Kara)$title$, $d$2025-08-28$d$::date, $d$2025-08-28$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$9BD21A55-8993-4146-A9AF-B568C99AB4FD$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2e7eef3d52950b80$cid$, $src$google_calendar_import$src$, $uid$0cbihvfmi5fenutt0frr2gv9lk@google.com$uid$, $title$Gardner-Dickinson Elem/Middle School (2 teams)$title$, $d$2026-05-08$d$::date, $d$2026-05-08$d$::date, $tm$8:15am$tm$, $arr$7:45am$arr$, $sch$Gardner-Dickinson Elementary School/Middle School$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kyle!
kbarber@wynantskillufsd.org
4/23 Kyle confirmed, schedule below and in binders ckg; 4/22/26 emailed Kyle cc AR and EL to confirm ckg
Arrive: 7:45am
Start: 8:15am
Outdoor, push indoors is bad weather per Kyle
310 students grades PK-8
NO GROUP PICTURE
2 teams per steph
Friday May 8th Outside (Near Flagpole)
Time Slot Photographer A Photographer B Volunteer 1 Volunteer 2
8:15 - 8:30 8A (Spanish) 7B (SS)
8:30-8:55 6A 6B
9:00 - 9:20 PreK K
9:20 - 9:40 1M 2C
9:40 - 10:00 7A (Community Connect) 8B (Commmunity Connect)
10:00-10:20 2M ICAN
10:20-10:40 3L 3K
10:40-11:00 5L 5H
11:00-11:20 4H 4G
11:30-11:45 ICAN ICAN$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0cbihvfmi5fenutt0frr2gv9lk@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b13f3352a3f88a90$cid$, $src$google_calendar_import$src$, $uid$5jau9ig9aavtfd07e9p10rldsf@google.com$uid$, $title$Olivia Singer Senior Portraits 9; STEPH$title$, $d$2026-06-01$d$::date, $d$2026-06-01$d$::date, NULL, NULL, $sch$Olivia Singer$sch$, $typ$senior portraits$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5jau9ig9aavtfd07e9p10rldsf@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_0369d2fb6a972473$cid$, $src$google_calendar_import$src$, $uid$3gccsuln229dd7rgjj0jifngg0@google.com$uid$, $title$Smile Lodge Christmas Party 2 PHOTOGS$title$, $d$2025-12-06$d$::date, $d$2025-12-06$d$::date, NULL, $arr$5:30$arr$, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$5:00 arrival to set up
5:30 start with directors and VIP photos
One backdrop setup with lights

6-10 party$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3gccsuln229dd7rgjj0jifngg0@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_29c7e3944a2c2770$cid$, $src$google_calendar_import$src$, $uid$59gvvh6d3aa8ku7nneimsgctbk@google.com$uid$, $title$Wood Road Makeup Day (1 team)$title$, $d$2025-11-05$d$::date, $d$2025-11-05$d$::date, NULL, NULL, $sch$Wood Road$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Gwendolyn Goodbreed (from Gordon Creek) is a MOVE Student who will be photographed this day. We just want it noted she is not a Wood Road student :) -MM 9/30/25 

MaryBeth Leslie, Administrative Aide
mleslie@bscsd.org
518-884-7290 x 3411
10/29/25 schedule from MaryBeth ckg
9:00  - STAFF 
9:15 - 4th Grade and all 12/1 classes (4 absent plus retakes)
9:30 - 5th Grade (3 absent plus retakes)
9:45 - Kindergarten (4 absent plus retakes)
10:00 - 3rd Grade (3 absent, 1 new student plus retakes)
10:15 - 2nd Grade (3 absent plus retakes)
10:30 - 1st Grade (1 absent plus retakes) 
MaryBeth Leslie$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$59gvvh6d3aa8ku7nneimsgctbk@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_28ca9567cd8917ad$cid$, $src$google_calendar_import$src$, $uid$5ltvpe9gpb8un9t8s5f1gcdlqb@google.com$uid$, $title$Erica Ryan Farewell$title$, $d$2026-04-17$d$::date, $d$2026-04-17$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Ryan$a$]::text[], ARRAY[]::text[], false, $info$Hi Stephanie, 
  You had mentioned that you would like to come shoot Erica's farewell assembly at Shatekon when we talked a few weeks ago,  as a gift for her. If you are still interested, we have finally settled on a date, which also happens to be her last day. It will be April 17th at 1:15 in the Shatekon gym . I just wanted to keep you in the loop!
Thanks and hope all is well!
Lisa Kelley
kelllisa@shenschools.org$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5ltvpe9gpb8un9t8s5f1gcdlqb@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f8f9e16375ea9260$cid$, $src$google_calendar_import$src$, $uid$4uhhsfdcnr4pqs2fu8k14g96o9@google.com$uid$, $title$Marketing Seminar Sydney/Steph$title$, $d$2025-07-14$d$::date, $d$2025-07-14$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$Monday, July 14th
7:30 to 9AM
The Suites on 7
814 Troy Schenectady Rd., Latham$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4uhhsfdcnr4pqs2fu8k14g96o9@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_14cb2ca3a706ffb9$cid$, $src$google_calendar_import$src$, $uid$43buhbi2bn78taupu69k1b7t3o@google.com$uid$, $title$Columbia High Senior-Musicians EARLY AM (Steph?)$title$, $d$2026-02-12$d$::date, $d$2026-02-12$d$::date, NULL, NULL, $sch$Columbia High Senior-Musicians EARLY AM$sch$, $typ$senior portraits$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$6;30 am arrival
Justin Maroni, president EG Friend of Music
egfriendsofmusic@gmail.com
Jon Kusche, CHS Music Director
kuschejo@egcsd.org
Pictures during 1st period:  7:00-8:10 am, with set up beforehand.
Indoor, go in "maintenance door" (see below for detailed directions)
36 seniors in the music dept for banners
3x2 vertical at $35 each, Upload to GP for add;l sales. Invoice goes to EG Friends of Music at 
egfriendsofmusic@gmail.com
.
Carrie working on this with music booster club and school.
 The maintenance door has a number 27 on the upper right hand corner.  How to get there? As you enter the HS driveway, turn left at the student lot and drive through it as though you would to drive around the back of the building.  As you come up the first incline in the road you will see a couple of cars parked to the right.  The maintenance door is there (two glass panel doors).  We will meet you there.  This is the basement level of the building.  The elevator is in that doorway and it will take you to the first floor outside the auditorium.  We will be doing the photo shoot in the auditorium.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$43buhbi2bn78taupu69k1b7t3o@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_578e2b6c8f7efd5e$cid$, $src$google_calendar_import$src$, $uid$7khuv5q01vlolsd5tbc85mh0k9@google.com$uid$, $title$Shatekon Elementary (2 teams)$title$, $d$2026-10-14$d$::date, $d$2026-10-14$d$::date, $tm$7:45am$tm$, $arr$7:15am$arr$, $sch$Shatekon Elementary$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Melissa O'Hara, main office admin
oharmeli@shenschools.org
set up: 7:15am
start: 7:45am staff, classes at 8:15am
Indoor 
**Pictures will take place in the ELA room. Room 351***
Individuals of all students and faculty
Collages
Service strips
Full yearbook support, Treering$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7khuv5q01vlolsd5tbc85mh0k9@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d8576a733acbfcee$cid$, $src$google_calendar_import$src$, $uid$6vdadg64chhjvnn5jl8igbs87f@google.com$uid$, $title$HOLD Albany Academy (US Campus) Senior Photos (2 photogs)$title$, $d$2026-08-31$d$::date, $d$2026-09-02$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$HOLD Albany Academy Senior$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Rebecca Trainor
TrainorR@albanyacademies.org
Arrive: 7:30am to start at 8am
Upper School campus (old AA) Indoor/Outdoor IN _____________$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6vdadg64chhjvnn5jl8igbs87f@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_37ff60c2fed1710b$cid$, $src$google_calendar_import$src$, $uid$5fdr8358h5h6r9b0m1d9tnqm87@google.com$uid$, $title$DLL Opening Day (3 Photographers)$title$, $d$2026-05-09$d$::date, $d$2026-05-09$d$::date, $tm$7:45am$tm$, $arr$7:30am$arr$, NULL, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Ryan Smith
coachryan5882@gmail.com
Chris Parslow
duanesburgll@gmail.com
Arrive: 7:30am
Start: 7:45am (schedule below)
Duanesburg Little League Fields
Outdoors
Individuals of Players
Group Team Photos
Photo Balls for Seniors
Sponsor & Coach 8x10 Prints$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5fdr8358h5h6r9b0m1d9tnqm87@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a63b69dbd5035045$cid$, $src$google_calendar_import$src$, $uid$7ehstjk6l3kmkm5uj1qf5un4b0@google.com$uid$, $title$Saint Madeleine and Saint Gabriel Confirmation Group Pic 1;30$title$, $d$2025-11-23$d$::date, $d$2025-11-23$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$One simple group picture

We are getting paid for this!

Hi Stephanie:

We are celebrating the Sacrament of Confirmation at Our Lady Queen of Peace on Sunday, November 23rd at 2:00 pm.

I was hoping you would be available to take a group picture in the gym, like you did last year.

Please let me know if you are available.

Looking forward to your reply,

Donna A. Simone

Our Lady Queen of Peace and St. Margaret's Parishes
Faith Formation High School and Confirmation Coordinator
donnas.ff.olqpsm@gmail.com
518 346-4926 extension 134$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7ehstjk6l3kmkm5uj1qf5un4b0@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_02df3915096c5188$cid$, $src$google_calendar_import$src$, $uid$2tsm4ldtu8ap3r40cr1518shab@google.com$uid$, $title$TSL UPK East Greenbush (1 photog)$title$, $d$2025-06-05$d$::date, $d$2025-06-05$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$TSL UPK East Greenbush$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Abby Bowes, director
miss.abby.tsl@gmail.com
(518) 650-5524

5/20/25 confirmed timing with Abby. Using F24 roster, with 2 added and 1 deleted student. ckg
Arrive: 8:30am
Start:9am
Go to LEFT door and ring bell labeled TSL. 

Outdoor, pushing inside with a spring background if bad weather
18-20  students  (affiliated with the East Greenbush school district!)
No staff or collages in spring

no commission$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2tsm4ldtu8ap3r40cr1518shab@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3710319d2d90366c$cid$, $src$google_calendar_import$src$, $uid$73nvosv83n2tf8ks25eur101cq@google.com$uid$, $title$Keane Elem Makeups (1 team)$title$, $d$2025-12-11$d$::date, $d$2025-12-11$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Keane Elementary School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$11/17/25 moved from 11/21 to 12/2 at school's request ckg
NICOLE MASTRIANNI, ASST PRINCIPAL
mastriannin@schenectadyschools.org
Christine Mahadeo, BLDG SECRETARY
mahadeoc@schenectadyschools.org
12/1 confirmed, and scheduled for TWO photogs...ugh ckg
Setup: 8:30am
Start: 9am per Karen on 9/9/25
12/4 Christine approved below schedule; 12/3 moved date due to snow day to 12/11 and suggested this schedule ckg:
8:30am arrival to set up
9:00am PK and K classes
9:20am 1st and 2nd grades
9:40am 3rd and 4th grades
10:00am 5th grade and latecomers
10:20am pack up our equipment
approx 300 students
Indoor
Individuals of students and faculty
Collages
District needs attendance files$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$73nvosv83n2tf8ks25eur101cq@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2bdd0217bfd06a3a$cid$, $src$google_calendar_import$src$, $uid$19ce6ceku24tlkte57so694rq1@google.com$uid$, $title$Waterford-Halfmoon MS/HS Makeups (1 team)$title$, $d$2026-11-13$d$::date, $d$2026-11-13$d$::date, NULL, NULL, $sch$Waterford-Halfmoon Middle School/High School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kayla Ramundo, main contact for pictures and yearbook
kraymundo@whufsd.org

Arrive: 
Start:$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$19ce6ceku24tlkte57so694rq1@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_199033894e6503b2$cid$, $src$google_calendar_import$src$, $uid$1jk37vp2l7g8c5321qm5bnav15@google.com$uid$, $title$Retake: Jiaxin [Ripple] Lian '26 (AA) 3pm$title$, $d$2025-09-10$d$::date, $d$2025-09-10$d$::date, NULL, NULL, NULL, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1jk37vp2l7g8c5321qm5bnav15@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_113c88f6832eed14$cid$, $src$google_calendar_import$src$, $uid$3he1mvtajsd6sjp09pdgevdml0@google.com$uid$, $title$Latham Christian Academy First Day & Stock (BETH)$title$, $d$2025-09-03$d$::date, $d$2025-09-03$d$::date, NULL, $arr$7:30am$arr$, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Sarah Kettlewood, principal
skettlewood@lcany.org
Arrive: 7:30am to capture kids arriving between 7:30-8:15am (emailed Sarah asking what time students arrive so we can be there beforehand to take stocks and then photograph kids coming off buses and being greeted by teachers ckg)
First day of school shots and stock shots
We took stock shots back in Nov 2023, but lost them. School has new website and is with Treering, and was hoping to use these shots, but since we couldn't find them, I offered us to do them on the first day of school when classrooms are neat and clean, and the outdoors is freshly manicured.
Beth Picciano
10:11 AM (6 hours ago)
to skettlewood, me, Matthew
Good morning Sarah!
I am reaching out today to confirm the details for LCA's upcoming first day and stock photos on Wednesday, September 3rd. My name is Beth and I will be your photographer for the morning. 
Our notes have us arriving at 7:30 to capture first day arrivals, as well as getting some photographs of the building, classrooms, and grounds. Does this work for you? Is there a specific place you would like me to park when I arrive? 
Best,
Beth
-- 
Beth Picciano
Photographer
www.ismilestudios.com
Share your great experience on Google!

Sarah Kettlewood
4:31 PM (2 minutes ago)
to Beth, me, Matthew
Hello,
Thank you so much for reaching out! We are looking forward to having you. We are all set for Wednesday Sept 3rd.
Our staff park on the edge closest to the field edge of the parking lot. That would be the best place to park. Our door doesn't unlock until 7:30am. But I will try to be out there to meet you. I usually get in around 7:00am. If you want pictures of the rooms empty they will be empty between 7:30am-8:00am then the students start to go to the classrooms and many more arrive.
Please let me know if you have any questions or if there is anything else I can accommodate. You are welcome to grab coffee in our kitchen that morning as well.
Sarah Kettlewood
7/9/2025 1:18 PM (5 minutes ago)
to me
Hello Carrie,
I apologize for the delayed response. Kids can be dropped off as early as 7:30am. Buses usually come around 7:45-8:15am. The day officially starts at 8:20am.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3he1mvtajsd6sjp09pdgevdml0@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_467adea7965581f9$cid$, $src$google_calendar_import$src$, $uid$598qskmee274017e9amugisaou@google.com$uid$, $title$Arongen Elementary (2 teams)$title$, $d$2025-10-01$d$::date, $d$2025-10-01$d$::date, NULL, $arr$7:15am$arr$, $sch$Arongen Elementary$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mallory Detzel, NEW PTO Contact as of 25-26
detzel101312@gmail.com
Cindi Breen, main office admin
breecind@shenschools.org
9/19 nudged; 9/12 emailed Mallory & Cindi to confirm timing ckg
setup 7:15am, start staff photos at 7:45-8:05am, students at 8:05am, classes every 20 minutes
**NOTE: PTA routinely asks about reducing # of poses to go faster.**
Indoor
Individuals of all students and faculty
All service items
Collages
Full yearbook support - Treering$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$598qskmee274017e9amugisaou@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3cfbb253e2b8409d$cid$, $src$google_calendar_import$src$, $uid$67mtegjl3fqvdgng7rkl6dsrim@google.com$uid$, $title$Cairo-Durham Elementary 1 Team PK-Gr 2 (1 team)$title$, $d$2025-09-15$d$::date, $d$2025-09-15$d$::date, NULL, $arr$8:00am$arr$, $sch$Cairo-Durham Elementary Team PK-Gr$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Joanne Cleary, main office admin
jcleary@cairodurham.org
NEED A PHOTO ID WHEN ARRIVING TO SCHOOL
Set-up: 8am
Staff: 8:30am-9am
Start students at 9:15am
Individuals of all students and faculty/staff
INDOOR in small gym, check in with Joanne at the main office 
Class COLLAGES with PRINCIPAL, ASST PRINCIPAL, TEACHER(S) & TA(S)
Sticker strips
Attendance files (SchoolTool)
Yearbook support
NO ID cards for Elementary School
Joanne Cleary
8:05 AM (1 hour ago)
to Molly, margaretmwalsh1996, me, Matthew
Good morning Molly,
Unfortunately, we are going through an unexpected construction project and we are limited in space. Pictures will be in our small gym and we will be combining our Gym classes those days. Having said that, there are after school programs as well as night use of the gym. So sorry, I know it's not ideal. I will remind the teachers how to line up their students for you and will share the schedule as soon as I finish it. Tal soon$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$67mtegjl3fqvdgng7rkl6dsrim@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_53665e91a6531afa$cid$, $src$google_calendar_import$src$, $uid$1kj50hlroed2jg34mnvakkrmch@google.com$uid$, $title$NY Farm Bureau State Meeting - Turning Stone Photo Booth$title$, $d$2025-12-03$d$::date, $d$2025-12-03$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$9 hours at Turning Stone  $800 including set up.   Steph working on this with Paula Rohl via Honeybook.  
Yep, that works for us! You’ll be set up in the ‘Expo’ which will be in the Turning Stone Event Center.

Notes (unsure if you are familiar with TS):
Parking at Turning Stone is free – both the garage & valet – 3
rd
 floor of the garage is the same level as our event. If you can’t park on 3 – then you can take the elevators to the 3
rd
 floor. We will have signage directing folks to the event/Atrium area
The Expo will be in the Event Center – where they hold concerts, etc.
There is free coffee/soda in the casino – soda fountain & coffee bar
There is also a Starbucks ($) at the bakery – which is by the food court
We also will have a “Hospitality” booth – with food donated from our members – please help yourself! All kinds of flavored milks, yogurts, chips, snacks, jerky, cheese curds, etc. and open all day
Lunch is a buffet – please help yourself to that as well.

I’ll try & remind you of this as we get closer but if not, here it is!
Hi! 

Here are my initial thoughts - certainly subject to your opinion and changes are fine!

Headshots usually start off busy and wind down as it gets later in the day, mostly because people get tired and don’t want to be photographed when they don’t feel their best.

Maybe we could do 9:00 am start (I would be setting up at 8:30) as the keynote is finishing, and wrap up around 2:30 (after the 2:00 break)?

Happy to modify if you think we need different timing!    (I can do about 30 people per hour, I don’t know how many attendees you will have … usually about 20-25 percent do headshots unless it’s mandatory lol)

Sincerely,
Paula
Full name: 
Paula Rohl
Email: 
prohl@nyfb.org
Phone number: 
518-431-5613$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1kj50hlroed2jg34mnvakkrmch@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_5bca4801c67a3e37$cid$, $src$google_calendar_import$src$, $uid$1udgbn6n948p9ruu641rvntscs@google.com$uid$, $title$Our Lady Queen of Peace Nursery School (1 team)$title$, $d$2026-03-19$d$::date, $d$2026-03-20$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Our Lady Queen of Peace Nursery School$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Debra Male, director
dmale5@msn.com
518-346-4926 ext 201
Has students TTH and MWF.
Ages 3-4
Indoor on blue
16 students on TTH, 19 on MWF
Collages
2/10 confirmed; 2/9/26 emailed Deb to confirm ckg
Arrive: 8:30am
Start: 9am
Parking:
you will drive around to the side of the building and you will see a door near the back.  On the right there is a pink sign that says "Nursery School Doorbell."  Just ring that and we will unlock the door for you.  You may park anywhere on the side of the building.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1udgbn6n948p9ruu641rvntscs@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7865b84e8501f40b$cid$, $src$google_calendar_import$src$, $uid$61n8b021bnqcu5geok3iu6unje@google.com$uid$, $title$June Scheduling Call$title$, $d$2026-05-15$d$::date, $d$2026-05-15$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$meet.google.com/ehb-owxx-kw$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$61n8b021bnqcu5geok3iu6unje@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_cec10e3ed55e7663$cid$, $src$google_calendar_import$src$, $uid$1duvelpqtar2ssfc8amm8ftghe@google.com$uid$, $title$Loudonville Christian Spring Photos (PK-5) (1 team)$title$, $d$2027-05-13$d$::date, $d$2027-05-13$d$::date, $tm$8:45am$tm$, $arr$8:15$arr$, $sch$Loudonville Christian Spring$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Bonnie Strock
bstrock@lcs.org
OUTDOORS, move indoors if bad weather per Bonnie ckg
Set-up: 8:15, to start at 8:45am$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1duvelpqtar2ssfc8amm8ftghe@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_dcb42069bba1e549$cid$, $src$google_calendar_import$src$, $uid$7ujsq2q8in04rijfa9cschaq3m@google.com$uid$, $title$Duanesburg Graduation (1 photog)$title$, $d$2025-06-26$d$::date, $d$2025-06-26$d$::date, NULL, $arr$6:00$arr$, $sch$Duanesburg Graduation$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$3:15 arrival 
6/6/25 contacts for this event ckg
Laura Hopkins 
lhopkins@duanesburg.org
Kristina Crane 
kcrane@duanesburg.org
Trisha, communications director
communications@duanesburg.org
PLEASE EMAIL CAYLA and Trisha LINK TO DOWNLOAD IMAGES WITHIN 24 HRS AFTER GRADUATION
starts at 4:30 p.m. in Joe Bena Hall
Set us as in past years 
(free event for school)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7ujsq2q8in04rijfa9cschaq3m@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_0f52250238f2e88b$cid$, $src$google_calendar_import$src$, $uid$22jsb3jk2meighfnb4q3pomv08@google.com$uid$, $title$HOLD Cohoes High School Seniors (2 photogs)$title$, $d$2026-08-10$d$::date, $d$2026-08-14$d$::date, NULL, NULL, $sch$HOLD Cohoes High School$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Caryn Dollard
cdollard@cohoes.org

85-ish Seniors
Indoors (may be in the middle school due to high school contruction) in Tux & Cohoes Blue cap/gown 
Outdoors (not sure where) in Cap/gown and/or casual
Ask office to make sure front door is unlocked at school while appointments are happening$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$22jsb3jk2meighfnb4q3pomv08@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3e668df55980a576$cid$, $src$google_calendar_import$src$, $uid$2g88u0rnn8qhvfftapprvo700q@google.com$uid$, $title$HOLD Karigon PANO RAIN DATE (1 photog)$title$, $d$2027-05-10$d$::date, $d$2027-05-10$d$::date, NULL, NULL, $sch$HOLD Karigon$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Nupoor Gordon, main office admin
gordnupo@shenschools.org

Need to turn around FAST for yearbook deadline$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2g88u0rnn8qhvfftapprvo700q@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_51baaeea537c84cc$cid$, $src$google_calendar_import$src$, $uid$4714vlrg0dcf2dh0l48u99smoa@google.com$uid$, $title$Pieter B Coeymans Dance PHOTOBOOTH (1:30pm drop off)$title$, $d$2026-01-31$d$::date, $d$2026-01-31$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$DONATION

4:30-7:30

From: 
PTO Unknown

Date: Mon, Aug 18, 2025 at 2:01 PM
Subject: Photo Booth January 31st 2026
To: 
Cc: Kathryn Blenis 
Hi Matt,
I hope this email finds you well. The PTO board at Pieter B Coeymans Elementary has been busy this summer planning events and fundraisers for the upcoming school year.  We are reaching out to see if Ismile would be willing to donate a Photo Booth for our winter ball event on January 31st, 2026 at RCS HS in Ravena, NY 4:30pm - 7:30pm. The kids really loved it last year! 
Regards,
Kathy 
Pieter B. Coeymans PTO
Executive Board
Kristina Atanasio - President 
Kathy Blenis - Vice President 
Lina Greenfield - Treasurer 
Andrea Salhoff - Secretary
-- 
Matt Minardi
iSmile Studios
84 Everett Road$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4714vlrg0dcf2dh0l48u99smoa@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7019f65cf718ddb5$cid$, $src$google_calendar_import$src$, $uid$259ikju4s50na8imgsr3evdhqa@google.com$uid$, $title$Chango Makeup Day (1 Team)$title$, $d$2025-11-06$d$::date, $d$2025-11-06$d$::date, $tm$10:30am$tm$, $arr$10:00am$arr$, NULL, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Emily Carter
mily.carter4191@gmail.com
Sandy Hess, main office
hesssand@shenschools.org
11/4/25 Sandy may be chagning timing to arrive at 10am to start at 10:30am; 10/29/25 Emily changed timing; 10/20/25 timing confirmed ckg
Arrive: 10:30am
Start 11am, end at 1pm to get the K PM classes
Emily won't be at Makeup Day, so we need to work with Sandy in the main office.
Hess, Sandra
11-4-25 1:34 PM (13 minutes ago)
to Beth, Emily, me, Matthew
Beth, 
All those times, the kids are out to lunch recess. Here is a revised schedule avoiding that, if this works for you:
10:15-  Set up
10:45-  Grade 2
11:00-  AM K
11:15- 3rd
11:30 - 4th 
11:45- 5th 
12:00-  1st
12:15- Late comers/ staff
12:50 PM K$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$259ikju4s50na8imgsr3evdhqa@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_93a16f40e1796c79$cid$, $src$google_calendar_import$src$, $uid$7639lat4knumrm261fvc0k91tk@google.com$uid$, $title$POSTPONED: Clifton KinderCare (1 team)$title$, $d$2025-12-11$d$::date, $d$2025-12-12$d$::date, $tm$8:00a$tm$, $arr$7:30a$arr$, $sch$POSTPONED Clifton KinderCare$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Tiffany Pariag, assistant director, new
nandani.pariag@kindercare.com

First time doing winter pics. They've done spring in the past, and now have added winter.

12/8 confirmed via phone; 12/4; 12/1 emailed to confirm timing and background ckg
Arrive: 7:30a
Start: 8a

Indoor in gym - winter backdrop YES
Need two days for MWF and TTh students
Individuals of all students and teachers, also siblings
Collages - WAITING UNTIL SPRING 2026

NOTES from 12/8/25 call: Thank you for confirming the times and background. I'll let your photographer, Beth know that the plan is to photograph infants and toddlers on Day 1, and prek and teachers on Day 2. She'll photograph siblings on both days. We'll also push your class pictures to the spring so you can get through the transition of classes and new leadership.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7639lat4knumrm261fvc0k91tk@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_5037372d327e8eb9$cid$, $src$google_calendar_import$src$, $uid$7vne4uefoatcok23a1j1l69s4c@google.com$uid$, $title$Maple Leaf - MALTA SOUTH (2 teams)$title$, $d$2026-05-07$d$::date, $d$2026-05-07$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Maple Leaf - MALTA SOUTH$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Amanda, Center Director (new)
malta@mapleleafchildcare.com
Maple Leaf Childcare Center, Inc.
10 Hemphill Place 
Malta, NY 12020
518-899-4159 (p)
518-899-6931 (f)
4/27 confirmed by Amanda ckg; 4/23/26 emailed Amanda to confirm ckg
Arrive: 8:30am
Start: 9am
Indoor with spring backdrop
Individuals of students and NEW faculty
TOLD THEM NO CLASS PICS AS WE DID THEM IN THE FALL$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7vne4uefoatcok23a1j1l69s4c@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_dd589fb62c32e4e7$cid$, $src$google_calendar_import$src$, $uid$0lvlf1cn424vd6gs63nmhsder7@google.com$uid$, $title$Jacqueline CHA Headshot 2;00 STEPH$title$, $d$2025-08-19$d$::date, $d$2025-08-19$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0lvlf1cn424vd6gs63nmhsder7@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_45a8a3f674342302$cid$, $src$google_calendar_import$src$, $uid$36c13e08g3l35a48u124ko853r@google.com$uid$, $title$Milton Terrace Elementary (2 teams)$title$, $d$2025-10-07$d$::date, $d$2025-10-07$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Milton Terrace Elementary$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Sarah Kinney, main office admin
skinney@bscsd.org
9/22 emailed Sarah to confirm ckg
Setup: 8am
Start: 8:30am, staff first, then students starting at 9am
Indoor
450 students + faculty/staff
all the usual fall service items
Collages
Treering Yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$36c13e08g3l35a48u124ko853r@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_eb5f0cde4e4b4ebd$cid$, $src$google_calendar_import$src$, $uid$247h7lbltgs5qq62cmtlhepe52@google.com$uid$, $title$Colonie Community Daycare Center (1 team)$title$, $d$2026-05-11$d$::date, $d$2026-05-11$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Colonie Community Daycare Center$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Carol Grasso, director
cgrasso9@yahoo.com
grassocarol8@gmail.com
 (use both emails, she dances between the two)
School: 518-869-0131
Diana Kuentzel
diana.kuentzel@aol.com
5/4/26 confirmed ckg; 4/27/26 emailed Carol cc Erin & Molly ckg
701 Sand Creek Road, in the Community Reformed Church
Setup: 8:30am
Start: 9am (should only go until 10:30am or so)
Outdoors, rain date of May 12
36 students
GROUP class photos$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$247h7lbltgs5qq62cmtlhepe52@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3552adbf32082004$cid$, $src$google_calendar_import$src$, $uid$4lqve6rpsdqhlpdg4j2pfioloa@google.com$uid$, $title$Waterford-Halfmoon Elementary (2 teams)$title$, $d$2025-09-18$d$::date, $d$2025-09-18$d$::date, $tm$8:45am$tm$, NULL, $sch$Waterford-Halfmoon Elementary$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jessica Rice, new PTA President
waterfordhalfmoonpto@gmail.com
8:15am set-up to start at 8:45am
Check in main office upon arrival with photo ID; need masks
415+ students
Indoor, multipurpose room
Collages, work with Annemarie Strife, yearbook editor on these (
astrife@whufsd.org
)
All faculty for yearbook
All service items
Full yearbook support$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4lqve6rpsdqhlpdg4j2pfioloa@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_17e86c565ddb7472$cid$, $src$google_calendar_import$src$, $uid$0v8qed93p6appvlh7ja0ui8g6f@google.com$uid$, $title$A Night to Shine PHOTOBOOTH$title$, $d$2026-02-13$d$::date, $d$2026-02-13$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Donation for prom - contact Chuck Aiken (steph text thread)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0v8qed93p6appvlh7ja0ui8g6f@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_cfbb01d2fe304369$cid$, $src$google_calendar_import$src$, $uid$1nrlibibu3be0anojs6i06vq9e@google.com$uid$, $title$Arbor Hill Elem Makeup Day (1 team)$title$, $d$2025-11-14$d$::date, $d$2025-11-14$d$::date, $tm$10:00am$tm$, $arr$9:30am$arr$, $sch$Arbor Hill Elementary School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Tiffany Jones-Johnson, office manager 
tjones-johnson@albany.k12.ny.us
Setup: 9:30am
Start: 10am, see below
check-in main office first, with photo id
Indoor
Individuals of all students and teachers
Collages
Attendance, yearbook files and service strips needed
Principal's book needed
5th grade Grad folders using fall images
No faculty IDs$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1nrlibibu3be0anojs6i06vq9e@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7483bfd34bff1458$cid$, $src$google_calendar_import$src$, $uid$0e63h0ejrcqj3f3jeh8n5qejme@google.com$uid$, $title$Jefferson Elementary MAKEUPS (1 team)$title$, $d$2025-11-07$d$::date, $d$2025-11-07$d$::date, $tm$9:15am$tm$, $arr$8:30$arr$, $sch$Jefferson Elementary$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$8:00 set up
8:30 start9:15 AM K9:30 1st9:45 3rd10:00 4th10:15 2nd10:30 Latecomers and faculty10:45 PM K
Main Office Admin
Denise Smith
dsmith@schalmont.net
PTA
Corrie Hoffman
corrieh06@gmail.com
NEW FALL 2024
700 STUDENTS K-4
Faculty too
10/27/25 proposed this schedule: 8:00 set up8:30 start
9:15 AM K
9:30 1st
9:45 3rd
10:00 4th
10:15 2nd
10:30 Latecomers and faculty
10:45 PM K$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0e63h0ejrcqj3f3jeh8n5qejme@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_455cedd8b53cfa56$cid$, $src$google_calendar_import$src$, $uid$1chgkns83bgrlrm0eafi3e62f3@google.com$uid$, $title$HOLD - Photo booth Saratoga$title$, $d$2026-06-10$d$::date, $d$2026-06-10$d$::date, NULL, NULL, NULL, $typ$photo booth$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1chgkns83bgrlrm0eafi3e62f3@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4cf7464e63c5534e$cid$, $src$google_calendar_import$src$, $uid$7ka5orkbnu3d6m0tb4dcp352as@google.com$uid$, $title$Santa Nick booked$title$, $d$2025-12-17$d$::date, $d$2025-12-17$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7ka5orkbnu3d6m0tb4dcp352as@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f9ebd120687833ca$cid$, $src$google_calendar_import$src$, $uid$699rodvko0drcqihb5jigek0rf@google.com$uid$, $title$Duanesburg Fall Sports (1 team)$title$, $d$2025-09-08$d$::date, $d$2025-09-08$d$::date, $tm$2:50pm$tm$, $arr$2:20pm$arr$, $sch$Duanesburg$sch$, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kelsey Flaherty, athletic admin
kflaherty@duanesburg.org
Brett Simpson, AD
bsimpson@duanesburg.org
Fall sports photos for mod, JV and varsity after school.
9/3/25 and 8/5/25 TIMES CONFIRMED WITH KELSEY ckg
Arrive: 2:20pm
Start: 2:50pm (schedule below)
Indoor in GYM
Individuals of players
group team photos for yearbook!
2025 Fall Photo Schedule
Team
Picture Time
Event
Golf
2:50
Away match (3pm bus)
Football
3:00
Shuttle (320 shuttle)
Mod Girls Soccer
3:05
Shuttle (320 shuttle)
JV Girls Soccer
3:10
Shuttle (320 shuttle)
Var Girls Soccer/Club Cheer
3:15
Shuttle (320 shuttle)
Mod Girls Volleyball
3:20
Elementary Shuttle (345 Shuttle over)
JV Girls Volleyball
3:30
Practice
Mod Boys Soccer
3:40
Practice
JV Boys Soccer
3:50
Practice
Var Boys Soccer 
4:00
Practice
X Country
4:10
Practice
Var Volleyball
4:20
Practice$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$699rodvko0drcqihb5jigek0rf@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b3be679525209c9f$cid$, $src$google_calendar_import$src$, $uid$1neekg8khv4nl1eq6nvi4q4304@google.com$uid$, $title$PHOTO BOOTH Shaker Ridge Luncheon$title$, $d$2025-12-06$d$::date, $d$2025-12-06$d$::date, NULL, NULL, NULL, $typ$photo booth$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$10-2, contact Andrea Hanley Marathakis$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1neekg8khv4nl1eq6nvi4q4304@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a8835e60f597cd3e$cid$, $src$google_calendar_import$src$, $uid$4sn6ns3g9c3cssvl5uivmlb2q4@google.com$uid$, $title$Lawton Social Branding STEPH$title$, $d$2026-04-08$d$::date, $d$2026-04-08$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$erin@lawtonsocial.com

Hi Steph,

We are hoping to finalize a time for our brand photos on Wednesday, 4/8. Could you do 2-4pm at Hone Coworks on Wolf Rd?

Let us know, thanks!

Erin$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4sn6ns3g9c3cssvl5uivmlb2q4@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b9da39547732244f$cid$, $src$google_calendar_import$src$, $uid$008d0c3qbajgb2ko1jq59qn6ma@google.com$uid$, $title$TSL Bethlehem UPK & Grads (1 photog)$title$, $d$2026-04-29$d$::date, $d$2026-04-29$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, $sch$TSL Bethlehem UPK & Grads$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Debbie Styles
dks1198@yahoo.com

339 Delaware Avenue
Delmar, NY 12054

4/13/26 emailed Debbie cc Beth to confirm ckg
Arrive: 9am
Start: 9:30am

60 Students
Outdoor, pushing inside with spring background if bad weather
Grads - bring our little caps & gowns in BLACK with ORANGE stoles (look at S25 GP images)
No collages or staff photos in spring

no commission$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$008d0c3qbajgb2ko1jq59qn6ma@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_32cacf80df8daba3$cid$, $src$google_calendar_import$src$, $uid$1980A07B-79DB-4089-AC14-358EC979C898$uid$, $title$Shaker Ridge member guest Steph$title$, $d$2025-07-17$d$::date, $d$2025-07-17$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1980A07B-79DB-4089-AC14-358EC979C898$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_925d901edd16091c$cid$, $src$google_calendar_import$src$, $uid$2obuvphmbun2lcr023vk4femr5@google.com$uid$, $title$Cairo-Durham Winter Sports (1 team)$title$, $d$2025-12-15$d$::date, $d$2025-12-15$d$::date, $tm$2:30pm$tm$, $arr$2:00p$arr$, $sch$Cairo-Durham$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$12/1/25 rescheduled per Greg H. ckg
Greg Hagan, Athletic Director
ghagan@cairodurham.org
cell: 518-598-3490
Set up at 2:00p, start at 2:30pm ? Need to confirm in early Dec
Team photos
Individual photos
NEED SENIOR BANNERS! 
Winter Sports Pictures will be taking place on Monday, December 15th, after school, in the Media Center. Please show up early and make sure that everyone is wearing matching uniforms for the pictures. 
Picture Schedule
Boys Varsity Basketball - 2:00
Boys Modified Basketball - 2:20
Girls Modified Basketball - 2:30
Girls JV Basketball - 2:40
Indoor Track and Field - 2:50
Bowling - 3:00
Boys JV Basketball - 3:10
Boys Modified Volleyball - 3:20
Boys Varsity Volleyball - 3:30
Wrestling - 3:40 
Cheer - 4:00$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2obuvphmbun2lcr023vk4femr5@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a5215d79079a3b68$cid$, $src$google_calendar_import$src$, $uid$1m6ujsgfo57oi6q21evkg2amp3@google.com$uid$, $title$Photo Booth - Siena PM$title$, $d$2025-12-07$d$::date, $d$2025-12-07$d$::date, NULL, NULL, NULL, $typ$photo booth$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$I also wanted to reach out to see if we could use the photo booth again for two upcoming events. We are hoping to use it for Christmas at Siena, which will be held on 
Sunday, December 7
, from 5:00 p.m. - 7:30 p.m
STEPH CAN BRING THE MORNING OF THE EVENT AND PICK UP THE NEXT DAY$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1m6ujsgfo57oi6q21evkg2amp3@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c703e780f32596e2$cid$, $src$google_calendar_import$src$, $uid$7hhkn406b88mi7p6nhijh9js0r@google.com$uid$, $title$Photo Booth Rudy's VR (near studio)$title$, $d$2025-12-12$d$::date, $d$2025-12-12$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Just a drop off and pick up, 530 drop, 10pm pick up - whoever does this gets $100!  THANK YOU

Dodie Motley contact$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7hhkn406b88mi7p6nhijh9js0r@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_34872a385cd55582$cid$, $src$google_calendar_import$src$, $uid$2lnsjvv9t6p6a1jm1t4epf6e9r@google.com$uid$, $title$HOLD Arongen Spring Pics & 5th Grade Pano (2 teams)$title$, $d$2027-04-21$d$::date, $d$2027-04-21$d$::date, $tm$8:05am$tm$, $arr$7:35am$arr$, $sch$HOLD Arongen &$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mallory Detzal, PTO pic day contact
detzel101312@gmail.com
Cindi Breen, main office admin (does schedule)
breecind@shenschools.org
NO ADD'L PARENT VOLUNTEERS BEYOND MALLORY AND 1 OTHER, PER MR. HILLS
Outdoor Photos - push indoors if bad weather
All students
PANO INDOORS IN GYM ON BLEACHERS ON THIS DAY! Rain or shine
Setup: 7:35am
Start: 8:05am NEW STAFF ONLY (kept it to 10 min purposely), 8:15am STUDENTS
PANO DETAILS: 8x24 pano, 1 free to each 5th grader and teachers, 1 free framed for school. Carrie will handle when image is ready. Also goes into their yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2lnsjvv9t6p6a1jm1t4epf6e9r@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_dd7e8df77471ecf4$cid$, $src$google_calendar_import$src$, $uid$5939h99srth39i9k0v50qqr9pm@google.com$uid$, $title$Okte RAIN Spring Pics & 5th grade pano (2 teams)$title$, $d$2026-04-27$d$::date, $d$2026-04-27$d$::date, NULL, NULL, $sch$Okte RAIN &$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Colleen Awa
colleen.awa@gmail.com

see info on original spring pic date$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5939h99srth39i9k0v50qqr9pm@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_674373c01cea4012$cid$, $src$google_calendar_import$src$, $uid$3npjan2rjq4aqikvfj6jlturna@google.com$uid$, $title$Union Seniors$title$, $d$2026-05-18$d$::date, $d$2026-05-22$d$::date, NULL, NULL, $sch$Union$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3npjan2rjq4aqikvfj6jlturna@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_796ec4daf69f9b28$cid$, $src$google_calendar_import$src$, $uid$19ecqmq02l17t9tsdscl8d2ah8@google.com$uid$, $title$Shaker Seniors 1 photog plus assistant if possible$title$, $d$2026-04-24$d$::date, $d$2026-04-24$d$::date, NULL, NULL, $sch$Shaker photog assistant if possible$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$19ecqmq02l17t9tsdscl8d2ah8@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_77d1bf959ef45e0d$cid$, $src$google_calendar_import$src$, $uid$AD616A04-06DA-4244-B174-003D37317E41$uid$, $title$Rotterdam Softball NEW 2 teams plus one team photographer$title$, $d$2026-04-25$d$::date, $d$2026-04-25$d$::date, NULL, NULL, NULL, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$ADDRESS OF FIELD 1160 Fayette Dr, Schenectady, NY 12303
On Site Contact for Pic Day: Mike Vrana 518-364-0666, Mrv06131@gmail.com
Kelli Rushia 
kelli.rushia@gmail.com
+1 518-698-9363
4/13/26 SCHEDULE AT END OF EVENT BELOW ckg
Hi Stephanie,
We’d love to move forward and officially book you guys for 4/25. 
We have done a mix of indoor and outdoor photos in the past depending on the weather. I love the idea of using the dugouts as well. We can talk details as it gets closer. 
We will let you know how many teams once registration closes. 
I also have a form you can fill out for sponsorship information and we will send over more details in the coming weeks.  
https://rotterdamgirlssoftballleagueinc.sportngin.com/register/form/230205344
Thanks again!
Kelli 
On Feb 10, 2026, at 6:45 AM, Kelli Rushia <
Kelli.Rushia@gmail.com
> wrote:
I’m Stephanie from iSmile Studios and I am so excited to receive your request!!!
We would absolutely LOVE to work with your league, and I have tentatively reserved your date (April 25) so it’s safe while we work out all the particulars.  No obligation or pressure.
I am not sure how familiar you are with our program … so I will give you some initial information but please let me know if you have any specific questions!
We offer a seamless, well run picture day, photographing all your individual players and teams.  We take several poses of each player so parents have choices, and we love to do a couple different team photos too (time permitting).  There is no pre-ordering sight unseen - instead, we create a gallery for each player with a unique access code and parents receive a link via email for their daughter.
You guys can pick from natural light images (we love shooting in dug-outs and that works even in the rain) or we can do something indoors with studio lighting if you prefer that.    We can work together to come up with a schedule based on how many teams you have and how many teams of photographers we will bring, so no team has to wait around too long on Opening Day.  
We can help you with team/sponsorship banners too, either in the design of them or the printing of them (when you work with us we print those banners at cost and it will save you TONS).
If it isn’t too late, we would also love to sponsor a team!
I am happy to hop on a google meet to walk you through our process and answer any questions or strategize the perfect solutions for your league!    I have a hectic day tomorrow and Wednesday but Thursday and Friday are more open if you have time.
Thank you so much for this opportunity!
Sincerely,
Steph
Submission summary:
First & Last Name:
Kelli Rushia 
Email:
kelli.rushia@gmail.com

Phone:
+1 518-698-9363 
Opening Day Schedule
Saturday, April 25, 2026
PICTURES
- start at 8am, look for photographers set up in/near dugout 

8:00    6U Rotterdam Eagles
   6U JCR Welding & Fabrication
8:15    6U Towne TV
   6U Blue Flame Bar & Grill
8:30    6U Parkside Pressure Washing
   6U RMB Heating & Cooling
8:45    8U Val’s Angels
   8U Rotterdam Eagles
9:00    8U Revolutionary Financial Planning
   8U Guerin Generators
9:15    8U Litz & Litz
   8U iSmile Studios
9:30       10U Rotterdam Elks Lodge No 2157
   10U Rotterdam Eagles
9:45    10U Fenimore Asset Management
   12U/14U South Schenectady Fire Department
10:00    12U/14U Next Step Federal Credit Union
   12U/14U Prime Beauty Esthetics
10:15   12U/14U 1st National Bank of Scotia
   12U/14U Rotterdam Eagles
10:30
-Line up for parade in St. Gabriel’s parking lot with your team (find sign w/ team name)  
11:00
- Parade, followed immediately by ceremony on Field 1
12:00 
(or after ceremony)- Mini games for 6U and 8U players on T-ball Field
12:40 - 
Raffle basket and 50/50 Drawing 
1:00
Games by division on each field  (followed by travel games throughout the afternoon)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$AD616A04-06DA-4244-B174-003D37317E41$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_463fa374b818d107$cid$, $src$google_calendar_import$src$, $uid$6a0lvdfboa28onul145a41eht7@google.com$uid$, $title$Gordon Creek Elem Makeups (1 team)$title$, $d$2025-11-13$d$::date, $d$2025-11-13$d$::date, NULL, $arr$8:30$arr$, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Katie Bennice
Administrative Assistant
Gordon Creek Elementary School
(518) 884-7270 ext.3368
kbennice@bscsd.org
Indoor
Shoot staff off laptops, some blank QRs in binder
11/4/25 Katie confirmed this schedule ckg:
8:00  Arrival and set up
8:30  Staff
9:15 5th 
9:30  K
9:45  1
9:55  2
10:05  3
10:15  4 & MOVE
10:30  last call$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6a0lvdfboa28onul145a41eht7@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_884c571228e8089f$cid$, $src$google_calendar_import$src$, $uid$3i6s24lp36e2dcra5vuirguhfq@google.com$uid$, $title$AA Commencement$title$, $d$2025-06-10$d$::date, $d$2025-06-10$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3i6s24lp36e2dcra5vuirguhfq@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2645724286de99eb$cid$, $src$google_calendar_import$src$, $uid$30lptir12kjr6mua623uch9jfi@google.com$uid$, $title$HOLD Craig Elementary 4th & 5th Grade Panos RAIN (1 photog)$title$, $d$2027-05-18$d$::date, $d$2027-05-18$d$::date, $tm$10:00am$tm$, $arr$9:45am$arr$, $sch$HOLD Craig Elementary 4th & 5th Grade Panos RAIN$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Shawna, PTO (main contact)

craigniskypto@gmail.com

Amy Wickham 
awickham23@gmail.com

Erin Perry 
ebeland20@gmail.com

Arrive:  9:45am
Start:  10am (start of their recess)

BOTH 4th and 5th grade need panos this year as district is moving 4th graders up to middle school too. ckg

Upload to GP to sell (like we do for Skano, same price list too) ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$30lptir12kjr6mua623uch9jfi@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ea71ea5813b852d2$cid$, $src$google_calendar_import$src$, $uid$41rjmctc3nifpmq0qnkg30tbjp@google.com$uid$, $title$Maywood Academy MAKEUPS (1 team)$title$, $d$2025-12-04$d$::date, $d$2025-12-04$d$::date, NULL, NULL, $sch$Maywood Academy$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mr. Gabriele Barbato
Principal of Maywood Academy - Capital Region BOCES
925A Watervliet-Shaker, Albany, NY 12205
Office - 518-464-6363
Gabriele.Barbato@neric.org
special needs school

Permission slips may come via Parent Square per Gabriele. I asked that we know why the retake is being done so we can better meet parents expectations ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$41rjmctc3nifpmq0qnkg30tbjp@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_274ad876ec819673$cid$, $src$google_calendar_import$src$, $uid$73a3rrqoe0t8nj4b8attp77j87@google.com$uid$, $title$Northville Picture Day (2 teams)$title$, $d$2025-09-15$d$::date, $d$2025-09-15$d$::date, $tm$8:15am$tm$, $arr$7:45am$arr$, $sch$Northville$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Tammy Reidell, Principal
treidell@northvillecsd.org
Sue Schmitt, yearbook editor
sschmitt@northvillecsd.org
8/29 emailed to confirm everything ckg
Set-up: 7:45am
Start time: 8:15am
Indoor: Classroom near Library
Individuals of students grades PK-12 (grade 12 for IDs)
Individuals of Faculty
Yearbook support
IDs for grades 6-12
Service strips for pk-5
GROUP class photos outdoors on step$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$73a3rrqoe0t8nj4b8attp77j87@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9e71e26fc9f7e0e3$cid$, $src$google_calendar_import$src$, $uid$5oget556j0ophvcubbdpai3t2d@google.com$uid$, $title$Clifton Park Ctr Baptist Preschool (1 photog)$title$, $d$2025-11-07$d$::date, $d$2025-11-07$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, $sch$Clifton Park Ctr Baptist Preschool$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jennifer Halkovitch, Director
cpcbcpreschool@gmail.com
cell to call or text: (518) 588-2096
Needs orders to get to her in time for Christmas giving.
Set-up: 9am
Start at 9:30am
School is done at 11:30am
Indoor, traditional backdropped photos
Individuals of 2, 3  and 4 yr olds (33 in total)
6 teachers
Collage$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5oget556j0ophvcubbdpai3t2d@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_876e205356e0dd22$cid$, $src$google_calendar_import$src$, $uid$33h512nar7i6a35ucl6j91k8o1@google.com$uid$, $title$Lincoln Elem Makeup (1 team)$title$, $d$2025-11-03$d$::date, $d$2025-11-03$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Lincoln Elementary School Makeup$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Asia Terry (new school admin)
terryas@schenectadyschools.org
Arrive: 8am
Start: 8:30am
 Indoor in small cafeteria
10/29/25 confirmed by Asia to Molly; 10/22/25 proposed schedule emailed to Asia ckg
8:00 set up in small cafeteria
8:30 AM K
9:00 1st
9:15 2nd
9:30 3rd
9:45 4th
10:00 5th
10:10 any remaining students and faculty
10:20 - end as lunch begins at 10:40.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$33h512nar7i6a35ucl6j91k8o1@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c40fecebd4924cd7$cid$, $src$google_calendar_import$src$, $uid$397954a2s637mhve1euoli362i@google.com$uid$, $title$Milton and Lauren Monthly Meeting$title$, $d$2026-08-03$d$::date, $d$2026-08-03$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$397954a2s637mhve1euoli362i@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_964bf4bc9617eb98$cid$, $src$google_calendar_import$src$, $uid$70ujrpkm1vevocqcbn7pg2jhhf@google.com$uid$, $title$Marketing Seminar Steph/Sydney$title$, $d$2025-07-15$d$::date, $d$2025-07-15$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$8:30 - 10:00 am
652 Albany Shaker Road Albany, NY 12211$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$70ujrpkm1vevocqcbn7pg2jhhf@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c92ea930a41903fd$cid$, $src$google_calendar_import$src$, $uid$41p9mm88a7po4ucq5a4354dgah@google.com$uid$, $title$HOLD Jefferson Elementary MAKEUPS (1 team)$title$, $d$2026-11-06$d$::date, $d$2026-11-06$d$::date, $tm$9:15am$tm$, $arr$8:30$arr$, $sch$HOLD Jefferson Elementary$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Main Office Admin
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
8:30 start9:15 AM K9:30 1st9:45 3rd10:00 4th10:15 2nd10:30 Latecomers and faculty10:45 PM K$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$41p9mm88a7po4ucq5a4354dgah@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_076de6e19e8dc4ab$cid$, $src$google_calendar_import$src$, $uid$08r80g3ae76f53do5i5ncpmilq@google.com$uid$, $title$Milton and Lauren Monthly Meeting$title$, $d$2026-07-06$d$::date, $d$2026-07-06$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$08r80g3ae76f53do5i5ncpmilq@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_dd7623db74f26286$cid$, $src$google_calendar_import$src$, $uid$7881510s56vtndqu4pplp8jou8@google.com$uid$, $title$Hackett Middle School Moving Up Ceremony (1 photogs)$title$, $d$2026-06-26$d$::date, $d$2026-06-26$d$::date, NULL, $arr$8:30am$arr$, $sch$Hackett Middle School Moving Up Ceremony$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mike Paolino, principal
mpaolino@albany.k12.ny.us
Main Ceremony Contact
arrive 8:30am
event starts at 9am, goes to 11am$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7881510s56vtndqu4pplp8jou8@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b3a7ec7339980234$cid$, $src$google_calendar_import$src$, $uid$4p02ii9f64glpelpraag8qvsq2@google.com$uid$, $title$Destine Prep Spring Pics & K Grads (2 teams)$title$, $d$2026-04-01$d$::date, $d$2026-04-01$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Destine Prep & K Grads$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$7/14/25 Mashoma checking this date to make sure it does not conflict with NYS testing ckg
Mashoma Brydie, operation mgr
mbrydie@destineprepcharterschool.org
530 Franklin St, Third Floor, Schenectady NY 12305
3/10/26 confirmed by Mashoma cc Beth & Andrew  ckg
Setup: 8am
Start: 8:30am
Location: Cafeteria/Auditorium Room
INDOOR with spring backdrop
all students
only new faculty
NO GROUP class photos as we've done in the past (6/20/25 suggested separate date for these and K grads in Feb. They'd receive digital files of the group class photos for their yearbook. ckg)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4p02ii9f64glpelpraag8qvsq2@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_43d27caf8c177501$cid$, $src$google_calendar_import$src$, $uid$1lqbsiai4ms7koehrmiru94ssm@google.com$uid$, $title$Studio Monthly Meeting Steph Matt Milton Lauren 8;00 am$title$, $d$2026-02-06$d$::date, $d$2026-02-06$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[$a$Matt$a$, $a$Steph$a$, $a$Lauren$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1lqbsiai4ms7koehrmiru94ssm@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_cd8f10d0d7f63edb$cid$, $src$google_calendar_import$src$, $uid$38lmgokpc5gc2b2apkt1dmvip7@google.com$uid$, $title$Grand Opening Ribbon Cutting$title$, $d$2025-07-23$d$::date, $d$2025-07-23$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Stephanie McCauley
Sat, Jul 5, 10:01 AM (2 days ago)
to Matthew, Sydney, Milton, Lauren, me
Hi!
Our ribbon cutting has been scheduled for Wednesday July 23 at 9 am.
Please email me any ideas for food, activities, and headshot stations.  I will do any ordering from the cruise!   :)
Carrie - could you send out an email staff-wide about this and ask if they can all be in attendance?   The program part will take around 20 minutes, then giving tours and headshots for probably another 20 minutes.
We should make sure the studio is set up with nice backdrops in all the rooms so any guest can visualize doing photos in them.
THANK YOU GUYS!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$38lmgokpc5gc2b2apkt1dmvip7@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3da201554d5db633$cid$, $src$google_calendar_import$src$, $uid$1ndu61qqn1otihv80coknqbl46@google.com$uid$, $title$HOLD Gardner-Dickinson Makeups (1 team)$title$, $d$2026-10-26$d$::date, $d$2026-10-26$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$HOLD Gardner-Dickinson$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kyle Barber
kbarber@wynantskillufsd.org
Arrive: 8:30am
Start: 9am
Per Kyle:
Timing wise, I think it'll make the most sense If I just go grab the kids from each classroom that are getting a makeup done, then bring those kids back and grab the next grades makeups down, etc. I don't expect it to be longer than 30-45 mins? Do you think that's OK with you guys?
Indoor
310 students grades PK-8
All service items$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1ndu61qqn1otihv80coknqbl46@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_01a3bc0074eacd5e$cid$, $src$google_calendar_import$src$, $uid$5sevn3pkopc6r4d2rcfuakalps@google.com$uid$, $title$Cohoes HS Makeups (1 team)$title$, $d$2025-10-28$d$::date, $d$2025-10-28$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$Cohoes High School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Caryn Dollard
cdollard@cohoes.org
9/17/25: Tentative plan is to do Underclass Retakes from 10:15-12:15 and then do senior retakes around that. -MM 

Set-up: 7:30am
Start: 8:00am
Senior Makeups AFTER underclass are done. ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5sevn3pkopc6r4d2rcfuakalps@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_deacb712040424c1$cid$, $src$google_calendar_import$src$, $uid$18j5en19ushhub7bjc393qaq34@google.com$uid$, $title$Mother Teresa Academy (2 teams)$title$, $d$2026-03-30$d$::date, $d$2026-03-30$d$::date, $tm$9:45am$tm$, $arr$9:15am$arr$, $sch$Mother Teresa Academy$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Holli Riviezzo 
mshollimta@gmail.com
msholli@motherteresaacademy.org

518-280-4227
Mother Teresa Academy
1 Executive Park Drive
Clifton Park, NY 12065
3/10/26 emailed Holli cc Beth & Matt to confirm ckg
Arrival: 9:15am
Photo Start Time: 9:45am
Indoor with spring background for individual students
Group pics taken on March 31 outdoors, with a rain date of April 1
GROUP CLASS PICS as they were not done in the fall .
ALL CLASS PHOTO  - will be framed for school. Look at the background behind students - director is SUPER FUSSY about cars, open doors, etc in the background.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$18j5en19ushhub7bjc393qaq34@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_db850f0e3819174a$cid$, $src$google_calendar_import$src$, $uid$6tm9t1919bl5ta5dasjtrhjr8o@google.com$uid$, $title$Duanesburg Spring Sports Media Day (2 TEAMS)$title$, $d$2026-04-15$d$::date, $d$2026-04-15$d$::date, $tm$2:30pm$tm$, NULL, $sch$Duanesburg Media Day$sch$, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Morning,
We will start pictures at 250 (ish). Kids get out at 243, boys baseball will go first so they should get dressed pretty quick.
We will be in the auditorium. I liked the team pictures on the front steps from last year if we are able to do team pictures there? (assuming good weather).
Kelsey 
Flaherty, ADs Secretary
kflaherty@duanesburg.org
\518-895-3000 ext.224
Brett Simpson, Athletic Director
bsimpson@duanesburg.org
(518) 895-3000 ex. 229
2/25/26: New for this spring, approved by MM & SM: send 2 teams to accommodate an increase in athletes. ckg
Setup in auditorium or gym: 2:00
Start: 2:30pm$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6tm9t1919bl5ta5dasjtrhjr8o@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4dd93f064278124c$cid$, $src$google_calendar_import$src$, $uid$7ualkpetbunvdfbeqlth6kh0i8@google.com$uid$, $title$Digital XPress Branding STEPH$title$, $d$2026-04-06$d$::date, $d$2026-04-06$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7ualkpetbunvdfbeqlth6kh0i8@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ae9bc426569b138d$cid$, $src$google_calendar_import$src$, $uid$5lll7ghrthq7pn5mrdr1l6fokn@google.com$uid$, $title$Okte RAIN Spring Pics & 5th grade pano (2 teams)$title$, $d$2027-04-26$d$::date, $d$2027-04-26$d$::date, NULL, NULL, $sch$Okte RAIN &$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Colleen Awa

colleen.awa@gmail.com

see info on original spring pic date$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5lll7ghrthq7pn5mrdr1l6fokn@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_0d03b1e86d19fd54$cid$, $src$google_calendar_import$src$, $uid$5vqi17nbvn82f2ek0e24of3h3e@google.com$uid$, $title$Milton Terrace Elementary (2 teams)$title$, $d$2026-10-07$d$::date, $d$2026-10-07$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Milton Terrace Elementary$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Sarah Kinney, main office admin
skinney@bscsd.org
Setup: 8am
Start: 8:30am, staff first, then students starting at 9am
Indoor
450 students + faculty/staff
all the usual fall service items
Collages
Treering Yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5vqi17nbvn82f2ek0e24of3h3e@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_cda749b1cea6ca2c$cid$, $src$google_calendar_import$src$, $uid$687kaj7esbqj11b3rgmenfniru@google.com$uid$, $title$Shaker seniors 1 photog plus assistant if possible$title$, $d$2026-04-22$d$::date, $d$2026-04-22$d$::date, NULL, NULL, $sch$Shaker photog assistant if possible$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$687kaj7esbqj11b3rgmenfniru@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_07c3e440235e4b16$cid$, $src$google_calendar_import$src$, $uid$4kuphcvj3uklsia21ovrpddlnp@google.com$uid$, $title$Milton and Lauren Monthly Meeting$title$, $d$2026-12-07$d$::date, $d$2026-12-07$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4kuphcvj3uklsia21ovrpddlnp@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2986b0cd9b5afb61$cid$, $src$google_calendar_import$src$, $uid$2114onf0s5gudtpu52bqvnco3s@google.com$uid$, $title$TSL Kid's Crew, Scotia (1 photog)$title$, $d$2026-04-28$d$::date, $d$2026-04-28$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$TSL Kid s Crew Scotia$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$La'tizza Douglas, director
latizzahartfield89.tsl@gmail.com

4/9 times confirmed ckg; 4/7/26 emailed La'tizza cc Molly to confirm ckg
Arrive: 8:30am
Start: 9am

33 students, ages 6 weeks to 5 yrs old.

Outdoor, nice large yard to use
push indoors with spring backdrop in case of bad weather$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2114onf0s5gudtpu52bqvnco3s@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ad741ea6cc606d39$cid$, $src$google_calendar_import$src$, $uid$3eld4ereienrqcpgo1v0voo425@google.com$uid$, $title$Waterford-Halfmoon Winter Sports$title$, $d$2025-12-03$d$::date, $d$2025-12-03$d$::date, $tm$2:30pm$tm$, $arr$2:00pm$arr$, $sch$Waterford-Halfmoon$sch$, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kyle Williams
Director of PE, Athletics and Recreation
Waterford-Halfmoon Union Free School District
125 Middletown Road
Waterford, NY 12188
(518)237-0800 ext. 1311
kywilliams@whufsd.org

10/24/25 confirmed with Kyle ckg
Arrive: 2 pm
Start: 2:30pm

2:30- Varsity girls basketball
2:50- Bowling
3:10- Track and Field (25 kids or so)
3:40- Boys JV- Basketball
4:00 Boys Varsity Basketball
4:20- Girls JV Basketball$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3eld4ereienrqcpgo1v0voo425@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2974873b5851f3a8$cid$, $src$google_calendar_import$src$, $uid$5lb88fc8kkm16nedcrd1nuvpqv@google.com$uid$, $title$NEW Columbia Track Seniors (1:30p REQ LAUREN)$title$, $d$2026-04-01$d$::date, $d$2026-04-01$d$::date, NULL, $arr$1:30$arr$, $sch$NEW Columbia Track$sch$, $typ$senior portraits$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, $info$Sarah Travis, CHS XC/Track Booster Club rep
sarahdtravis@hotmail.com
cell: 518-366-1546

Arrive: 1:30-1:45p
Start: promptly at 2:15pm
Indoor in auditorium - go in front to get visitor badge, then go around the side maintenance door to use freight elevator. (Carrie will be there to show you where to go)

31 seniors for 2' x 5' banners, 3-4 images of each athlete, torso shots and one index photo
Indoor in the auditorium or the library

Need banners delivered by April 24 to Sarah Travis's home (obtaining address) ckg
Carrie has a banner example from prior year for reference.

All images to go online with cuts and sport backgrounds for sale.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5lb88fc8kkm16nedcrd1nuvpqv@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_42f98d25179fe262$cid$, $src$google_calendar_import$src$, $uid$2mgr535eieg0nmcbvlgk0rbpo5@google.com$uid$, $title$AAG Senior Night (Steph)$title$, $d$2026-02-03$d$::date, $d$2026-02-03$d$::date, NULL, NULL, $sch$AAG Senior Night$sch$, $typ$senior portraits$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$1/15/26 no prep needed per Steph ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2mgr535eieg0nmcbvlgk0rbpo5@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4c41a6667b40fd8e$cid$, $src$google_calendar_import$src$, $uid$4d889o79drc39russi321fupmp@google.com$uid$, $title$Waterford-Halfmoon Seniors (2 photogs)$title$, $d$2026-08-19$d$::date, $d$2026-08-21$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Waterford-Halfmoon$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kayla Ramundo, main contact for pictures and yearbook
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
Needs yearbook images in the FALL! NOT TREERING$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4d889o79drc39russi321fupmp@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b0d7841b89eb75b3$cid$, $src$google_calendar_import$src$, $uid$363qn68asddra0beg7b4rhuvu2@google.com$uid$, $title$Alb School of Humanities & 5th Grade Grads (2 teams)$title$, $d$2026-05-13$d$::date, $d$2026-05-13$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Alb School of Humanities & 5th Grade Grads$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Susannah (Sheehan) Doyle, Vice Principal 
sdoyle@albany.k12.ny.us
Sabrina Fernandez, main office admin
sfernandez@albany.k12.ny.us
4/28/26 Susannah confirmed AR & MS cc'ed ckg
Setup: 8:00am
Start at 8:30am. Check in at main office with photo ID
Outdoor of all students
5th graders, reg clothing AND cap/gown's - school is responsible for getting cap/gowns from Eagle Point.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$363qn68asddra0beg7b4rhuvu2@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_221409c5da512f4a$cid$, $src$google_calendar_import$src$, $uid$6t3emihbhcaf39mjclfsvjt64t@google.com$uid$, $title$School Photographers: Lighting and Senior Workshop 9:30am$title$, $d$2026-02-06$d$::date, $d$2026-02-06$d$::date, NULL, NULL, $sch$School Photographers Lighting Senior Workshop$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6t3emihbhcaf39mjclfsvjt64t@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7768b777bbd451b7$cid$, $src$google_calendar_import$src$, $uid$44si6qkqu9j57ra1cpqc8bs2jm@google.com$uid$, $title$NEW Capital Region BOCES Albany Extension (1 Team)$title$, $d$2025-09-15$d$::date, $d$2025-09-15$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$NO NEED TO PRINT QR SHEETS - SHOOT OFF LAPTOPS
**DO NOT HAND OUT QR CARDS TO ANYONE - NOT SELLING THESE TO PARENTS**
CONTACT FOR ALBANY EXT LOCATION
Heather Merolle
heather.merolle@neric.org
886 Watervliet-Shaker Road, Albany, NY 12205.  The phone number is 518-854-2820
NEED ADDRESS (across the street from Albany location)
VERIFY ALL TIMES
7:30am Arrival 
The AM shift runs from 8:10 – 10:34. The PM shift is from 11:10 – 1:34

Student headshots - take 2 of each student but only keep best one
Charged $3 per headshot in 23-24. NEEDS CONTRACT and W9
Roughly 200-250 students, am and pm sessions$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$44si6qkqu9j57ra1cpqc8bs2jm@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_abaf3ff38532ae1c$cid$, $src$google_calendar_import$src$, $uid$39a7dgom7qvbt9p9jps0ulspon@google.com$uid$, $title$Columbia Kicks Cancer Family Photo Night$title$, $d$2026-02-03$d$::date, $d$2026-02-03$d$::date, NULL, NULL, $sch$Columbia Kicks Cancer Family Photo Night$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$1/26/26 emailed Katie, cc Steph,  about moving to studio if signup continue to be under 5 ckg
Columbia Kicks Cancer
Columbia High School students fundraiser
Katie Sheehan, parent contact
karple223@gmail.com
Columbia High School, South Forum
4-8pm
1/6/26 note from Carrie: I am just seeing this today. This is a Columbia HS event for their cancer fundraising endeavor. I know Katie Sheehan very well, as our sons have run track together for several years. I can help if needed! 
Hi Stephanie, 
It looks like the only event in February so far is on 2-9 at 16 Handles. If you choose a couple of weeknights that work for you, I can check with the school to see when the building is available. I was thinking the cafeteria at Goff if you feel like that can work. Let me know if you would like to meet or chat on the phone. Thank you so much!!
Katie
On Mon, Nov 10, 2025, 4:52 PM Katie Sheehan <
karple223@gmail.com
> wrote:
Yay! So great to hear from you! I love this!! Is it easier to speak on the phone or meet in person? My son and I would be happy to come into the studio or meet you somewhere! I love the idea of tying in Valentine's Day!! I can check with the team leader and see which nights are available! 
Thanks so much, 
Katie
On Mon, Nov 10, 2025, 4:45 PM Stephanie McCauley <
stephanie@ismilestudios.com
> wrote:
Hi Katie!
I just got this message forwarded to me … so glad to help!  I would love to set up a family photo night, they are great fundraisers and people really love having an easy convenient way to get portraits done, so it always feels like a win-win!  If your grand finale is in March, maybe we could look at something in February and maybe even tie it into Valentine’s Day somehow?
Standing by!
Steph
Easily add me to your contacts here
---------- Forwarded message ---------
From: 
Katie Sheehan

<
karple223@gmail.com
>
Date: Mon, Nov 10, 2025 at 9:24 AM
Subject: Photo session
To: 
schoolpics@ismilestudios.com
 <
schoolpics@ismilestudios.com
>
Hello, 
I spoke with Stephanie when she took our school photos at Gardner-Dickinson; she was fantastic! My son is fundraising with Columbia Kicks Cancer for Blood Cancer United. We would love to partner with iSmile in some capacity. One possibility is setting up a family photo night, like you did with Kyle at GD. Another option is being the photographer or setting up a photo booth at the grand finale on March 5, 2026. There are also opportunities for program ads. We are happy to meet or connect on the phone to share more information about these possibilities and/or Blood Cancer United. Please let me know if you are interested in participating! 
Thanks, 
Katie Sheehan$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$39a7dgom7qvbt9p9jps0ulspon@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a2f9a6101e2bc429$cid$, $src$google_calendar_import$src$, $uid$34gksodmd7lpbl99hnknoan6eb@google.com$uid$, $title$May Schedule Call 1:20pm$title$, $d$2026-04-13$d$::date, $d$2026-04-13$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$meet.google.com/ndi-jacr-dpi
Dial-in: 
(US)
+1 574-404-7643 
PIN: 
744 715 308#

Join with Google Meet: https://meet.google.com/fhd-sgqv-jke
Or dial: (US) +1 619-738-0868 PIN: 291508432#
More phone numbers: https://tel.meet/fhd-sgqv-jke?pin=1674585623034&hs=7

Learn more about Meet at: https://support.google.com/a/users/answer/9282720

Please do not edit this section.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$34gksodmd7lpbl99hnknoan6eb@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_648d1139b0183c34$cid$, $src$google_calendar_import$src$, $uid$54vtm8d1sdnbrbt73ri8ccb0dm@google.com$uid$, $title$Albany Academy Spring Photos (ECA-4) (1 team)$title$, $d$2026-05-07$d$::date, $d$2026-05-07$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$Albany Academy Spring$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Rebecca Trainor (on maternity leave until July 26)
TrainorR@albanyacademy.org
Shelly Reid and/or Jenn Hutchins (while Rebecca is on mat. leave)
reidm@albanyacademy.org
fredricksonj@albanyacademy.org
4/22/26 emailed Shelly & Jenn cc Matt to confirm ckg
Arrive: 7:30am to start at 8am
Outdoor, push into library if bad weather$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$54vtm8d1sdnbrbt73ri8ccb0dm@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_916348f67054001c$cid$, $src$google_calendar_import$src$, $uid$0anm9dd94tcf6lgfqk3n2ran8f@google.com$uid$, $title$Tricia Weaver Wedding time TBD 1 hour coverage$title$, $d$2026-09-19$d$::date, $d$2026-09-19$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$On Saturday it’s at our home 5500 Skyline Dr., Delanson NY 12053. 
And on Sunday, it’s at the briar Creek golf course$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0anm9dd94tcf6lgfqk3n2ran8f@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a1cbc907310ba8f9$cid$, $src$google_calendar_import$src$, $uid$2d2k1qn2tmvhjj8jpn1hs5fqu7@google.com$uid$, $title$Digital Express Headshots STEPH$title$, $d$2026-02-04$d$::date, $d$2026-02-04$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$Hey Steph, 
YES! I'm super excited! Your estimate of our staff is correct — we're thinking we'll need about 20-25 headshots.
And it looks like Monday, January 26 from 9-10 is going to be best for members of our team. Let me know if that still works for you, and if so, we can lock it in!
Thank you again — Really looking forward to working with you! 🙂
Michele
Michele Wyse
Creative Services Manager
Digital 
X
Press

518.438.7817 ext. 229 
5 Sand Creek Road | Albany, NY 12205 | 
dxp1.com

LinkedIn
 | 
Facebook
 | 
Instagram
NYS Certified Woman-Owned Business Enterprise
FSC
® 
C112638 • 
www.fsc.org$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2d2k1qn2tmvhjj8jpn1hs5fqu7@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_6c056a59f285c0e6$cid$, $src$google_calendar_import$src$, $uid$2lcaailfribtkp7dvsql0s6nn3@google.com$uid$, $title$Heatly School Makeups (1 team)$title$, $d$2026-11-06$d$::date, $d$2026-11-06$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Heatly School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jodi Mazzeo, yearbook editor (new pic day contact as of S26)
jmazzeo@greenisland.org
Stephanie Bouchey, principal
sbouchey@greenisland.org
Arrive: 8:30am
Start: 9am
Indoor
NEW for 25-26 only grades PK-8th
All grades get ID cards
Yes to faculty IDs
photographing all students and faculty
Treering yearbook
Service strips for all
GROUP class pics$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2lcaailfribtkp7dvsql0s6nn3@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_caa4abbedeecc767$cid$, $src$google_calendar_import$src$, $uid$73hcv449grovqrm3f7d7cs6dh0@google.com$uid$, $title$Shatekon Makeups (1 team)$title$, $d$2025-11-12$d$::date, $d$2025-11-12$d$::date, $tm$10:00am$tm$, $arr$9:30am$arr$, $sch$Shatekon$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Erica Ryan, principal
ryaneric@shenschools.org
Melissa O'Hara, main office admin
oharmeli@shenschools.org
set up: 9:30am
start: 10am
Indoor in CONFERENCE RM per Melissa ckg
Individuals of all students and faculty
Collages
11/4 confirmed this schedule with Melissa ckg:
9:30 set up
10:00 AM K
10:15 1st
10:30 3rd
10:45 2nd 
11:00 4th
11:30 5th
11:45 to noon PM K$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$73hcv449grovqrm3f7d7cs6dh0@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e796472c11f637d4$cid$, $src$google_calendar_import$src$, $uid$0bc3cl8btc8k91jk8o1khgcl87@google.com$uid$, $title$Mentoring Monday 1;15 arrival$title$, $d$2026-02-23$d$::date, $d$2026-02-23$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Cassandra requested we arrive and be set up before 2:00, so 1:15 arrival?

Headshots - need 100 QRs
Set up like college headshot event
2:00-6:00pm at the Troy Hilton Garden Inn

Steph can start - need someone to finish for me

Contact Cassandra Booth at Business Journal  cbooth@bizjournals.com$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0bc3cl8btc8k91jk8o1khgcl87@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9246434b9b111c5f$cid$, $src$google_calendar_import$src$, $uid$0303n3bncq602ggjq9vgl2a17i@google.com$uid$, $title$Studio Staff Quarterly Meeting$title$, $d$2026-05-11$d$::date, $d$2026-05-11$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0303n3bncq602ggjq9vgl2a17i@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_20d2e4eb9f962d0c$cid$, $src$google_calendar_import$src$, $uid$7r05n6vfu2posgds4p72o25bih@google.com$uid$, $title$Photo Booth 4-6 see notes$title$, $d$2025-10-07$d$::date, $d$2025-10-07$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Drop off and pick up at Desmond Hotel, 4-6 pm 
Whoever does this will be paid $100
THANK YOU
Jennifer Hoerup
She/Her/Hers
Director, Training

Justice Center for the Protection of People with Special Needs
161 Delaware Ave, Delmar NY
518.549.0288 l 
jennifer.hoerup@justicecenter.ny.gov
www.justicecenter.ny.gov$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7r05n6vfu2posgds4p72o25bih@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_724fef4b5a13dff7$cid$, $src$google_calendar_import$src$, $uid$2vsq4dovbv10c0n2n0l11ih239@google.com$uid$, $title$Learning Garden Childcare LATHAM (1 team)$title$, $d$2025-10-20$d$::date, $d$2025-10-20$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Learning Garden Childcare LATHAM$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$NEW FALL 2025

1003 Loudon Road, 
Cohoes, NY 12047-5003

Jennifer Hogan
jennifer@learninggarden.kids

McKenna Stephens
mckenna@learninggarden.kids

Renata Filiaci
renata@learninggarden.kids

Dawn Benoit
lathamdirector@steppingstonedaycare.kids

10/9 confirmed with Jennifer ckg
Arrive: 8am
Start: 8:30am

Indoor - morning 10/10 school blue background ckg
70 students
Collages

This sounds great.
Why don’t we plan to have your photographers arrive by 8 am in Latham with photos starting at 8:30.

In Slingerlands let’s have your photographers arrive at 8:30 with photos starting at 9:00.

I believe the spreadsheets are done and ready for you now. Please let me know what else you need before photo day. 

Thanks!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2vsq4dovbv10c0n2n0l11ih239@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_57fcc12e491a030e$cid$, $src$google_calendar_import$src$, $uid$0aoovtgmh90ms06uc2341f1e0t@google.com$uid$, $title$Capital Region BOCES Schoharie (1 Team)$title$, $d$2026-09-15$d$::date, $d$2026-09-15$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$PRINTED QR SHEETS NOT NEEDED. SHOOT OFF LAPTOP
**DO NOT HAND OUT QR CARDS TO ANYONE - NOT SELLING THESE TO PARENTS**
CONTACT FOR SCHOHARIE
Matthew Ward
matthew.ward@neric.org
Callie Hempstead
callie.hempstead@neric.org
Capital Region BOCES Career and Technical School
Schoharie Campus
174 State Route 30A
Schoharie, NY 12157
10am Arrival /10:30am start; break, then 11:55am start
Student headshots - take 2 of each student but only keep one
Charged $3 per headshot in 23-24. NEEDS CONTRACT and W9$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0aoovtgmh90ms06uc2341f1e0t@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4e9cb603436604ba$cid$, $src$google_calendar_import$src$, $uid$2ek61dn075phhmhgvm5smif6ai@google.com$uid$, $title$Wood Road Family Photo Day$title$, $d$2025-10-18$d$::date, $d$2025-10-18$d$::date, NULL, NULL, $sch$Wood Road Family$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Outside pending good weather, cafeteria otherwise

Contact Kasie Ritoda woodroadpta@gmail.com$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2ek61dn075phhmhgvm5smif6ai@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4e0796478d7e200f$cid$, $src$google_calendar_import$src$, $uid$7ldga591r8ekf4e302ff5gf3va@google.com$uid$, $title$Hamilton Elementary School (2 teams)$title$, $d$2025-10-20$d$::date, $d$2025-10-20$d$::date, $tm$7:45am$tm$, $arr$7:15am$arr$, $sch$Hamilton Elementary School$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$9/16/25 Principal is requesting a September date for 26-27. Wants to book in January. ckg
Mrs. Jen Fox, new asst principal. 
foxj@schenectadyschools.org
Arrive: 7:15am no later due to parking
Start: 7:45am staff, then students
9/16/25 Jen let us know about a planned fire drill for 10:30am. We have no room to move this date so we'll shoot around this. ckg
Indoor
440 students
Individuals of all students and faculty
All the things - collages, yearbook, attendance files, service strips
Entourage yearbook company - Sept 2024 per yearbook editor looking for a change effective 25-26 ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7ldga591r8ekf4e302ff5gf3va@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b760f5fdd5341c47$cid$, $src$google_calendar_import$src$, $uid$1sgmo2go8nloa9mg0mpfo914q3@google.com$uid$, $title$HOLD Waterford-Halfmoon Spring Pics (2 teams)$title$, $d$2027-05-07$d$::date, $d$2027-05-07$d$::date, $tm$8:45am$tm$, NULL, $sch$HOLD Waterford-Halfmoon$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jessica Rice, PTO President
waterfordhalfmoonpto@gmail.com
Check in main office upon arrival with photo ID
NEED TO CONFIRM
415+ students, and some teachers missing from Fall pics
8:15am set-up to start at 8:45am
Outdoor pics of all students, IF MISTY, SHOOT 
UNDER THE ENTRYWAY, AND PUSH TO PANO TO RAIN DATE 
(if cold, too windy or front of school won't work. )
6th grade group photo (on playground per Annemarie Stripe, 6th grade teacher) SIZE: final print is 11x17 so this shot can be a bit taller if needed. There is room to manipulate.
Quick turnaround if possible - pano and new students need to be put in yearbook.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1sgmo2go8nloa9mg0mpfo914q3@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2a9e9b80cd6b1d88$cid$, $src$google_calendar_import$src$, $uid$068skvsivrncoul7t952a91g0u@google.com$uid$, $title$Destine Preparatory Charter School (2 teams)$title$, $d$2025-11-04$d$::date, $d$2025-11-04$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Destine Preparatory Charter School$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mashoma Brydie, director
mbrydie@destineprepcharterschool.org
530 Franklin St, Third Floor, Schenectady NY 12305
10/24/25 confirmed with Mashoma ckg
Setup: 8:00am
Start: 8:30am
Indoor in Cafe-inasium
**GREY BACKGROUND**
Collages in fall
Here's the schedule for picture day form Mashoma on 10/24/25:
K - reading room - 8:45 - 9:45
1st - reading room - 10 - 11
2nd - room 223 - 9:45 - 10:30
3rd - room 223 - 10:45 - 11:30
4th - room 223 - 8:45 - 9:30
"I split up the grades to 2 floors so the flow of traffic would be less chaotic. Your team can come in at 8 for setup. "$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$068skvsivrncoul7t952a91g0u@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_76449f433d0facad$cid$, $src$google_calendar_import$src$, $uid$35k4is9i73fq1kv11q3pk4pmbf@google.com$uid$, $title$Jefferson 4th Grade Grads (2 teams)$title$, $d$2026-03-25$d$::date, $d$2026-03-25$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Jefferson 4th Grade Grads$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Corrie Hoffman, PTO contact
corrieh06@icloud.com

Denise Smith, Main Office Admin
dsmith@schalmont.net

2ND time doing GRADS with us

3/3/26 emailed Corrie to confirm, get timing and lcoation cc Matt/Molly ckg
Arrive: 8:30am
Start:  9am

130 Grade 4 STUDENTS
Only NEW Faculty
4th grade grad photos and folders

Indoor
Take photos in regular clothes AND cap/gown to help increase sales (and maybe convince them to let us photo their who school next spring!)
Green Caps/Gowns - look at GP from 24-25: https://app.gotphoto.com/config_jobs_photos/gallery/1616315722/6165330

Schalmont Central School District$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$35k4is9i73fq1kv11q3pk4pmbf@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_dae8c94cf7b3c1a1$cid$, $src$google_calendar_import$src$, $uid$351bdmb3f7919mq56vi7v5n3gb@google.com$uid$, $title$HOLD Albany Academy (US Campus) Senior Photos (2 photogs)$title$, $d$2026-08-24$d$::date, $d$2026-08-28$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$HOLD Albany Academy Senior$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Rebecca Trainor
TrainorR@albanyacademy.org
Arrive: 7:30am to start at 8am
Upper School campus (old AA) Indoor/Outdoor in ___________$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$351bdmb3f7919mq56vi7v5n3gb@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d5aac90e7cf143c2$cid$, $src$google_calendar_import$src$, $uid$28ber8i6soivv0kdpaplplkejc@google.com$uid$, $title$Wildwood School - Curry Road (Andrew + 1)$title$, $d$2025-10-28$d$::date, $d$2025-10-29$d$::date, NULL, NULL, $sch$Wildwood School - Curry Road$sch$, $typ$review$typ$, ARRAY[$a$Andrew$a$]::text[], ARRAY[]::text[], false, $info$Jill Wood 
jwood@wildwoodprograms.org
518-836-2200 x2212 
2 Days at Curry Road site
Classes 1-18
"For our Curry Rd location, students are still arriving until 9:00. We could start picture sessions at 9:15 and do 15-20 minute blocks. We may also need to have some "free" blocks, where staff can bring students down separately, due to behaviors, etc. "
Times: 8:45a set-up for an 9:15am start 
Indoor 
students with special needs 
Individuals pics of all students 
Continuous lights? 
No collages or class photos 
Needs PSPA for yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$28ber8i6soivv0kdpaplplkejc@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_26a61ef9a79f3ea5$cid$, $src$google_calendar_import$src$, $uid$6ootk6005eepu3l5hrua7jlpra@google.com$uid$, $title$Glencliff Elem Makeup Day (1 team)$title$, $d$2025-10-23$d$::date, $d$2025-10-23$d$::date, $tm$8:30a$tm$, $arr$7:45$arr$, $sch$Glencliff Elementary School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Ashley Steele, PTO co-president
glencliffpto.copres@gmail.com
Arrive: 7:45-8:00a
Start: 8:30a$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6ootk6005eepu3l5hrua7jlpra@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a7eae4a7abd360fb$cid$, $src$google_calendar_import$src$, $uid$6o1rrrdcjlgmraqvai21kpp5kb@google.com$uid$, $title$CX Orenda Rain PANO ONLY (9;15am 1 photog)$title$, $d$2026-04-27$d$::date, $d$2026-04-27$d$::date, NULL, NULL, $sch$Orenda Rain ONLY$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Becky Striker, PTA picture day contact
rstrikes102@gmail.com
Krissie Yacano, attend clerk (school contact for pic days)
yacakris@shenschools.org
confirm start time with Krissie in main office
rain date is for pano only$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6o1rrrdcjlgmraqvai21kpp5kb@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a8e75f6dfd42a8f9$cid$, $src$google_calendar_import$src$, $uid$3AC58BF4-3179-4A7C-BBD1-E64BB7DC0652$uid$, $title$Easter Bunny at Gardner Dickinson 2;30-5;30$title$, $d$2026-03-31$d$::date, $d$2026-03-31$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3AC58BF4-3179-4A7C-BBD1-E64BB7DC0652$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9c9032c4a9c3b195$cid$, $src$google_calendar_import$src$, $uid$27tmk9jcfipvfkm5s82t0ult9d@google.com$uid$, $title$Turner's Tots Preschool NEW AM only (Lauren)$title$, $d$2025-12-05$d$::date, $d$2025-12-05$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, $sch$Turner s Tots Preschool NEW AM only$sch$, $typ$review$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, $info$Ruth Ann Turner (formerly of Infinite Care)
turnerstotslc@gmail.com

12/1 confirmed; 11/20 asked for timing and background choice ckg
Arrive: 9am
Start: 9:30am

Indoor with WINTER themed background
15 students with staff, infants, toddlers & preschool ages
Take more than 1 photo of staff please
Collage (didn't offer group class photo)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$27tmk9jcfipvfkm5s82t0ult9d@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c3483d90ba03acfa$cid$, $src$google_calendar_import$src$, $uid$2ebjpk20k8duji2ct4virb09bn@google.com$uid$, $title$Gardner-Dickinson Makeups (1 team)$title$, $d$2025-10-23$d$::date, $d$2025-10-23$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Gardner-Dickinson$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kyle!
kbarber@wynantskillufsd.org
Arrive: 8:30am
Start: 9am
10/14/25 suggested same thing for this year (below) ckg
10/17/24 per Kyle:
Timing wise, I think it'll make the most sense If I just go grab the kids from each classroom that are getting a makeup done, then bring those kids back and grab the next grades makeups down, etc. I don't expect it to be longer than 30-45 mins? Do you think that's OK with you guys?
Indoor
310 students grades PK-8
All service items$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2ebjpk20k8duji2ct4virb09bn@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_538a2f017a78fa26$cid$, $src$google_calendar_import$src$, $uid$7f8khc0hhe8sdd1ou69mpoar85@google.com$uid$, $title$KinderCare Niskayuna (2 teams)$title$, $d$2025-09-09$d$::date, $d$2025-09-09$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$KinderCare Niskayuna$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$2 teams
NEW CONTACT INFO:
Jessica Ribner, Director
jessica.ribner@kindercare.com
Mercedes, Asst Director
mercedes.fillmore@kindercare.com
KinderCare Learning Centers
1440 Balltown Road
Niskayuna, NY 12309
9/3 confirmed with Jessica by Molly ckg
Arrive: 7:30am
Start: 8am
85-ish students
Indoor with fall background
Individuals of all students and teachers
Collages
Digitals of all faculty in lieu of faculty IDs
50% staff discount for their kid's photos
Jessica Ribner
12:12 PM (2 hours ago)
to 
Mercedes
, Molly, Andrew, Emily, me, Matthew
Hi Molly,
Yes we are all set for pictures.
8-830 Infants
830-915 Toddlers
915-10 Preschool/PreK
We can use our Multi Age D classroom this time as we have lower numbers in our preschool program right now.  I will have the rosters completed by the end of the day.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7f8khc0hhe8sdd1ou69mpoar85@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_0d26edfb200749dc$cid$, $src$google_calendar_import$src$, $uid$3j64fr6ig6r9u2jqmqa6hoqrim@google.com$uid$, $title$Isabella Ledet 11;00 interview$title$, $d$2026-01-15$d$::date, $d$2026-01-15$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Join with Google Meet: https://meet.google.com/siv-bkjm-stt

Learn more about Meet at: https://support.google.com/a/users/answer/9282720

Please do not edit this section.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3j64fr6ig6r9u2jqmqa6hoqrim@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_eb4f4287370f8d4e$cid$, $src$google_calendar_import$src$, $uid$06m135tnopjpdanp19ea8pq6f3@google.com$uid$, $title$BKW Clubs/Groups for Yearbook AM (1 photog)$title$, $d$2026-01-29$d$::date, $d$2026-01-29$d$::date, $tm$10:20am$tm$, $arr$10:00am$arr$, $sch$BKW Clubs/Groups for Yearbook AM$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Time Club
9:00 Transportation Dept.
9:10 Cafeteria Staff
9:20 Maintenance Dept.
9:30 MSHS Student Senate
9:40 Jr Honor Society
9:50 Honor Society
10:00 Jr FFA
10:10 Sr FFA
10:20 Masterminds
10:30 Jazz Band
10:40 MSHS Band
10:50 MSHS Chorus
11:00 Musical (Aladdin)
11:10 Colorguard
11:20 Admin
11:30 District Office Staff
Michelle VanPatten, yearbook editor
michelle.vanpatten@bkwschools.org
1/14/26 Michelle still working on schedule; 1/6/26 emailed to get list of groups and confirm timing. Cc'd SM ckg
Arrive: 10am
Start: 10:20am-1:00pm
Indoors in auditorium
Group photos of clubs and groups for the yearbook. Carrie will send them to yearbook editors and upload to yearbook when ready. 
RENAME FILES AS THE CLUB NAME
Transportation group photo to be done on this date per Laurie 9/15/25 ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$06m135tnopjpdanp19ea8pq6f3@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_56ad3d7141240212$cid$, $src$google_calendar_import$src$, $uid$7o8gbj7pikqibcbau8lrufsel8@google.com$uid$, $title$PUBLIC SCHOOL RECESS$title$, $d$2026-04-03$d$::date, $d$2026-04-10$d$::date, NULL, NULL, $sch$PUBLIC SCHOOL RECESS$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7o8gbj7pikqibcbau8lrufsel8@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f08bda6a1de17ae6$cid$, $src$google_calendar_import$src$, $uid$2op59eq9gvk7l6rlr2tj9sb6ms@google.com$uid$, $title$Heatly Field Day (1 photog)$title$, $d$2025-06-17$d$::date, $d$2025-06-17$d$::date, $tm$10:00am$tm$, $arr$9:30am$arr$, $sch$Heatly Field Day$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Stephanie Bouchey
sbouchey@greenisland.org
Sarah Lawlor
slawlor@greenisland.org

Arrive:  9:30am
Start:  10am until noon
5/8/25 booked with Stephanie B. ckg
2nd free event for school
Event goes most of the day so school said they see when we were available and pick a window of time for us to be there. See below:
Stephanie Bouchey
Wed, May 14, 6:40 PM (12 hours ago)
to 
Sarah
, me
Field day will run the am session will be 9-10:30, the next will run 11-12:30…..but if you can  come 10-12 you could get a small amt of time of each group?
Stephanie Bouchey
Principal's Assistant
Green Island UFSD
Carrie Graziano
7:31 AM (0 minutes ago)
to Stephanie, Sarah
That sounds perfect! We can arrive about 9:30am to get the lay of the land, and connect with you or Sarah.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2op59eq9gvk7l6rlr2tj9sb6ms@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c0608846c4911dc7$cid$, $src$google_calendar_import$src$, $uid$3guetfs7mcr17bo7mgeli84ttn@google.com$uid$, $title$Skano Elem Makeup Day (1 team)$title$, $d$2025-10-22$d$::date, $d$2025-10-22$d$::date, NULL, $arr$10:00am$arr$, $sch$Skano Elementary School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$See Sept 28-29 for contact and location info
Indoor, because picture day was moved indoor. (10/15 reminded Erin ckg)
10/21 Erin sent a new schedule, cc'ed Steph ckg
MAKEUP DAY SCHEDULE
9:30 set up
10:00 AM K
10:15 4th
10:30 1st
11:00 3rd
11:15 2nd
11:30 5th
11:45 to noon PM K$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3guetfs7mcr17bo7mgeli84ttn@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_0e1bef52542540c1$cid$, $src$google_calendar_import$src$, $uid$2fkdoqinn7g4pup6645flc6j0b@google.com$uid$, $title$Capital Region BOCES Albany Extension (1 Team)$title$, $d$2026-09-21$d$::date, $d$2026-09-21$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$NO NEED TO PRINT QR SHEETS - SHOOT OFF LAPTOPS
**DO NOT HAND OUT QR CARDS TO ANYONE - NOT SELLING THESE TO PARENTS**
CONTACT FOR ALBANY EXT LOCATION
Valeria Smith, asst principal
valerie.smith@neric.org
886 Watervliet-Shaker Road, Albany, NY 12205.  The phone number is 518-854-2820
 (across the street from Albany location)
VERIFY ALL TIMES
7:30am Arrival 
The AM shift runs from 8:10 – 10:34. The PM shift is from 11:10 – 1:34

Student headshots - take 2 of each student but only keep best one
Charged $3 per headshot in 23-24. NEEDS CONTRACT and W9
Roughly 200-250 students, am and pm sessions$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2fkdoqinn7g4pup6645flc6j0b@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_81fe56b54cf2ac6b$cid$, $src$google_calendar_import$src$, $uid$140A2F06-02D2-4F77-B6AC-1BBE686CF46B$uid$, $title$Herba AA senior makeup 4;00$title$, $d$2025-09-10$d$::date, $d$2025-09-10$d$::date, NULL, NULL, $sch$Herba AA senior makeup$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Hello Stephanie! Yes, the weather has been absolutely beautiful the last couple days! I’m looking forward to the process. We’ve been trying really hard to find outfits. 😊 
thanks for being so flexible. We will see you soon, but hopefully not too soon.
My cell is 518 378-1534. 
Enjoy  the rest of your summer..
Angela
Get 
Outlook for iOS
From:
 Stephanie McCauley <
stephanie@ismilestudios.com
>
Sent:
 Saturday, July 19, 2025 4:53:27 PM
To:
 Angela Herba <
angelateach22@hotmail.com
>
Subject:
 Re: Senior pictures

Hi Angela!  Yes!  Sorry I can’t seem to stay current when the weather is so nice 😂😂😂 you guys are confirmed for 4:00 on Sept 10. My cell is 518-225-0999 if you need me the day of. I’ll be at AA doing underclass photos and will plan to meet you outside the main entrance at 4. Could I have your cell too?  ❤️
On Jul 19, 2025, at 1:21 PM, Angela Herba <
angelateach22@hotmail.com
> wrote:
I’m sure you are super busy but I just wanted to make sure you received my previous email?
Get 
Outlook for iOS
From:
 Angela Herba <
angelateach22@hotmail.com
>
Sent:
 Thursday, July 17, 2025 8:44:20 PM
To:
 Stephanie McCauley <
stephanie@ismilestudios.com
>
Subject:
 Re: Senior pictures

Could we please plan for September 10th at 4?
Get 
Outlook for iOS
From:
 Stephanie McCauley <
stephanie@ismilestudios.com
>
Sent:
 Thursday, July 17, 2025 7:49:34 PM
To:
 Angela Herba <
angelateach22@hotmail.com
>
Subject:
 Re: Senior pictures

Hi Angela!
Could you possibly do something on Wednesday, September 10 in the afternoon around 4:00 PM?   I can’t do anything later than that but could do as early as 3:30 if you can make it then?   Unfortunately I am booked every single Saturday and Sunday all of September already :(
Please let me know - thanks!
Steph
Easily add me to your contacts here
On Jul 17, 2025, at 11:30 AM, Angela Herba <
angelateach22@hotmail.com
> wrote:
Hello Stephanie!  First of all, I am very sorry that I am just getting back to you!  Your reply went to my junk e-mail. 
The first week of September I will be going back to school as well.  I would love to be a part of the Senior picture experience with Ava Rose. She will not be playing fall sports.  Do you have something in the evening or on a Saturday?
Hopefully you are surviving this heat wave and enjoying your summer!
Thank you again for being flexible. Looking forward to hearing from you!
Angela

From:
 Stephanie McCauley <
stephanie@ismilestudios.com
>
Sent:
 Monday, June 30, 2025 8:09 AM
To:
 Angela Herba <
angelateach22@hotmail.com
>
Subject:
 Re: Senior pictures

Hi Angela!
Congratulations on having a senior!  I’ve been through it twice now and it is such a special year of milestones and bittersweet moments.  Enjoy every one!
I can definitely make other arrangements for Ava’s senior pictures.  We are at school August 25-29 and again on September 2 and 3 - are you out of town both weeks?  If so, is Ava playing a fall sport?  Maybe we can find a time during regular school picture day either before or after school to photograph her?  That looks like the first day of school, September 5, but I don’t have confirmation on that yet.  Please let me know what you think!
Thanks!
:)
Steph
On Jun 28, 2025, at 10:40 AM, Angela Herba <
angelateach22@hotmail.com
> wrote:
Good morning! I can't even believe its Ava Rose's senior year. I'm trying to figure out what to do about the dates that you have available for pictures. That week we are going to be out of town. Didn't know if you had any other available dates? If not, we'll figure something out. I just wanted to reach out and ask ahead of time. Thank you in advance Angela.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$140A2F06-02D2-4F77-B6AC-1BBE686CF46B$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_1a9ef3c59627a78e$cid$, $src$google_calendar_import$src$, $uid$4f5ucn8q7lu28mtt2i2bclo5mm@google.com$uid$, $title$Tech Valley SENIORS (1 team)$title$, $d$2026-10-05$d$::date, $d$2026-10-06$d$::date, NULL, NULL, $sch$Tech Valley$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Lana Hower, yearbook editor
lana.hower@techvalleyhigh.org

ID card photos to be done with senior portraits per SM)
Indoor & Outdoor
33 seniors
Treeing yearbook
(having over two days as they only have room for one setup)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4f5ucn8q7lu28mtt2i2bclo5mm@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3006d7826eafc727$cid$, $src$google_calendar_import$src$, $uid$6usvtksl54qcrrfc8el6ahvksg@google.com$uid$, $title$Kids Express Makeup (Matt+1)$title$, $d$2025-10-27$d$::date, $d$2025-10-27$d$::date, NULL, NULL, $sch$Kids Express Makeup$sch$, $typ$makeup/retake$typ$, ARRAY[$a$Matt$a$]::text[], ARRAY[]::text[], false, $info$Liz Landon
Liz@achievements.org
OUTDOOR
Individual photos of all students and teachers
Preschool aged kids with special needs
They love MATT!
Collages with only first names
10/20 emailed Liz Makeup Day info and a 
potential
schedule: ckg
9:30 - EPK
9:45 - Rm 11
10:00 - Rm 1A
10:05 - Rm 1
10:10 - Rm 16
10:25 - Rm 17
10:35 - Rm 10
10:50 - Rm 8
11:00 - Rm 4
11:15 - Rm 15
11:25 - Rm 5
11:45 - Rm 18$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6usvtksl54qcrrfc8el6ahvksg@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ef2414a90fe151e8$cid$, $src$google_calendar_import$src$, $uid$2da5713bdnkvicf1dm3k3i7btc@google.com$uid$, $title$Alb School of Humanities RAIN Date$title$, $d$2026-05-18$d$::date, $d$2026-05-18$d$::date, NULL, NULL, $sch$Alb School of Humanities$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Susannah (Sheehan) Doyle, Vice Principal 
sdoyle@albany.k12.ny.us
Sabrina Fernandez, main office admin
sfernandez@albany.k12.ny.us
Outdoor of students, if bad weather on rain date, push indoors
5th graders, reg clothing AND cap/gown. They borrow Eagle Point's.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2da5713bdnkvicf1dm3k3i7btc@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f0e3560aa87fd4f4$cid$, $src$google_calendar_import$src$, $uid$0phkv55ndsq03ujsqpjrjc3d67@google.com$uid$, $title$Shatekon Grad Photos (1 team)$title$, $d$2027-03-04$d$::date, $d$2027-03-04$d$::date, $tm$7:45am$tm$, $arr$7:15am$arr$, $sch$Shatekon$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Lisa Kelley, 5th grade aide/pic day contact
kelllisa@shenschools.org

Melissa O'Hara, main office admin
oharmeli@shenschools.org

Arrive: 7:15am
Start: 7:45am (staff)
8:15am (5th Graders)
main conference room

5 classes of 5th graders (approx 100 students)
ONLY cap & gown pics - we provide caps and gowns
Matt estimated we'd need about 20 minutes per class

2/10/26 done ckg; 1/8/26 make sure school nows about price increase to $4 per folder ckg
Making grad folders, PTO paying $4 each. Will personalize for school.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0phkv55ndsq03ujsqpjrjc3d67@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_86ddd072d7c31994$cid$, $src$google_calendar_import$src$, $uid$5806hd2mgss76fv95mc5dr1oq5@google.com$uid$, $title$TSL UPK Bethlehem (Delmar) (1 photog)$title$, $d$2025-06-05$d$::date, $d$2025-06-05$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, NULL, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jaime Rodgen, director
jaimer.tsl@gmail.com

339 Delaware Avenue
Delmar, NY 12054

5/21 asked team about black & orange caps & gowns ckg
5/20 confirmed with Jaime ckg
Arrive: 9am
Start: 9:30am

Outdoor, pushing inside with spring background if bad weather
36-40 students  (affiliated with the Bethlehem school district!)
No staff photos in spring

5/20 asked about class group photos. Quoted free digital files, OR $2 per 8x10 print. ckg
5/20 also asked about grad photos. Asked if they need our caps & gowns and what color, or if kiddos are making own to wear. ckg

no commission$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5806hd2mgss76fv95mc5dr1oq5@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d2abfb109399e754$cid$, $src$google_calendar_import$src$, $uid$3052857A-B6BA-4F80-8FE9-ADCE9EC31626$uid$, $title$Robert Senior Photos$title$, $d$2026-04-06$d$::date, $d$2026-04-06$d$::date, NULL, NULL, $sch$Robert Senior$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3052857A-B6BA-4F80-8FE9-ADCE9EC31626$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4ca8d182da382c56$cid$, $src$google_calendar_import$src$, $uid$4aeesjdh0bs4pm20vt2r3gc390@google.com$uid$, $title$HOLD Karigon Elementary Makeups (1 team)$title$, $d$2026-11-06$d$::date, $d$2026-11-06$d$::date, $tm$10:00am$tm$, $arr$9:30am$arr$, $sch$HOLD Karigon Elementary$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Nupoor Gordon, main office admin
gordnupo@shenschools.org
indoor in Main Lobby
Arrive: 9:30am
Start: 10am$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4aeesjdh0bs4pm20vt2r3gc390@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e6c0285ee9bc250c$cid$, $src$google_calendar_import$src$, $uid$7c3uttjjjss86ppoa5033bkbau@google.com$uid$, $title$Atrea ELC SHEN (3 teams)$title$, $d$2027-04-29$d$::date, $d$2027-04-29$d$::date, NULL, NULL, $sch$Atrea ELC SHEN$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Erica Ryan, Principal
ryaneric@shenschools.org

NEW Shen K school
600+ kindergarten students at 5/8/26

5 Maxwell Dr.
Clifton Park, NY 12065
518-881-0500

Outdoor, push in for bad weather
individual students and new staff
Yearbook?$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7c3uttjjjss86ppoa5033bkbau@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3b6003f8e753c57c$cid$, $src$google_calendar_import$src$, $uid$515051blnehogmg0ivprkvkk0h@google.com$uid$, $title$Lincoln Elem Picture Day (1 team)$title$, $d$2025-10-03$d$::date, $d$2025-10-03$d$::date, $tm$8:15am$tm$, $arr$7:45am$arr$, $sch$Lincoln Elementary School$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Asia Terry (new picture day contact fall 2024)
terryas@schenectadyschools.org
Arrive: 7:45am
Start: 8:15am
Indoor in GYM
Individuals of students and ALL faculty/staff (for collages and yearbook)
Collages
Needs yearbook files (Treering)
Needs attendance files$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$515051blnehogmg0ivprkvkk0h@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d1c855c8520a2432$cid$, $src$google_calendar_import$src$, $uid$3oin5htjdkfu7lval1a1f1mn2q@google.com$uid$, $title$Siena Headshots 4;30-6 MAC$title$, $d$2027-04-08$d$::date, $d$2027-04-08$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3oin5htjdkfu7lval1a1f1mn2q@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b67342677c29c865$cid$, $src$google_calendar_import$src$, $uid$3tvag81uklabe5n3u1rejd0oqt@google.com$uid$, $title$Stevens Elementary MAKEUPS (Burnt Hills) (1 team)$title$, $d$2025-11-12$d$::date, $d$2025-11-12$d$::date, NULL, $arr$9:30am$arr$, $sch$Stevens Elementary Burnt Hills$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Sally Draina
sdraina14@gmail.com
Indoor
Schedule below
Rachel Franciosa
11/4/2025 10:51 AM (23 minutes ago)
to me, Sally, Nichole
Hi Carrie,
We look forward to seeing your staff next Wednesday 11/12 for picture retake day! I have changed the schedule to accommodate our class schedules. Please see below:
9:00am: Set up 
9:30am: 5th Grade 
9:45am: 2nd Grade
10:00am: 3rd Grade
10:15am: 4th Grade 
10:30am: Kindergarten 
10:45am: 1st Grade
11:00am: Latecomers and Staff
11:00am: Pack up Equipment
In order to avoid getting stuck behind buses, please make sure not to arrive prior to 8:50AM. We will have you in the same spot in the gym. Please let me know if you have any questions or concerns. 
See you next week!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3tvag81uklabe5n3u1rejd0oqt@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4b0947167aace681$cid$, $src$google_calendar_import$src$, $uid$1tsfsqjoac5jeju6kri9jrdo7v@google.com$uid$, $title$Duanesburg Color Run (Steph)$title$, $d$2026-04-18$d$::date, $d$2026-04-18$d$::date, NULL, NULL, $sch$Duanesburg Color Run$sch$, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$Hello Stephanie, 

I hope you are well! Just wondering if the DCPTA could have an hour of yours or an associates time on April 18th (rain date of 4/25). Maybe 10-11am? The run is actually 10-12p

We are hosting our very first District Wide Color Run ( where they throw color powder). Hopefully, we'll have good weather for fun happy, colorful faces. 

Thank you so very much!
Kerry$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1tsfsqjoac5jeju6kri9jrdo7v@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_bb52bfeec559bd9f$cid$, $src$google_calendar_import$src$, $uid$3ia53k7drqujkmp0t45jm4bpai@google.com$uid$, $title$Cairo-Durham Spring Sports (2 photogs)$title$, $d$2026-04-02$d$::date, $d$2026-04-02$d$::date, $tm$2:30pm$tm$, $arr$2:00pm$arr$, $sch$Cairo-Durham$sch$, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Greg Hagan, Athletic Director
ghagan@cairodurham.org
cell: 518-598-3490
Indoor - setup 2pm, start at 2:30pm in HS gym
All mod, jv and varsity spring teams
Team group photos
Greg Hagan
Sun, Mar 29, 4:08 PM (16 hours ago)
to Branden, jakehall307, Colton, Christina, Steven, Matthew, Bryan, Jennifer, Lucy, Jennifer, Alexa, me
Spring Sports Pictures are this Thursday, 4/2, in the high school gym (media center if there's rain). Please be 5 minutes early and have props for the photos (bats, gloves, batons, etc). Here is the schedule:
2:30 - Boys Varsity Tennis
2:45 - Varsity Baseball
3:00 - Varsity Softball
3:15 - Boys and Girls Varsity Track and Field
3:30 - Boys and Girls Modified Track and Field
3:45 - Modified Baseball
4:00 - Modified Softball
--
Greg Hagan
Middle School Physical Education Instructor
Athletic Director
Cairo-Durham High School$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3ia53k7drqujkmp0t45jm4bpai@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4ce6a1f7c140346a$cid$, $src$google_calendar_import$src$, $uid$66a5tg6ii6a08mc2k4gvkmpihe@google.com$uid$, $title$DES Spring Photos (2 teams)$title$, $d$2026-05-18$d$::date, $d$2026-05-18$d$::date, $tm$9:00am$tm$, NULL, $sch$DES Spring$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kerry Utstein
kutstein@dcpta.org
Yvonne Keller-Baker, 24-25 PTA President
ykellerbaker@dcpta.org
Leah Simpson, elem school
lsimpson@duanesburg.org
5/12/26 emailed Leah, cc AR & SM to confirm ckg
Setup at elementary school 8:30am
Start time: 9:00am
Outdoor of only students, PUSH INDOORS if bad weather
10% fundraiser for the DCPTA$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$66a5tg6ii6a08mc2k4gvkmpihe@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c13cf1648a900eda$cid$, $src$google_calendar_import$src$, $uid$2bmmin0cpnb2qib90gflm2ppnl@google.com$uid$, $title$Milton Terrace Elem Makeup (1 team)$title$, $d$2025-11-05$d$::date, $d$2025-11-05$d$::date, NULL, NULL, $sch$Milton Terrace Elementary School Makeup$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Sarah Kinney, NEW main office admin
skinney@bscsd.org
Indoor
450 students + faculty/staff
Collages
Treering yearbook
11/3/25 Sarah emailed us this schedule:
November 5th 2025
9:15-9:30: 4th & 5th 
9:30-9:45: 2nd & 3rd
9:45-10:00: Kindergarten
10:00-10:15: 1st 
10:15-10:30:  Church & Schaible
10:30-10:45:  Last Call$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2bmmin0cpnb2qib90gflm2ppnl@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a5fe48f369dec2d5$cid$, $src$google_calendar_import$src$, $uid$7il7vmhv8h5aljql0gp36ujc19@google.com$uid$, $title$Smile Lodge Christmas Party 2 Photographers$title$, $d$2026-12-05$d$::date, $d$2026-12-05$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7il7vmhv8h5aljql0gp36ujc19@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_6f0ecfe346b22da2$cid$, $src$google_calendar_import$src$, $uid$0a2d2lr5mq68auat3mcphp6jr8@google.com$uid$, $title$Charles Schwab Saratoga Branding 9;00  STEPH$title$, $d$2026-05-14$d$::date, $d$2026-05-14$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$Contact Maureen Parker$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0a2d2lr5mq68auat3mcphp6jr8@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e1a07971a091077f$cid$, $src$google_calendar_import$src$, $uid$4tjvs6a41d4c2h2giqeru7s06r@google.com$uid$, $title$Heatly 8th grade pano RAIN (1 photog)$title$, $d$2027-05-03$d$::date, $d$2027-05-03$d$::date, NULL, NULL, $sch$Heatly 8th grade RAIN$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jodi Mazzeo, yearbook editor (new pic day contact as of S26)
jmazzeo@greenisland.org
Stephanie Bouchey, principal
sbouchey@greenisland.org
Rain date for grade 8 pano
8x24 pano - group photo needs to be horizontal.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4tjvs6a41d4c2h2giqeru7s06r@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c1be529c786fa58d$cid$, $src$google_calendar_import$src$, $uid$7e24d20d5g60cl9i5absrgc19u@google.com$uid$, $title$NEW DATE Zoller Elem MAKEUPS (1 team)$title$, $d$2026-01-08$d$::date, $d$2026-01-08$d$::date, NULL, $arr$10:00$arr$, $sch$NEW DATE Zoller Elementary School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Tanekia Matthews, school secretary
matthewst@schenectadyschools.org
10/6/25 dated moved by Tanekia ckg
1/2/26 proposed this schedule (kate because images were not ready until 16 days after picture day and carrie was already on vacay at that point) ckg:
9:30 set up
10:00 PreK and K
10:15 1st and 2nd
10:30 3rd and 4th
10:45 5th and latecomers
11:00 breakdown our equipment
Staff can come through the time were there
Location: Gym C (indoor) need to confirm
*Schedule all classes before noon*
Individuals of students and teachers for colleges
Collages
Attendance files$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7e24d20d5g60cl9i5absrgc19u@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ebc9e4378b29b309$cid$, $src$google_calendar_import$src$, $uid$3keilp93dohlvjms8ieug7ct8r@google.com$uid$, $title$C-D Junior Prom (1 photog)$title$, $d$2025-06-07$d$::date, $d$2025-06-07$d$::date, NULL, NULL, $sch$C-D Junior Prom$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Matthew Hitchen
Jr Class Advisor 2026
personal cell is 5185675953
mhitchen@cairodurham.org
booked 5/6/25 per Steph email prom pricing options and we'll do it but it has to be a paid event. ckg
PROM PKG B
3 hours of coverage
Candids, detail shots (not backdropped formals)
All digital files
5/9/25: take photos from 6-9pm at prom location NOT CORONATION; 
they'll pay us that night in cash ($300 oer Steph). Please put payment in lockbox in the upstairs left cabinet.
Molly Sosnow
9:30 AM (1 hour ago)
to mhitchen, me
Hi Matthew!
My name is Molly and I am the photographer assigned to the CD Junior Prom this Saturday, June 7th! I just wanted to reach out and confirm a few details. The event will be held at the Foreland 111 Water St, Catskill, NY 12414 and I will be taking photos from 6pm-9pm? I will plan to arrive between 5:30-5:45pm to get situated. Are there any special instructions for parking or entering the building? 
Is there anything super specific you are looking for me to capture in addition to the traditional detail shots of the venue plus candids of the students throughout the evening?
Thank you so much! Please let me know if you have any questions for me. My personal cell phone number is 518.209.4822 if needed. 
Have a great day :)
Best,
Molly
--
Molly Sosnow
Photographer
iSmile Studios
www.ismilestudios.com
www.facebook.com/ismilestudios
Share your great experience on Google!
Molly Sosnow
10:39 AM (5 minutes ago)
to Matthew, me
Matthew Hitchen
11:52 AM (8 minutes ago)
to me
Hi, Prom Coronation will start at Cairo-Durham at approximately 4:30. Prom Coronation will end approximately at 5:00. Students will be allotted 45 minutes to travel from Cairo-Durham to Forelands in Catskill. Doors will open at Forelands at 6:00 pm. The Prom will end at 10:00pm. Could you start at 6pm and leave at 9?
Would you accept cash payment?
Thank you so much
Matthew Hitchen
May 6, 2025, 3:28 PM (15 hours ago)
to me
Hi, my name is Matthew Hitchen and I am the Class Advisor for the Class of 2026. Our Junior Prom is June 7. The location is Forelands in Catskill. I was given your email by our yearbook person and thought you might be interested in photographing the event. As I understand, students will be given a QR code and be able to purchase the pictures. 
Thank you and please let me know. 
My personal cell is 5185675953 
Mr. Hitchen
High School History Instructor 
AP World & Honors 
Cairo-Durham H.S$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3keilp93dohlvjms8ieug7ct8r@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_5b3096c71ef96e44$cid$, $src$google_calendar_import$src$, $uid$38ms0cmfm82l366fcg64er34ep@google.com$uid$, $title$Walter B. Howard Rain Date (1 team)$title$, $d$2025-09-23$d$::date, $d$2025-09-23$d$::date, NULL, NULL, $sch$Walter B. Howard$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mindy Keegan, main office admin
mkeegan@newlebanoncsd.org
Beth LaGrange, PTA
blagrange@newlebanoncsd.org
Outdoor - plain scene, no frills, no chair or shep hook per school
Individuals of all students and faculty/staff
All service items
Faculty ID cards
full yearbook support
COLLAGES$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$38ms0cmfm82l366fcg64er34ep@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_73228b65d43b087f$cid$, $src$google_calendar_import$src$, $uid$1ikrk98da3pvbkfjff1kr24t8a@google.com$uid$, $title$Malta Ave 5th Grade Pano RAIN (1 photog )$title$, $d$2026-04-17$d$::date, $d$2026-04-17$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, $sch$Malta Ave RAIN$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jenny Bottisti
(518) 884-7250 ext 1380
JBottisti@bscsd.org
Set-up: 9am - check in at main office with photo ID upon arrival.
Start: 9:30am
ONLY RAIN DATE FOR PANO!
5th grade group on or near playground. They have recess on the playground beginning at 10:15, so we need to be done by then.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1ikrk98da3pvbkfjff1kr24t8a@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_bddd49e472029cfd$cid$, $src$google_calendar_import$src$, $uid$349as4c3jcfheijidelv0mt2bo@google.com$uid$, $title$DLL Opening Day RAIN (3 Photographers)$title$, $d$2026-05-16$d$::date, $d$2026-05-16$d$::date, $tm$7:45am$tm$, $arr$7:30am$arr$, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Ryan Smith
coachryan5882@gmail.com
Chris Parslow
duanesburgll@gmail.com
Arrive: 7:30am
Start: 7:45am (schedule below)
745  siblings
800 IBEW
810  Sindoni
820 iSmile
830 Caribbean pools
840 Esperance LP
850  Pine Ridge Dental
900  Outlander
910 Simon Generator
920  Tri city scaffolding
930  Delanson Fire
940 Turnpike Tresses
950 TLC Pet Lodge
1000 OPENING CEREMONY
1030 Caribbean Pools (SB)
1040 Gimondo 
1050 Peterson Fuel Oil
1100 Eckert
1110 Country Tile
1120 Hannaford
1130  Lawrence Water Wells
Duanesburg Little League Fields
Outdoors
Individuals of Players
Group Team Photos
Photo Balls for Seniors
Sponsor & Coach 8x10 Prints$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$349as4c3jcfheijidelv0mt2bo@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_6b04a885dce8e8ed$cid$, $src$google_calendar_import$src$, $uid$11f1p8rhkk1fhrb7tvkbld27u9@google.com$uid$, $title$Skano 5th grade group pic (1 photog)$title$, $d$2026-03-13$d$::date, $d$2026-03-13$d$::date, NULL, $arr$7:45a$arr$, $sch$Skano 5th grade group pic$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Erin Kisling, Admin
kislerin@shenschools.org
2/23 Erin confirmed; 2/20 emailed Erin flyer and to confirm. cc Beth ckg
Arrive: 7:45a
Picture at 8:10am (kids have a program starting at 8:15am) Teachers will help settle the kids
INDOOR on risers in cafeteria
NEED TURNED AROUND FAST FOR YEARBOOK - deadline is end of April.
PANO DETAILS $15 + tax for parents to purchase - school wants batch shipping thru GP, with a direct ship option for parents.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$11f1p8rhkk1fhrb7tvkbld27u9@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_5f9e043773689c7f$cid$, $src$google_calendar_import$src$, $uid$05nor1l2bedr795mehvht2jdhb@google.com$uid$, $title$LCS Bacc Evening (Matt)$title$, $d$2026-06-12$d$::date, $d$2026-06-12$d$::date, NULL, NULL, NULL, $typ$graduation/pano$typ$, ARRAY[$a$Matt$a$]::text[], ARRAY[]::text[], false, $info$Amy Thiel
Librarian/Lower School Tech Teacher/Graduation Coordinator
Loudonville Christian School
374 Loudon Rd. 
Loudonville, NY 12211
518.434.6051 x335
lcs.org
6:30pm start (new time for 2026!)
3/25/26 booked with Bonnie ckg
Amy Thiel
Wed, May 13, 4:12 PM (15 hours ago)
to me, Matt
Hi Carrie & Matt - 
I am coordinating Graduation again this year and I wanted to reach out to keep you in the loop!  The LCS Baccalaureate will be held on Friday, June 12 at 6:30 pm (this is a change from last year) and Graduation is to be held on Saturday, June 13 at 10:30 am.  We will have practice on Friday, June 12, beginning at 9:30 am.  
I just want to confirm that you guys have that day on your calendar!  Please let me know if you have any questions or need anything further from me.  I want to also confirm that you'll be available for pictures on Saturday, June 13 beginning at 9:30 am in the Ministry Center (this is also slightly later than last year).  Our graduating class this year is only 8 students so I expect practice, Baccalaureate, Graduation and the pictures beforehand to run a little faster than in previous years.  
Once you have a QR code available, please send it along and I will share it with our families!  (I realize it's a bit early, but figured I would ask now!)
Thank you!  
Best, 
Amy
-- 
Amy Thiel
Office Manager/Librarian/
Grandparents' Day Coordinator/Graduation Coordinator
Loudonville Christian School
374 Loudon Rd. 
Loudonville, NY 12211
518.434.6051 x301
lcs.org
Matt iSmile Studios
Wed, May 13, 7:33 PM (11 hours ago)
to 
Beth
, Amy, me
Hi Amy,
This all sounds great! I'll be your photographer again this year, and Beth will be with me on Saturday for family photos in the morning. 
We'll loop back soon with a flyer and QR code. Have a great evening!
Thanks!
Matt$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$05nor1l2bedr795mehvht2jdhb@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_437139d49c60b97a$cid$, $src$google_calendar_import$src$, $uid$4m28907roabrkgvg6n8g8cte9a@google.com$uid$, $title$Matt work from Home$title$, $d$2025-08-12$d$::date, $d$2025-08-12$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Matt$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4m28907roabrkgvg6n8g8cte9a@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_fbcbd1f6f89a1049$cid$, $src$google_calendar_import$src$, $uid$37sop926s5rir3aqsm782mutvk@google.com$uid$, $title$Siena Career Fair 1 Photog TENTATIVE BASED ON AVAIL$title$, $d$2025-09-19$d$::date, $d$2025-09-19$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$September 19, 2025
 | 12:30 PM – 3:00 PM | MAC$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$37sop926s5rir3aqsm782mutvk@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_038938800884a785$cid$, $src$google_calendar_import$src$, $uid$0in22g1hapvql3beo5qqrno6pq@google.com$uid$, $title$TSL Daycare Guilderland (1 team)$title$, $d$2025-09-11$d$::date, $d$2025-09-11$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$TSL Daycare Guilderland$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Alexis LaRose
alexislarose.tsl@gmail.com
518-456-0729
New fall backdrop
Setup: 8:30am
Start: 9am
Redeemer Church
183 Schoolhouse Road
Albany, NY 12203
Indoor with FALL background
41 students (ages 3 months to 4 years); 16 teachers
Individuals of all
Collages at daycare's request
Makeups in studio (okay'ed by daycare)
Yearbook PSPA, faculty IDs$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0in22g1hapvql3beo5qqrno6pq@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_6b7edbdc43b52dbf$cid$, $src$google_calendar_import$src$, $uid$4h2ouakhl7u63n0t5htktt95kb@google.com$uid$, $title$Siena Career Fair 1 Photog$title$, $d$2025-11-03$d$::date, $d$2025-11-03$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$October 29, 2025
 | 12:30 PM – 2:00 PM | Student Center$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4h2ouakhl7u63n0t5htktt95kb@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ea8fe345e58f6980$cid$, $src$google_calendar_import$src$, $uid$0kchnub9s6rdq52iuchtuugnqn@google.com$uid$, $title$Thomas Pest Headshot Event 11/1$title$, $d$2025-11-25$d$::date, $d$2025-11-25$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Stephanie,

I think we will have people arrive before 12 pm, so we can get people completed before then. I can always have someone help me oversee the process to keep it moving, too.
Yes, please send them all to me, and I will pick out the best! 
 sthomas@thomaspestservices.com
Hi Stephanie!!

The location is Pat’s Barn. 
Address
: 
110 Defreest Dr, Rensselaer, NY 12144
Let me know if you need anything else!

From:
 Brittany Lawton <
brittany@lawtonsocial.com
>
Sent:
 Tuesday, October 28, 2025 8:05 AM
To:
 Sarah Thomas-Clark <
sthomas@thomaspestservices.com
>; Stephanie McCauley <
stephanie@ismilestudios.com
>
Subject:
 Thomas Pest Headshots

Hi Sarah and Stephanie!

I wanted to connect the two of you so that we can firm up details for the headshots on November 25th. Sarah, Stephanie and I chatted about having the two-hour time block for headshots at the top of the event but I couldn't remember the location! Would you share that with us?

Steph, let us know what other details you need!

Thank you,
Brittany

BRITTANY LAWTON, MBA

(she/her)
FOUNDER & CEO

call or text — (518) 407-1244
email me — 
Brittany@LawtonSocial.com
visit the website —

LawtonSocial.com

✨ 
Follow us on Instagram!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0kchnub9s6rdq52iuchtuugnqn@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3f2a790bd5854efc$cid$, $src$google_calendar_import$src$, $uid$21iufig5tsfnedi6k1gnnmd6od@google.com$uid$, $title$Gordon Creek Elem Fall Picture Day (2 teams)$title$, $d$2025-10-09$d$::date, $d$2025-10-09$d$::date, NULL, $arr$8:00am$arr$, $sch$Gordon Creek Elementary School Fall$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Katie Bennice
Administrative Assistant
Gordon Creek Elementary School
(518) 884-7270 ext.3368
kbennice@bscsd.org
Arrive: 8 am  Start with staff 830, students at 9:15am (staff not specifically noted on schedule)
500+ elementary students
individual students and faculty
all service items and yearbook support
wants one day
class composites
Katie sets the photo day schedule
10% commission$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$21iufig5tsfnedi6k1gnnmd6od@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ca29d95895e6dcbe$cid$, $src$google_calendar_import$src$, $uid$6sivt8dp2d2ojsf19k47ih2tlb@google.com$uid$, $title$Happy Kids Day Care (1 photog)$title$, $d$2026-05-12$d$::date, $d$2026-05-12$d$::date, $tm$10:00am$tm$, $arr$9:30am$arr$, $sch$Happy Kids Day Care$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Cierra, new director
hkdc518@gmail.com
518-732-4569
4/29 confrimed time chg ckg; 4/23 confirmed ckg; 4/20/26 emailed Cierra cc Molly to confirm
Arrive: 9:30am
Start: 10am
Prefer small local photography studio (has had 3 directors in 3 years)
Outdoor, push indoors with happy spring backdrop if bad weather
25-30 kids
NO STAFF INDIVIDUAL PHOTOS
GROUP class pics (altho they're worried that infants may not cooperate)
Cierra
10:18 AM (1 minute ago)
to me, Molly
Would it be possible to adjust the start time for photos to 9:45-10:00 AM?
The children have breakfast between 9:00 and 9:15 AM, and starting a bit later would give us enough time to get them cleaned up and ready. Please let me know if that works for you.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6sivt8dp2d2ojsf19k47ih2tlb@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4f116c58653e6d09$cid$, $src$google_calendar_import$src$, $uid$1u7ugj5f1ieiamhbm6l85t7rgr@google.com$uid$, $title$Shaker Prom$title$, $d$2026-05-30$d$::date, $d$2026-05-30$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$May 30th at 7pm 
Empire State Plaza Convention Center$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1u7ugj5f1ieiamhbm6l85t7rgr@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_dbd9107591ab4686$cid$, $src$google_calendar_import$src$, $uid$7m7hh4qkkf4l0ip5ikhpj422o4@google.com$uid$, $title$Tricia (NBT BANK) engagement session Landis Arboretum 5;00 STEPH$title$, $d$2025-07-16$d$::date, $d$2025-07-16$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7m7hh4qkkf4l0ip5ikhpj422o4@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_34699ba97d43bafd$cid$, $src$google_calendar_import$src$, $uid$50kg9dnpfduo46cit3a2hp9q3q@google.com$uid$, $title$Tabner, Ryan & Keniry, LLP Headshots 9am (Matt)$title$, $d$2026-05-18$d$::date, $d$2026-05-18$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Matt$a$, $a$Ryan$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$50kg9dnpfduo46cit3a2hp9q3q@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_65114e277a989451$cid$, $src$google_calendar_import$src$, $uid$4sjr4g08tgibaj8vbs5uipp311@google.com$uid$, $title$Waterford-Halfmoon Spring Pics (2 teams)$title$, $d$2026-05-04$d$::date, $d$2026-05-04$d$::date, $tm$8:45am$tm$, NULL, $sch$Waterford-Halfmoon$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jessica Rice, new PTA President
waterfordhalfmoonpto@gmail.com
Check in main office upon arrival with photo ID
4/20/26 confirmed with Jessica ckg
415+ students, and some teachers missing from Fall pics
8:15am set-up to start at 8:45am
Outdoor pics of all students, IF MISTY, SHOOT 
UNDER THE ENTRYWAY, AND PUSH TO PANO TO RAIN DATE 
(if cold, too windy or front of school won't work. )
6th grade group photo (on playground per Annemarie Stripe, 6th grade teacher) SIZE: final print is 11x17 so this shot can be a bit taller if needed. There is room to manipulate.
Quick turnaround if possible - pano and new students need to be put in yearbook.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4sjr4g08tgibaj8vbs5uipp311@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_5c0da0684280b201$cid$, $src$google_calendar_import$src$, $uid$5l8e4j2ojjc41eqd2b12ve6t7e@google.com$uid$, $title$Northville Graduation 6;00pm start (1 photog)$title$, $d$2025-06-27$d$::date, $d$2025-06-27$d$::date, NULL, $arr$5:30pm$arr$, $sch$Northville Graduation$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$6/9/25 Terry confirmed timing; 5/14/25 booked; 5/13/25 nudged Terry; 2/19/25 Holding based on school's calendar ckg

Terry Flickinger
tflickinger@northvillecsd.org 

arrive 5:30pm for a 6pm start

Emailed to Terry 5/14/25 by ckg:
For graduation, my notes say we take candids before and after the ceremony, photograph your speakers, and then your graduates on stage as they receive their diplomas. We offer hugely discounted digital files for parents and seniors to purchase, as well as some print options. There is no fee to the school (🥰). I'll send you a flyer to share with the senior class and their families.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5l8e4j2ojjc41eqd2b12ve6t7e@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_166ba351b8be876a$cid$, $src$google_calendar_import$src$, $uid$2ad7888lmj01eedcnigje8vo3i@google.com$uid$, $title$Hackett MS Makeup Day (1 team)$title$, $d$2025-11-14$d$::date, $d$2025-11-14$d$::date, NULL, $arr$8:00am$arr$, $sch$Hackett Middle School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mike Paolino, principal
LIKES THE PHONE, NOT EMAIL
mpaolino@albany.k12.ny.us
518-475-6475
Location: Back of the library on the ground floor
Setup: 8am be done by 10:30am
Indoor - see below
6-8 grades
Individuals of all students and faculty during PE classes
no collages
ID cards for all CHECK for 25-26
Yearbook support for Treering
11/5/25 schedule per Mike:
Similar to last year, I believe the best place to conduct the make-up photos is in the library.  The library is located on the ground floor.  Last year the photographer set up in the back right of the library.  This would be an ideal location again this year. 
In terms of the schedule, I have made the following recommendations:
8:00 set up
8:30 staff
8:50 8th
9:10 6th
9:30 7th
9:50 latecomers
10:10 or so breakdown our equipment
Please let me know if I can be of any additional assistance.  Thank you again for all that you do for the students of Hackett.
Mike$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2ad7888lmj01eedcnigje8vo3i@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_079dfd5edf65b2f2$cid$, $src$google_calendar_import$src$, $uid$6hevm3e94q3i13jgv8utp67diu@google.com$uid$, $title$(Quick) Easter Bunny Quicks School Team$title$, $d$2026-03-28$d$::date, $d$2026-03-28$d$::date, NULL, NULL, $sch$Quick Easter Bunny Quicks School Team$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6hevm3e94q3i13jgv8utp67diu@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_659f9af0934f05b1$cid$, $src$google_calendar_import$src$, $uid$7qosmtlmj157u3ipnpdf1l8djq@google.com$uid$, $title$Okte Elementary OUTDOOR (2 teams)$title$, $d$2026-09-25$d$::date, $d$2026-09-25$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Okte Elementary OUTDOOR$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Colleen Awa, PTA
colleen.awa@gmail.com
Patti Laiacona, Main Office Admin
laiapatr@shenschools.org
4/28/26 asked to go 2 wks later this year ckg
Arrival: 8am
Start: 8:30am with faculty, students start at 9:15am
OUTDOOR photos (requested by school)
Outdoor location is 
back lawn close to the parking lot near the tree line.
Individual photos of students and faculty
collages
all service items (yearbook, attendance files, service strips)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7qosmtlmj157u3ipnpdf1l8djq@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_abfa6dd896775121$cid$, $src$google_calendar_import$src$, $uid$21bg4oaa8sjv7lp43gpjp0k9t2@google.com$uid$, $title$Duanesburg MS/HS (1 team)$title$, $d$2025-09-17$d$::date, $d$2025-09-18$d$::date, $tm$7:50am$tm$, $arr$7:20am$arr$, $sch$Duanesburg Middle School/High School$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Andrea Hunter, Main Office
ahunter@duanesburg.org
Set-up: 7:20am
Start time: 7:50am
Indoor pics of all students and faculty
In auditorium on STAGE
During gym periods (students are bindered in alpha order as the PE classes are being reorganized at 9/9/25 ckg)
All service items
Student and Faculty ID with bar codes
Yearbook support - Treering we flow$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$21bg4oaa8sjv7lp43gpjp0k9t2@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_366b7e8d6152d92d$cid$, $src$google_calendar_import$src$, $uid$27d187e60baukpjjgfr0bkl92l@google.com$uid$, $title$NEW TSL @ Sacred Heart$title$, $d$2025-12-09$d$::date, $d$2025-12-09$d$::date, $tm$9:00a$tm$, $arr$8:30a$arr$, $sch$NEW TSL Sacred Heart$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kylie Donovan, director
kiley.tsl@gmail.com
(518) 320-5972

310 Spring Ave, Troy, NY 12180

12/3/25 confirmed; 12/1 emailed Kily ckg
Arrive: 8:30a
Start: 9:00a

Indoor with wintery background
60 children (preschool ages - 3y/o and up) and staff
collages$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$27d187e60baukpjjgfr0bkl92l@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_5df13e3849e1b773$cid$, $src$google_calendar_import$src$, $uid$3ao68481o3i93unlgr1pv8iqju@google.com$uid$, $title$Hillside Elementary Makeups (1 team)$title$, $d$2026-10-28$d$::date, $d$2026-10-28$d$::date, NULL, NULL, $sch$Hillside Elementary$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Tracy Oakland
Parent Coordinator

tracyaoakland@gmail.com

school phone: 518-377-1856

Indoor
400 students grades K-5
Collages
all service items
Offer Treering!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3ao68481o3i93unlgr1pv8iqju@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c1b1bd3759b98843$cid$, $src$google_calendar_import$src$, $uid$20egl65av0o1u1pkrrhermun1p@google.com$uid$, $title$Pooh's Corner Picture Day (1 team)$title$, $d$2025-11-19$d$::date, $d$2025-11-19$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, $sch$Pooh s Corner$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Duane Hotaling
Asst Director
duane@poohscornerecc.org
11/5 confirmed; 11/4 emailed Duane to confirm ckg
Arrival: 9:00am
Start: 9:30am
Pooh’s Corner, Inc. – Early Childhood Center
500 Balltown Road, Building 10
Schenectady, NY 12304
(p): 518-370-7333
(f): 518-370-7421
(e): 
assistantdirector@poohscornerecc.org
(w): 
www.poohscornerecc.org
Indoor
Individuals of all students and staff
Collages (like last year's with logo)
ID cards for staff (like last year with logo)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$20egl65av0o1u1pkrrhermun1p@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_930189e4c235c68e$cid$, $src$google_calendar_import$src$, $uid$41goelct7o97q4c8ifi8qnmul8@google.com$uid$, $title$TSL Niskayuna UPK (1 photog)$title$, $d$2026-04-29$d$::date, $d$2026-04-29$d$::date, NULL, $arr$9:30am$arr$, $sch$TSL Niskayuna UPK$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Nicole 
Topaltzas
Ntopaz.tsl@gmail.com
518-242-0722
In building behind Control Tower Ice Cream/Mini Golf
4/9/26 emailed Nicole cc Molly to confirm ckg
arrive at 9:30am to begin photos at 10:00am
Outdoor, to push indoors with spring backdrop in case of bad weather
Only Prek ages
No class pics in spring$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$41goelct7o97q4c8ifi8qnmul8@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_1ddb99c96c937221$cid$, $src$google_calendar_import$src$, $uid$1b7vc36jo1kt0k5lj2s24e8l8t@google.com$uid$, $title$February Scheduling Call 9am$title$, $d$2026-01-15$d$::date, $d$2026-01-15$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$meet.google.com/gch-kmhb-tdj
Dial-in: 
(US)
+1 530-481-6073 
PIN: 
868 435 920#$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1b7vc36jo1kt0k5lj2s24e8l8t@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7ce939116f581a5d$cid$, $src$google_calendar_import$src$, $uid$851EF243-3AD2-4E11-9E2A-80F1804BC7EC$uid$, $title$Green Tech 8th grade Grads & Group Photo$title$, $d$2026-05-19$d$::date, $d$2026-05-19$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Green Tech 8th grade Grads & Group Photo$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Crystal Campbell, counselor
ccampbell@greentechhigh.org
5/11/26 confirmed; 5/6/26 emailed Crystal cc Matt asking again for details ckg
4/17/26 booked with Crystal ckg
Arrive: 8:30am
Start: 9am group on stage , then individuals
8th grade cap and gown photos (we bring ours) *CORRECTION: Green Tech had their own black cap/gowns with gold Green Tech stole and gold/black tassels (MS 5/19/26)*
8th grade group photo - 11x14 size. CAPTION Offered $4 per print if school orders in a batch. Price approved by SM ckg
Wylkins Occelin
9:40 AM (0 minutes ago)
to Molly, ccampbell, me, Matthew
Okay, perfect! Thank You! Yes, we can start with the group picture outside if the weather cooperates. There will not be risers set up outside, however, I can ask to see if that is something we have. I am not opposed to doing the individual photos outside if we already have them outside for the group photo.  If the weather is not well we can do the group picture indoors on the stage as well as the individual photos.
You may reach out to me via my work cell which is below on the day upon your arrival so I can help with any requests you may have.
Wylkins Occelin
Wed, May 13, 4:14 PM (14 hours ago)
to Molly, ccampbell, me, Matthew
Good Afternoon,
I just realized the time frame of 11:45am will not work due to it conflicting with our highschool schedule. That is their lunch period and the stage and space will be occupied. Are you available to come in earlier that day ? Does 9am work for you?
Wylkins Occelin (he/him/his)
Middle School Counselor
Green Tech High Charter School
Email: 
woccelin@greentechhigh.
org
Work Cell: (518)- 227-7157
Office Phone: (518)-396-5110
Molly Sosnow
5:54 AM (35 minutes ago)
to Wylkins, ccampbell, me, Matthew
Yes 9am works for me! I would arrive at 8:30am instead to get set up. 
Crystal Campbell
10:23 AM (1 hour ago)
to me
Good Morning Ms. Graziano,
I hope your Monday is going well. I was able to briefly discuss 8th grade picture day with Mr. Occelin. A good time for iSmile staff arrival would be 11:45am. The 8th grade group picture can be done first. We are thinking that we can do the group picture on the stage. We can also scout out an alternate location to determine which would be best for the photo. After the group picture we can do the individual photos right after. The traditional format of the photo (11x14) works. 
Carrie Graziano
11:59 AM (0 minutes ago)
to 
Molly
, 
Matthew
, Crystal
Hi Crystal,
Mondays are great, aren't they?
Thanks for discussing your 8th grade grad photos with Mr. Occelin. Your start time of 11:45am sounds good. We'll plan to arrive about 30 minutes prior to that to set up our equipment so we're ready for individual photos once the group photo is done. Molly is your photographer for these photos, while Matt is returning to finish the senior portraits. 
I've copied them both on this email so they can ask any questions or offer information they may have.
We're excited to celebrate your 8th graders!
Carrie$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$851EF243-3AD2-4E11-9E2A-80F1804BC7EC$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_0f107d3f38d7af7d$cid$, $src$google_calendar_import$src$, $uid$1a3fbt02c2ugscvbop45o9ll1u@google.com$uid$, $title$NEW Craig Elementary (2 teams)$title$, $d$2025-09-26$d$::date, $d$2025-09-26$d$::date, NULL, $arr$7:30am$arr$, $sch$NEW Craig Elementary$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Amy Wickham awickham23@gmail.com
Erin Perry ebeland20@gmail.com

Arrive: 7:30am
Start: students at 8am
End: by 1:45pm per Erin Perry on 9/10/25

Nisky school district
NEW Fall 2025
Indoor in gym *makeups will be elsewhere)
420 students and staff
Collages
Service strips
Talking to Treering for the yearbook

All-School composite - Carrie has example. PLEASE MEASURE THIS WHEN YOU'RE AT CRAIG FOR PIC DAY!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1a3fbt02c2ugscvbop45o9ll1u@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d4d380a45a9bb622$cid$, $src$google_calendar_import$src$, $uid$6bjg00fqldplq2l7bngmjpmi1j@google.com$uid$, $title$Milton and Lauren Monthly Meeting$title$, $d$2026-10-05$d$::date, $d$2026-10-05$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6bjg00fqldplq2l7bngmjpmi1j@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c71c7dd8ce88defe$cid$, $src$google_calendar_import$src$, $uid$30mmhboonhta5ckjv6p0aebqnr@google.com$uid$, $title$Milton Terrace Elem Makeup (1 team)$title$, $d$2026-11-04$d$::date, $d$2026-11-04$d$::date, NULL, NULL, $sch$Milton Terrace Elementary School Makeup$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Sarah Kinney, NEW main office admin
skinney@bscsd.org
Indoor
450 students + faculty/staff
Collages
Treering yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$30mmhboonhta5ckjv6p0aebqnr@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_87b254896e6b48f2$cid$, $src$google_calendar_import$src$, $uid$5negl8laq8i47nm0lb6r3e7na9@google.com$uid$, $title$PUBLIC SCHOOL WINTER RECESS$title$, $d$2026-02-16$d$::date, $d$2026-02-20$d$::date, NULL, NULL, $sch$PUBLIC SCHOOL WINTER RECESS$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5negl8laq8i47nm0lb6r3e7na9@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4c73bfb611a49b29$cid$, $src$google_calendar_import$src$, $uid$7vdkh7nrktituav7vus3c5rge6@google.com$uid$, $title$LCS New Students STEPH 3;45  Email Heather crosbie$title$, $d$2026-04-16$d$::date, $d$2026-04-16$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7vdkh7nrktituav7vus3c5rge6@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ec928da3e68afb7c$cid$, $src$google_calendar_import$src$, $uid$6bbt1d2v680cjes0krnp545506@google.com$uid$, $title$Tesago 5th Grade Group RAIN (1 photog)$title$, $d$2026-05-04$d$::date, $d$2026-05-04$d$::date, NULL, NULL, $sch$Tesago 5th Grade Group RAIN$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$RAIN DATE for pano only - need timing
SPRING PHOTOS (different contacts for fall and spring photos)
Emma Paradise 
paraemma@shenschools.org
SPRING PIC DAY CONTACT
*Darlene Kern: 
kerndarl@shenschools.org
, office admin$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6bbt1d2v680cjes0krnp545506@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_5651d9451aae46ef$cid$, $src$google_calendar_import$src$, $uid$42lmhgf6ol1mpk4p77l9rn1dpj@google.com$uid$, $title$Lodge Fest (Steph)$title$, $d$2025-09-20$d$::date, $d$2025-09-20$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$11 am - 2 pm$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$42lmhgf6ol1mpk4p77l9rn1dpj@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3fc44a39e9a116bf$cid$, $src$google_calendar_import$src$, $uid$08j0ikhgds58kivnpvnqsldfc7@google.com$uid$, $title$Okte Elem Makeup Day (1 photog)$title$, $d$2026-10-23$d$::date, $d$2026-10-23$d$::date, NULL, $arr$9:30am$arr$, $sch$Okte Elementary School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Colleen Awa

colleen.awa@gmail.com

Outdoor makeups

Arrive: 9:30am
Starting at 10am, going until 1pm
Front office will coordinate getting grades to us per Colleen. (I suggested a schedule we've in past years, grades every 15 minutes, with K am first and K PM last...awaiting final schedule) ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$08j0ikhgds58kivnpvnqsldfc7@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9ec0d1d85984d067$cid$, $src$google_calendar_import$src$, $uid$5f52deh3qpd8e9l8o1do3628t9@google.com$uid$, $title$AA Commencement$title$, $d$2026-06-09$d$::date, $d$2026-06-09$d$::date, NULL, NULL, NULL, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$The same as last year. Separate Commencements but both under the tent on the football field.

•     7:45 A.M. - Senior Breakfast in the Buttery
•     8:15 A.M. - Rose bouquets/Boutonnieres & ties distributed/Individual portraits taken in Senior Lounge
•     8:45/9:00 A.M. - Class Photo: Sun - Front Steps, Rain - Chapel
•     9:45 A.M. - Seniors assemble for Processional- Front Lawn (sun) or Buttery Level Hallway (rain)
•     10:00 A.M. - Commencement Begins
•     11:30 A.M. - Reception (Courtyard) & Family Photos (in front of Dais/under the tent)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5f52deh3qpd8e9l8o1do3628t9@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_980215beae989972$cid$, $src$google_calendar_import$src$, $uid$1usba8scip1i7qloaks6pp8clo@google.com$uid$, $title$TSL Rotterdam (1 photog REQ LAUREN)$title$, $d$2025-11-24$d$::date, $d$2025-11-24$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$TSL Rotterdam$sch$, $typ$spring picture day$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, $info$10/16/25 at 1:15pm, school req a Nov date; and again req Lauren as the photog ckg
**Please hold this date for school due to us messing up a few times last spring**
TWO locations, toddlers & preschoolers at 2617 Hamburg St, and new infants center across the street.
Natasha McKenzie
natashamckenzie33tsl@gmail.com
Arrival: 8am
Start: 8:30am (snack time is at 9:30 so finish before then!)
Indoor with Winter backdrop
15-ish  preschoolers, infants (not yet sure how many) and 4-6 teachers
Collages class photos
No commission$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1usba8scip1i7qloaks6pp8clo@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_004829d0169b1c4b$cid$, $src$google_calendar_import$src$, $uid$1h8aq5on24581lt5101io9430r@google.com$uid$, $title$LCS Graduation Morning (Matt + Beth)$title$, $d$2025-06-14$d$::date, $d$2025-06-14$d$::date, NULL, NULL, $sch$LCS Graduation$sch$, $typ$graduation/pano$typ$, ARRAY[$a$Matt$a$]::text[], ARRAY[]::text[], false, $info$Amy Thiel
Librarian/Lower School Tech Teacher/Graduation Coordinator
Loudonville Christian School
374 Loudon Rd. 
Loudonville, NY 12211
518.434.6051 x335
lcs.org
Ministry Center: photos before graduation from 9-10am
Graduation - 10:30am
4/25/25 confirmed; 2/19/25 holding based on LCS calendar ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1h8aq5on24581lt5101io9430r@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a2d6dd4483110633$cid$, $src$google_calendar_import$src$, $uid$17g42so3ifkt8fag6ivf166bpv@google.com$uid$, $title$Heatly Field Day RAIN (1 photog)$title$, $d$2026-06-17$d$::date, $d$2026-06-17$d$::date, $tm$10:00am$tm$, $arr$9:30am$arr$, $sch$Heatly Field Day RAIN$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jodi Fowler, field day coordinator
jfowler@greenisland.org
Jodi Mazzeo, yearbook editor (new pic day contact as of S26)
jmazzeo@greenisland.org
Stephanie Bouchey, principal
sbouchey@greenisland.org
5/20/26 emailed Jodi F, Stephanie B cc EL, MM ckg
Arrive:  9:30am
Start:  10am until noon
2nd free event for school
Event goes most of the day so school said they see when we were available and pick a window of time for us to be there.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$17g42so3ifkt8fag6ivf166bpv@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d829cc6cedbcee6d$cid$, $src$google_calendar_import$src$, $uid$396i85ic17nkno0ojiblb60gov@google.com$uid$, $title$Albany Academy 2 teams +1$title$, $d$2025-09-10$d$::date, $d$2025-09-10$d$::date, $tm$7:45am$tm$, $arr$7:15am$arr$, $sch$Albany Academy teams$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$TWO TEAMS PLUS CLASS PHOTOGRAPHER - LOWER AND MIDDLE SCHOOL
ONE TEAM - UPPER SCHOOL
Rebecca Trainor
TrainorR@albanyacademies.org
8/28/25 confirmed with Rebecca and Steph ckg
Set-up: 7:15am; Start: 7:45am
8/28/25 confirmed with Rebecca and Steph ckg
Indoor: LS/MS in Silipigno Lobby; US on Chapel Stage
Individuals of all students and faculty
group class photos of grades PS-4th Outdoors
IDs for grades 5-12 and faculty
Yearbook Upload to Treering x2
Wednesday, September 10 - Day 3
INDIVIDUAL PICTURES (Silipigno Lobby)
TIME SLOT
GRADE
8:10-8:30
1-2 (Ford)
8:30-8:50
K 1 (Hanifin)
8:50-9:10
2 (Kelly)
9:10-9:25
PreK 1 (Caschera)
9:25-9:45
K 2 (Valentine)
9:45-10:05
1-1 (Cooney)
10:05-10:20
7 boys
10:20-10:40
7 girls
10:40-11:00
6 boys
11:00-11:25
6 girls
11:35-11:55
4-1 (Lois)
11:55-12:15
4-2 (Lester)
12:15-12:35
PreK 2 (Stevens)
12:35-12:55
3 (Miorin)
12:55-1:15
5 boys
1:15-1:35
5 girls
1:35-1:55
8 boys
1:55-2:15
8 girls
CLASS PICTURES (LS/MS Front Steps)
TIME SLOT
GRADE
8:20-8:30
K 1 (Hanifin)
8:30-8:40
1-2 (Ford)
8:40-8:50
2 (Kelly)
9:00-9:10
PreK 1 (Caschera)
9:10-9:20
K 2 (Valentine)
9:30-9:40
1-1 (Cooney)
9:50-10:00
7 boys
10:00-10:10
7 girls
10:30-10:40
6 boys
10:50-11:00
6 girls
11:40-11:50
4-2 (Lester)
12:00-12:10
4-1 (Lois)
12:20-12:30
3 (Miorin)
12:40-12:50
PreK 2 (Stevens)
1:00-1:10
5 girls
1:20-1:30
5 boys
1:40-1:50
8 girls
2:00-2:10
8 boys$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$396i85ic17nkno0ojiblb60gov@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_959044c2dc827ed5$cid$, $src$google_calendar_import$src$, $uid$2k9nintm8i75u5gg02vqs5jaee@google.com$uid$, $title$Albany Law Headshots$title$, $d$2026-08-27$d$::date, $d$2026-08-27$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$12:30 - 2:30
I REQUESTED A ROOM WHERE WE CAN LEAVE OUR LIGHTS FOR THE TWO DAYS
 am not sure if you remember but last year, we did two days of headshots for our Flex JD students in August. These are our students who are coming from all across the country and are doing their JD degrees online. They will be back on-campus in August and was wondering if you would be available on Thursday, August 27 from 12:30 pm – 2:30 pm and then again on Friday, August 28 from 12:15 pm – 2:15 pm.

Let me know if you are available. I would love to see you.

Thank you so much,

Joanne

Joanne Casey
She|Her|Hers
Assistant Dean, Career and Professional Development Center
image003.png
80 New Scotland Avenue | Albany, NY 12208
518-472-5875| 
jcase@albanylaw.edu
www.albanylaw.edu/careers/
 | 
ALBANY
LAW LINK$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2k9nintm8i75u5gg02vqs5jaee@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7d2fbdde56bd3881$cid$, $src$google_calendar_import$src$, $uid$4in2nvnhtlf4a5ks0j3lbeg8sq@google.com$uid$, $title$Heatly First Day of School$title$, $d$2026-09-08$d$::date, $d$2026-09-08$d$::date, NULL, NULL, $sch$Heatly First Day of School$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jodi Mazzeo, yearbook editor (new pic day contact as of S26)
jmazzeo@greenisland.org
Stephanie Bouchey, principal
sbouchey@greenisland.org
Arrive:
Images for school and yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4in2nvnhtlf4a5ks0j3lbeg8sq@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_31065113d34ad037$cid$, $src$google_calendar_import$src$, $uid$2d6k3fcqpvdf12a3569h0u6qp3@google.com$uid$, $title$Siena Headshots 12;30-2;30 SSU$title$, $d$2027-02-12$d$::date, $d$2027-02-12$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2d6k3fcqpvdf12a3569h0u6qp3@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_53a76de258fe72ec$cid$, $src$google_calendar_import$src$, $uid$6rvho10mquappiti2vn33iueq2@google.com$uid$, $title$Eagle Point Spring Photos PK-4 (2 teams)$title$, $d$2026-03-11$d$::date, $d$2026-03-11$d$::date, $tm$8:20am$tm$, $arr$7:50am$arr$, $sch$Eagle Point Spring PK$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Chris Wood, main office admin (main picture day contact)
cwood@albany.k12.ny.us
Emily King, PTA contact
eaglepointpta@gmail.com
2 teams so we get done by lunch!
Setup: 7:50am
Start: 8:20am
Locations in the school: front lobby and 2nd floor lobby (Chris in main office will direct you)
NEW SPRING BACKDROPS!
All students except Grads - BEING DONE ON MAR 14 (school has caps./gowns)
Grad folders for all 5th graders
5th grade group pic done later, when they can go outdoors.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6rvho10mquappiti2vn33iueq2@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_192a54f584effd6b$cid$, $src$google_calendar_import$src$, $uid$6al78vbgfvqvd6agqv6js427gf@google.com$uid$, $title$Shaker seniors 1 photog plus assistant if possible$title$, $d$2026-04-23$d$::date, $d$2026-04-23$d$::date, NULL, NULL, $sch$Shaker photog assistant if possible$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6al78vbgfvqvd6agqv6js427gf@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ddc7fff903375903$cid$, $src$google_calendar_import$src$, $uid$29F14861-0882-4C99-B90A-163DED84A6AD$uid$, $title$Duanesburg senior night STEPH$title$, $d$2026-02-13$d$::date, $d$2026-02-13$d$::date, NULL, NULL, $sch$Duanesburg senior night$sch$, $typ$senior portraits$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$29F14861-0882-4C99-B90A-163DED84A6AD$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_65cf6c402e212e63$cid$, $src$google_calendar_import$src$, $uid$564hdv0agpusq89hjre3f3np41@google.com$uid$, $title$NY Farm Bureau Photo Booth$title$, $d$2026-02-09$d$::date, $d$2026-02-09$d$::date, NULL, NULL, NULL, $typ$photo booth$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$5-7 PM at the Empire State Convention Center
Contact 
lbeach@nyfb.org
Laurie Beach
Laurie Beach
 | Director of Events & Development
New York Farm Bureau
159 Wolf Rd, Ste 300
Albany, NY 12205
T
 518-431-5614
C
 518-764-4405$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$564hdv0agpusq89hjre3f3np41@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_13b046e8c15b84cd$cid$, $src$google_calendar_import$src$, $uid$4bl70e7emjkn6u71r3p16htso8@google.com$uid$, $title$RESCHEDULING: Melodies of Christmas Reception (afternoon)$title$, $d$2026-02-12$d$::date, $d$2026-02-12$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Also, looking ahead we are moving the little reception party to Albany Med Melodies Center on the afternoon of 2/12, and we'd love to have you come to that with a background and everything.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4bl70e7emjkn6u71r3p16htso8@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_fb6ab4f10b105222$cid$, $src$google_calendar_import$src$, $uid$614ECFF2-EEBA-4B18-A361-B5DE5BE4EE37$uid$, $title$Alloya Headshot 9am$title$, $d$2025-10-01$d$::date, $d$2025-10-01$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$614ECFF2-EEBA-4B18-A361-B5DE5BE4EE37$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3437e73c15555cae$cid$, $src$google_calendar_import$src$, $uid$2bb9d74leffnrpv3u2oounlpju@google.com$uid$, $title$Malta Ave Makeup Day (1 team)$title$, $d$2026-11-12$d$::date, $d$2026-11-12$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Malta Ave$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jenny Bottisti
(518) 884-7250 ext 1380
JBottisti@bscsd.org
Set-up: 8am - check in at main office with photo ID upon arrival.
Start: 8:30am
Indoor$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2bb9d74leffnrpv3u2oounlpju@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_1cc145d6430eadd7$cid$, $src$google_calendar_import$src$, $uid$1qdh93vadu72mlk0nilsgb96uo@google.com$uid$, $title$Little Llamas Preschool (1 photog)$title$, $d$2025-11-17$d$::date, $d$2025-11-17$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, $sch$Little Llamas Preschool$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$11/11/25 school cx day 2 in email to Emily ckg
Marisol Borrero, director
littlellamasinc@gmail.com
Hilltop Plaza
143 Troy Schenectady Rd
Watervliet, NY 12189
10/28/25 emailed Marisol to confirm ckg
Setup: 9am
Start: 9:30am
Morning classes only on both days
Indoor on BLUE
Individuals of students and teachers
Formerly Little Tots / Director is a longtime iGrow mom and iSmile customer
Providing 5x7s of teachers to them for free (carryover perk from many years ago)
1 All School Collage
11/5/25 **Carrie okay'ed director's son being photographed with her when she has her staff photos done!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1qdh93vadu72mlk0nilsgb96uo@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c63d15cb5b947b4d$cid$, $src$google_calendar_import$src$, $uid$0nrimvquct2jshvv4e7qml2fmm@google.com$uid$, $title$Gordon Creek PANO 5th Grade (1 photog)$title$, $d$2026-05-13$d$::date, $d$2026-05-13$d$::date, $tm$9:15am$tm$, $arr$8:45am$arr$, $sch$Gordon Creek 5th Grade$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Katie Bennice, admin
KBennice@bscsd.org
(518) 884-7270 ext.3368
4/29/26 emailed Katie cc Beth and Katie confirmed ckg
Setup: 8:45AM in front of playground.
Start: 9:15am
Group photos, OUTDOOR IN FRONT OF PLAYGROUND. 
We are invoicing the school $6 per print; PTA will pay for them. This is the option they chose in lieu of us photographing the entire student body in the spring.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0nrimvquct2jshvv4e7qml2fmm@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_db92557c0a19b5c4$cid$, $src$google_calendar_import$src$, $uid$20q950p2cdhlaaarppd0247iah@google.com$uid$, $title$OOBF Headshot 1PM (MATT)$title$, $d$2025-07-14$d$::date, $d$2025-07-14$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Matt$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$20q950p2cdhlaaarppd0247iah@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e1dadb41370b44e7$cid$, $src$google_calendar_import$src$, $uid$28ljiummuuj5380bvfr8o4kaku@google.com$uid$, $title$MLK Jr. Elementary Makeups (1 teams)$title$, $d$2026-01-08$d$::date, $d$2026-01-08$d$::date, NULL, $arr$8:00$arr$, $sch$MLK Jr. Elementary$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jasmine Santiago, MLK secretary/PTO president
santiagoj@schenectadyschools.org
518-881-3680
10/10 booked; 10/6/25 ckg offered dates
Schenectady School District
1/2/26 proposed schedule and cc'ed Beth. The school's response is below. Carrie copied it into the calendar on 1/3/26.
JASMINE SANTIAGO
Fri, Jan 2, 9:18 AM (23 hours ago)
to me, Beth
Good Morning!
Hope the holidays have been good for you and family! Thank you so much for this. I am actually at work today. I truly appreciate the reminder.
We would prefer to start earlier. Could we do : 
7:15 setup
8:00 PreK and K
8:15 1st and 2nd
8:30 3rd and 4th
8:45 5th and latecomers
9:00 breakdown our equipment
Indoor in cafeteria
individuals of students and all staff (360 students PK-5, SPED)
collages
commission
service strips
no yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$28ljiummuuj5380bvfr8o4kaku@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_52704cebbf600bd9$cid$, $src$google_calendar_import$src$, $uid$50ijrb2ufqqnd8r7h7h3a2suto@google.com$uid$, $title$Wood Road Spring Pics & 5th Grade Pano (2 teams)$title$, $d$2026-05-08$d$::date, $d$2026-05-08$d$::date, $tm$9:15am$tm$, $arr$8:45am$arr$, $sch$Wood Road &$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$MaryBeth Leslie, main office admin
mleslie@bscsd.org
4/16/26 confirmed with MB ckg
Setup: 8:45 am
Start:   9:15 am
Outdoor push in for bad weather
Individuals of all students
5th grade group photo unless it rains, use rain date 
Wood Road Spring Picture Day - Friday, May 8 - Outside (if possible) or DTR if raining or too cold
Time 
Teacher 
Teacher
Teacher
9:10-9:30
Monastero (4 - 18)
Mongeon (4 - 20)
Kloc (SE - 11)
9:30-9:50
Doig (SE - 8)
Ditlefsen (SE - 8)
LaMacchia (SE - 11)
9:50 - 10:10
Smiley (5 - 19)
Church (5 - 19)
10:10 - 10:30
Smith (3 - 20)
Lovett (3 - 20)
10:30 10:50
Van Volkenburg (3 - 20)
Damico (3 - 18)
10:50 - 11:10
Tomaso (K - 18)
Cyr (K - 17)
11:10- 11:30
Mancini (K - 16)
Cross (K - 19)
11:30 - 11:50
Fersch (5 - 18)
Rockwell (5 - 20)
11:50 - 12:10
Brunson (1 - 21)
Clark (1 - 18)
12:10 - 12:30
Gronau (1 - 20)
12:30 - 12:50
Osinski (2 - 19)
Bullock (2 - 19)
12:50 - 1:10
Morgan* (2 - 19)
Haessig* (2 - 20)
1:10 - 1:40
LUNCH
LUNCH
LUNCH
1:40 - 2:00
French (4 - 21)
DeLeonardis (4 - 22)
2:00
5th Grade Panoramic - on playground - weather permitting
*Recess monitors will meet you at photo location$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$50ijrb2ufqqnd8r7h7h3a2suto@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_056177f5d6da6cfd$cid$, $src$google_calendar_import$src$, $uid$3n2iunfdkq296orb4t6ijvfiuh@google.com$uid$, $title$Siena Career Fair 1 Photog$title$, $d$2026-02-18$d$::date, $d$2026-02-18$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$February 18, 2025
 | 12:30 PM – 2:00 PM | Student Center$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3n2iunfdkq296orb4t6ijvfiuh@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_892f689450c1dbb6$cid$, $src$google_calendar_import$src$, $uid$3fi3cct4374rtap3ng9m937klf@google.com$uid$, $title$Christ the King ECC (1 team)$title$, $d$2025-10-14$d$::date, $d$2025-10-15$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Christ the King ECC$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Shavone Diaz (new 2025-26)
shavcam@aol.com
10/8 confirmed; 9/23 emailed Shavonne to confirm timing and get rosters ckg
Arrive: 8:30am
Start: 9am
approx 140-155 students ages 3-4, 45 faculty/staff
Indoor students and faculty
Class Collages
Faculty ID cards
ABSOLUTELY NO Service Strips
schedule recd 10/8/25 from Shavonne:
October 14
9:00 - 105*
9:30 - 106
10:00 - 109
10:30 -111
October 15
9:00 - Todd 1/Todd 2 (114/115)
9:30 - 105*
10:00 - 108
10:30 - make up photos
*MWF and TTh students$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3fi3cct4374rtap3ng9m937klf@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_30274c7b3cb31469$cid$, $src$google_calendar_import$src$, $uid$30dbh7foreffikmjjdt928t6qq@google.com$uid$, $title$Troy School 14 MAKEUPS (1 team)$title$, $d$2025-12-16$d$::date, $d$2025-12-16$d$::date, NULL, $arr$7:15am$arr$, $sch$Troy School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$David Rossi, Asst Principal
rossid@troycsd.org
518-328-5811
Christine Roe, David's new admin asst
roec@troycsd.org
Setup at 7:15am to Start photos at 7:45am.
School days runs from 7:30am to 2:05pm
11/20/25 proposed this schedule:
9:30 set up
10:00 K and 1st
10:15 2nd and 3rd
10:30 4th and 5th
11:00 latecomers
11:15 pack up
Staff can come to us anytime while we are there$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$30dbh7foreffikmjjdt928t6qq@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_5797791359039aaa$cid$, $src$google_calendar_import$src$, $uid$7hd4fs5ounr0vgnrub4vt4avtc@google.com$uid$, $title$December Scheduling Call 3pm$title$, $d$2025-11-12$d$::date, $d$2025-11-12$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$meet.google.com/yjz-jhsi-nzz$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7hd4fs5ounr0vgnrub4vt4avtc@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a3e4c67803a0276a$cid$, $src$google_calendar_import$src$, $uid$7mqba6166u9u12c8c1rbj7s3t7@google.com$uid$, $title$Shaker seniors 2 photogs$title$, $d$2026-04-21$d$::date, $d$2026-04-21$d$::date, NULL, NULL, $sch$Shaker photogs$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7mqba6166u9u12c8c1rbj7s3t7@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_945ab9f42ea5701f$cid$, $src$google_calendar_import$src$, $uid$0q9ra09g0n91gfiqk46jd7qsqs@google.com$uid$, $title$Wood Road Yearbook Photos (1 photog)$title$, $d$2027-03-09$d$::date, $d$2027-03-09$d$::date, $tm$9:20$tm$, $arr$9:00am$arr$, $sch$Wood Road Yearbook$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Heather Thomas, yearbook editor
hthomas@bscsd.org
WILL BE NEW (MaryBeth retired)  main office admin
E
mail: 
Arrive at 9am to begin photos at 9:20am
Indoor group photos for the yearbook in the DTR.
Leslie, MaryBeth
Wed, Mar 4, 5:38 PM (7 days ago)
to Beth, me, Heather
Hi Beth,
I believe we would like to start photos at 9:20. I have reserved the DTR and will have our backdrop all set up.  I am finalizing what groups will come when but we need to photograph 4 or 5 OM teams, the student council and the yearbook club.  I would think we will be done in about 45 minutes.  
I hope to have a final schedule for you by Friday, but if we could plan to start at 9:20 that would be great. 
Thank you, 
MaryBeth
Beth Picciano
Wed, Mar 4, 5:53 PM (7 days ago)
to MaryBeth, me, Heather
Hi MaryBeth,
That sounds good! I will plan to arrive a little before 9 to get set up. 
Best,
Beth$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0q9ra09g0n91gfiqk46jd7qsqs@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_69b89d1f9f434810$cid$, $src$google_calendar_import$src$, $uid$6188a9gsunhoofegbu42d0c0qe@google.com$uid$, $title$HOLD Arongen Elem MAKEUPS (1 team)$title$, $d$2026-11-05$d$::date, $d$2026-11-05$d$::date, NULL, NULL, $sch$HOLD Arongen Elementary School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mallory Detzel, NEW PTO Contact as of 25-26
detzel101312@gmail.com
Cindi Breen, main office admin
breecind@shenschools.org
Cindi makes the schedule$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6188a9gsunhoofegbu42d0c0qe@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d1113a7d309b77a6$cid$, $src$google_calendar_import$src$, $uid$5dnu1ts114dpfqtfv6k82v3njo@google.com$uid$, $title$Wildwood Makeups (AM only ANDREW)$title$, $d$2025-11-24$d$::date, $d$2025-11-24$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, $sch$Wildwood$sch$, $typ$makeup/retake$typ$, ARRAY[$a$Andrew$a$]::text[], ARRAY[]::text[], false, $info$Jill Wood 
jwood@wildwoodprograms.org
518-836-2200 x2212 
Curry Road site (any Latham students will come to Curry Rd)
11/14/25 confirmed with Jill ckg
Arrive: 9am
Start: 9:30am
End: no later than 11:30am
Indoor 
students with special needs 
Individuals pics of all students 
Continuous lights? 
No collages or class photos 
Needs PSPA for yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5dnu1ts114dpfqtfv6k82v3njo@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_dde043c32c112b1a$cid$, $src$google_calendar_import$src$, $uid$6desbleb799k5sr6rsjq3ka7u4@google.com$uid$, $title$Nathan Lebron Early Learning Center (1 team)$title$, $d$2026-03-13$d$::date, $d$2026-03-13$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Nathan Lebron Early Learning Center$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Shameena Aziz
asst site director (WORK WITH SHAMEENA WHILE BREAKING IS ON LEAVE)
saziz@albanycap.org
Breanna Reyes (8/5/25 ON MATERNITY LEAVE)
Site Supervisor 
Nathan Lebron Early Learning Center
170 Ontario St
Albany NY 12206

Tel: 
(518) 729-2001

breyes@albanycap.org

www.albanycap.org

2/26/26 times comfirmed with Shameena; 2/17/26 emailed to confirm ckg
Arrive: 8:30am
Start: 9am
two photo teams in gym 
Indoor with spring backdrop (cannot have anything specifically holiday-ish)
80 students
Ages 2-4 year olds
GROUP class photos in fall$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6desbleb799k5sr6rsjq3ka7u4@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_5ca863e397cc7237$cid$, $src$google_calendar_import$src$, $uid$909FC6E8-9E6F-4BAB-A230-A11A92793B2C$uid$, $title$Steph Binghamton to assist Kim$title$, $d$2025-11-19$d$::date, $d$2025-11-19$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$909FC6E8-9E6F-4BAB-A230-A11A92793B2C$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_dc59af754a4182c8$cid$, $src$google_calendar_import$src$, $uid$7ne1edgppoms4ccm1ob22a5e6g@google.com$uid$, $title$Shatekon PANO RAIN DATE (1 photog)$title$, $d$2027-04-26$d$::date, $d$2027-04-26$d$::date, NULL, NULL, $sch$Shatekon$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Rain date for PANO only per school$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7ne1edgppoms4ccm1ob22a5e6g@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_80ea29db2de8197f$cid$, $src$google_calendar_import$src$, $uid$2nm52g5iauijuhraseeu76j83n@google.com$uid$, $title$HOLD Karigon Spring Photos + 5th grade group (2 teams)$title$, $d$2027-05-06$d$::date, $d$2027-05-06$d$::date, $tm$8:10am$tm$, $arr$7:40am$arr$, $sch$HOLD Karigon Spring 5th grade group$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Nupoor Gordon, main office admin
gordnupo@shenschools.org
Setup: 7:40am
Start: 8:10am
Outdoor pushing indoors for students if bad weather. Rain date for pano only.
Full school - individuals and 5th grade group
5th grade pano taken during the lunch recess when kiddos are on playground. It'll be on the schedule.
Asking for teachers to help get the kids organized into their group for this pic.
PANO NOTES: OPTION 3 - NO COST PANO
We will donate an 8"x24" pano for each student, teacher, and one framed for your hallway if we can do a spring photo day for ALL students instead of just the 5th graders. Being able to photograph all students (hopefully outdoors so they get something much different than the fall) helps us offset the cost to make the pano for you for the graduating kids.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2nm52g5iauijuhraseeu76j83n@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_8707ee157ecf29eb$cid$, $src$google_calendar_import$src$, $uid$4eskhltbs7ugbimeggdjn0buu0@google.com$uid$, $title$NEW No. Albany MS (2 teams)$title$, $d$2026-10-14$d$::date, $d$2026-10-15$d$::date, NULL, NULL, $sch$NEW No. Albany Middle School$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$NAMS PTA
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
Yearbook - find out details$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4eskhltbs7ugbimeggdjn0buu0@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_89bd4223dbc9d874$cid$, $src$google_calendar_import$src$, $uid$47ajfmtnvp0sf79iuud6efolup@google.com$uid$, $title$SMS BRANDING STEPH$title$, $d$2026-09-08$d$::date, $d$2026-09-08$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$9:45 start

We start with mass at 9am which should be done by 9:45 then just the rest of the day.. so tell me what works for you!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$47ajfmtnvp0sf79iuud6efolup@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_8812b64896d13bc2$cid$, $src$google_calendar_import$src$, $uid$74nq9a93ve31j6ako9e28eai51@google.com$uid$, $title$Hudson Valley Consortium Makeups FULL DAY (REQ Molly +1)$title$, $d$2025-11-04$d$::date, $d$2025-11-04$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, $sch$Hudson Valley Consortium FULL DAY$sch$, $typ$makeup/retake$typ$, ARRAY[$a$Molly$a$]::text[], ARRAY[]::text[], false, $info$10/12/25 REQ Molly, and strongly suggest sending a strong assistant. QR card problems at this school on picture day 1, coupled with the picture day contact being a critical photographer, have made them less than satisfied with the original images. NO PERMISSION SLIP needed as that may fuel her complaints. ckg
Teresa Rieder
hvcteresarieder@gmail.com
Arrive: 9am
Start: 9:30am - prepare for a FULL DAY to accommodate Thursday students traveling in
Indoor
Home school basis with 200 students, grades Infants -12
Meets on Tuesdays and Thursdays 
Individuals of students, no faculty
no class pics
Yearbook support$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$74nq9a93ve31j6ako9e28eai51@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7fd947e1b86ecb6d$cid$, $src$google_calendar_import$src$, $uid$636d7trulpogtd8onnjcm12n3i@google.com$uid$, $title$Van Corlaer Elem (2 teams)$title$, $d$2025-10-06$d$::date, $d$2025-10-06$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Van Corlaer Elementary School$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$9/22/25 confirmed ckg; 8/6/25 per Denise, should be back on Guilderland Ave for the 25-26 school year. ckg
(518) 881-3980
EMAIL BOTH THE PRINCIPAL AND SECRETARY!
DENISE LEHMAN, school secretary

lehmand@schenectadyschools.org
Tanya Delameter, principal
delamatert@schenectadyschools.org
Check in at main office with photo ID first!
9/22/25 confirmed with Denise & Tanya ckg
Setup at 8am; 
Start at 8:30am, classes every 20 minutes (requested 9/22/25 ckg)
460 students (hence the two photo teams) and all faculty
In the gymnasium
Class collages
Attendance files$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$636d7trulpogtd8onnjcm12n3i@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d5be947935f41d2e$cid$, $src$google_calendar_import$src$, $uid$7oegj3e2jn2i9kmrp1bct7ftlc@google.com$uid$, $title$Mother Teresa Academy (2 teams)$title$, $d$2025-10-06$d$::date, $d$2025-10-06$d$::date, $tm$10:00am$tm$, $arr$9:30am$arr$, $sch$Mother Teresa Academy$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Holli Riviezzo 
mshollimta@gmail.com
msholli@motherteresaacademy.org

518-280-4227
Mother Teresa Academy
1 Executive Park Drive
Clifton Park, NY 12065
Arrival: 9:30am (due to chapel per Beth 9/30/25 ckg)
Photo Start Time: 10am
Indoor
FALL BACKDROP 
TAKE A PHOTO OF THE BACKGROUND TO USE LATER FOR MAKEUPS! 
100+  students
15-ish faculty
Group class photos - as of 6/25/25 we're only taking these ONCE during the school year. MTA has decided SPRING.
All school photo - see note under Group class photos.
PSPA for yearbook
Smug link to all group photos - they put in their yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7oegj3e2jn2i9kmrp1bct7ftlc@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_11886a61625facd8$cid$, $src$google_calendar_import$src$, $uid$71vfk1s5jh4qntd3pubife1cu4@google.com$uid$, $title$Malta Ave Picture Day & 5th Grade Pano (2 teams)$title$, $d$2027-04-15$d$::date, $d$2027-04-15$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, $sch$Malta Ave &$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jenny Bottisti
(518) 884-7250 ext 1380
JBottisti@bscsd.org
Set-up: 9am - check in at main office with photo ID upon arrival.
Start: 9:30am
2pm: one team stays for club pics for the yearbook
5th grade group on or near playground OUTSIDE about 10am. They have recess on the playground beginning at 10:15, so we need to be done by then. If rain, use rain date for only pano.
INDIVIDUAL PHOTOS INDOOR in auditorium - need two spring backdrops.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$71vfk1s5jh4qntd3pubife1cu4@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_17c54046955838ab$cid$, $src$google_calendar_import$src$, $uid$2g66bkqkfc98hojjo2tar2gg7a@google.com$uid$, $title$Atrea ELC SHEN Makeups (1 team)$title$, $d$2026-10-27$d$::date, $d$2026-10-27$d$::date, NULL, NULL, $sch$Atrea ELC SHEN$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Erica Ryan, Principal
ryaneric@shenschools.org

NEW Shen K school
600+ kindergarten students at 5/8/26

5 Maxwell Dr.
Clifton Park, NY 12065
518-881-0500

Indoor
individuals of students and staff
Service items?
Yearbook?$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2g66bkqkfc98hojjo2tar2gg7a@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9c50a46184f938e3$cid$, $src$google_calendar_import$src$, $uid$6251CAF4-C5D2-4102-8E00-2327EDA60824$uid$, $title$Steph off if possible$title$, $d$2025-09-11$d$::date, $d$2025-09-11$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6251CAF4-C5D2-4102-8E00-2327EDA60824$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_6811e47d6cb33bde$cid$, $src$google_calendar_import$src$, $uid$13ecoj9u3llno96iqdn232sb53@google.com$uid$, $title$Duanesburg SENIORS (1 team)$title$, $d$2025-09-06$d$::date, $d$2025-09-07$d$::date, NULL, NULL, $sch$Duanesburg$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Liz DeMarco
edemarco@duanesburg.org

5/21/25 BOOKED AND REQUESTED WEEKEND DAYS. ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$13ecoj9u3llno96iqdn232sb53@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7bb5117445872b72$cid$, $src$google_calendar_import$src$, $uid$2cfu6uu1vcms9c574cqdrst19o@google.com$uid$, $title$NEW Childtime Preschool (w/grads) (2 teams)$title$, $d$2026-04-20$d$::date, $d$2026-04-20$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$NEW Childtime Preschool w/grads$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Hannah Sears, Director
hannah.sears@childtime.com
518-373-0506
Address: 853 Rt 146, Clifton Park NY 12065
Arrive: 7:30am
Start: 8am
Outdoor pushing to the School-Age classroom for both teams, with a spring background if bad weather
130 students
Individuals of students and staff, also grad cap & gown pics of students moving up. SCHOOL HAS CAPS & GOWNS. (They are red).
Collages
Molly Sosnow
Fri, Apr 17, 3:10 PM (6 days ago)
to Hannah, Beth, me, Matthew
Hi Hannah!
That sounds great, thank you so much! Yes, any students who need retake/makeup photos can book a free appointment at our studio located at 84 Everett Road in Albany. Here is a direct link to the booking site if that's helpful: 
https://book.
usesession.com/t/gu0j8HrY_b
See you Monday! 
On Fri, Apr 17, 2026 at 12:12 PM Hannah Sears <
hannah.sears@childtime.com
> wrote:
Good morning, 
So sorry for the delayed response. We are looking forward to picture day Monday! We do not need cap and gown photos done anymore, just trying to keep it as unhectic as possible. We would like to have sibling pictures done, we will start with infants, do siblings to them, and hopefully we can just do the older sibling at that time as well. I will be here Monday morning so I can explain that a bit clearer than if need be. When you get here, you can use your discretion for where the best spot outside and if the weather is not great, we can figure that out as all of our rooms have electrical outlets, so that should be no problem. One other thing parents were wondering, if their child is not scheduled to be here on Monday will they have an opportunity to receive their pictures in the studio? We will make sure you have a table for your supplies and we look forward to having you!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2cfu6uu1vcms9c574cqdrst19o@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_cd2782f17950ac69$cid$, $src$google_calendar_import$src$, $uid$126kgs2vuggqg3cm3b87ub805r@google.com$uid$, $title$Duanesburg AYSO Soccer (2 teams)$title$, $d$2025-08-05$d$::date, $d$2025-08-05$d$::date, NULL, $arr$5:30pm$arr$, $sch$Duanesburg AYSO Soccer$sch$, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Gus Geidel
518-339-6451 

hgeidel@gmail.com

Begin at 6pm - 8pm
Set-up at 5:30pm
Outdoor
Upper Field, and Lower Field @ Duanesburg High School fields on Alexander Road (across the street from Lady of Fatima Church at 1735 Alexander Rd, Delanson, NY 12053)

16 teams (estimated) and the Playground Group Team of about 24 players
Group team pictures$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$126kgs2vuggqg3cm3b87ub805r@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d6dc5de7f436f911$cid$, $src$google_calendar_import$src$, $uid$258homj2ql40aqcnlcaor1nb04@google.com$uid$, $title$Headshot 9;45 New Head Michael Turner$title$, $d$2026-02-20$d$::date, $d$2026-02-20$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$258homj2ql40aqcnlcaor1nb04@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3dc1be388c468d8e$cid$, $src$google_calendar_import$src$, $uid$3e81ls2qa1epcualbgargfkoiv@google.com$uid$, $title$Saint Mads Photos & 5th grade group (1 team)$title$, $d$2026-05-12$d$::date, $d$2026-05-12$d$::date, NULL, $arr$7:45am$arr$, $sch$Saint Mads & 5th grade group$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kelly Sloan, Principal
ksloan1@smsschool.org
Crystal Quatrini, main office admin
cquatrini@smsschool.org
5/5/26 Crystal confirmed ckg; 4/27/26 emailed Kelly & Crystal cc Beth, Erin ckg
Setup: 7:45am (school opens at 7:10am)
Start pics at 8:15am
Outdoor  - all students, push inside if bad weather per Crystal in main office 
5th grade group class photo in sanctuary - provide 8x10s and 5x7s of these to school to include in diplomas$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3e81ls2qa1epcualbgargfkoiv@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f5d365a790544e4f$cid$, $src$google_calendar_import$src$, $uid$2rct2qtu6388neel73jq8l86qt@google.com$uid$, $title$Emerging Leaders Summit Headshots$title$, $d$2026-06-04$d$::date, $d$2026-06-04$d$::date, NULL, $arr$7:30$arr$, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$8:00 start, arrive 7:30
Done at 11:30

Please set up GotPhoto like Albany Law headshots

This is at CDPHP on Wellness Way in Latham

Time TBD but will be morning

Brittany Lawton is the committee chair, Tom Nolte asked us to do it$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2rct2qtu6388neel73jq8l86qt@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_91e5f0c38ba7da81$cid$, $src$google_calendar_import$src$, $uid$6ea7u9itd44tcfi30l9nd7bpum@google.com$uid$, $title$Academy Reunion$title$, $d$2026-05-15$d$::date, $d$2026-05-15$d$::date, NULL, NULL, $sch$Academy Reunion$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6ea7u9itd44tcfi30l9nd7bpum@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ea084d59b807a831$cid$, $src$google_calendar_import$src$, $uid$B6E5FCDB-5660-41D2-B43A-660A684E8F3E$uid$, $title$Academy Spring Sports ALL$title$, $d$2026-03-24$d$::date, $d$2026-03-24$d$::date, $tm$2:30pm$tm$, $arr$2:00pm$arr$, $sch$Academy ALL$sch$, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Paul Gallucci, AD
galluccp@albanyacademy.org
Arrive: 2pm, Start 2:30pm (schedule below)
Location: Field House Conference Room
Paul Gallucci
12:23 PM (20 minutes ago)
to Doug, Peter, Jonathan, Paul, Darin, gio6971@gmail.com, pgreen@sportimeny.com, Michael, Tom, me, Matthew
Good Afternoon Everyone:
Here is the schedule for Tuesday 3/24. Pictures will be taken in the field house conference room.
2:30 - B Lax
2:45 - B/G Track
3:10 - Baseball
3:25 - Softball
3:40 - G Lax
3:50 - B Tennis
PAUL L. GALLUCCI
DIRECTOR OF ATHLETICS$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$B6E5FCDB-5660-41D2-B43A-660A684E8F3E$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2175041cabcaedfc$cid$, $src$google_calendar_import$src$, $uid$0bb5f0j855nird7rckq1mrqfle@google.com$uid$, $title$Rosendale Elem Moving Up Ceremony AM (1 photog)$title$, $d$2026-06-23$d$::date, $d$2026-06-23$d$::date, NULL, NULL, $sch$Rosendale Elementary School Moving Up Ceremony AM$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Ashley Feldman, PTO picture day contact
ashleyfeldman929@gmail.com
Morning
take candids before the ceremony
photos of each 5th grader as they cross the stage and receive their moving up certificate

6/2/26 June 23 (Moving Up Ceremony) - It starts at 8AM and runs through around noon as well! Emailed Ashley cc Beth ckg
3/24/26 booked, details to follow ckg
Ashley Feldman
9:01 AM (2 hours ago) 3/25/26
to me
I'm waiting to confrim to with our principal, but it sounds like Moving Up Ceremony is a go!  It would be June 23 and it starts at 8:30AM but there will be decorations,etc set up that maybe you could take pictures before the actual ceremony starts if possible.  The latest it would wrap up is 10:45 I believe, but again will confirm once I have those details.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0bb5f0j855nird7rckq1mrqfle@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_0be3d1512c036dd0$cid$, $src$google_calendar_import$src$, $uid$7i57j1njf1njboclnvbh1ricq1@google.com$uid$, $title$Duanesburg Makeup Day Elem & MSHS (1 team)$title$, $d$2025-10-17$d$::date, $d$2025-10-17$d$::date, NULL, NULL, $sch$Duanesburg Elementary School & MSHS$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Leah Simpson, elementary school admin
lsimpson@duanesburg.org

Andrea Hunter, high school admin
ahunter@duanesburg.org$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7i57j1njf1njboclnvbh1ricq1@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d954e7e888f9fe1a$cid$, $src$google_calendar_import$src$, $uid$5rhptubl11fafmbg7af463gu1c@google.com$uid$, $title$Photo Booth Siena President Son Wedding$title$, $d$2026-06-20$d$::date, $d$2026-06-20$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Whoever does this will receive $100 on site from the president of Siena!

The Seiferts would love that and are very appreciative! $100 is fine! Just let me know what the best way to pay is (check, online, etc.), and I will let them know. The location will be at their house on campus. The address is 33 Fidlers Lane, Loudonville NY 12211. I can't thank you enough! Let me know what drop off/pick up teams work best for your team!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5rhptubl11fafmbg7af463gu1c@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4d35aff6e190bac1$cid$, $src$google_calendar_import$src$, $uid$2ffs0ie424d708o74evpcrquj2@google.com$uid$, $title$Loudonville Christian Makeup/Seniors Day (1 team)$title$, $d$2025-10-22$d$::date, $d$2025-10-22$d$::date, NULL, $arr$8:15am$arr$, $sch$Loudonville Christian Makeup/ Day$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Underclass Makeups & Senior Makeups

Bonnie Strock
bstrock@lcs.org
10/10 propsed schedule ckg
7:45am set up
8:15am - underclass and teacher makeups
9:15am senior retakes (if there are any - let us know ahead of time so we can bring the senior props)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2ffs0ie424d708o74evpcrquj2@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2fce7fe400b00b59$cid$, $src$google_calendar_import$src$, $uid$28c5tevsk0544vfocb1ivfv93p@google.com$uid$, $title$Mother Teresa Academy Makeups (1 team)$title$, $d$2025-11-12$d$::date, $d$2025-11-12$d$::date, $tm$10:00am$tm$, $arr$9:30am$arr$, $sch$Mother Teresa Academy$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Holli Riviezzo 
mshollimta@gmail.com
msholli@motherteresaacademy.org

518-280-4227
Mother Teresa Academy
1 Executive Park Drive
Clifton Park, NY 12065
Arrival: 9:30am (due to chapel per Beth 9/30/25 ckg)
Photo Start Time: 10am
(group pictures booked for the spring)
Indoor with fall background - check what we did on picture day
11/3/25 confirmed this schedule:
9:30am set up
10:00am Preschool
10:15am PreK
10:30am K
10:45am latecomers and staff
11:00am pack up$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$28c5tevsk0544vfocb1ivfv93p@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_1d3d161415efc885$cid$, $src$google_calendar_import$src$, $uid$3ikodb14979r15q7qtsd263mm2@google.com$uid$, $title$Colonie Comm Daycare RAIN$title$, $d$2026-05-12$d$::date, $d$2026-05-12$d$::date, NULL, NULL, $sch$Colonie Comm Daycare RAIN$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$see May 11 :)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3ikodb14979r15q7qtsd263mm2@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_af4690333f50ecf9$cid$, $src$google_calendar_import$src$, $uid$5t9aj2dkr3jrkfts1uummgi4vn@google.com$uid$, $title$SCAP Early Learning Bigelow (2 teams)$title$, $d$2026-03-25$d$::date, $d$2026-03-25$d$::date, NULL, $arr$8:00am$arr$, $sch$SCAP Early Learning Bigelow$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Erin Baker, asst director (schedule with Erin)
ebaker@scapny.org
518.377.8539
Bigelow Contact for Schedule and when we're on site for photos: 
Karyn Morales-Frolish <
kfrolish@scapny.org
>
3/2/26 emailed Erin to confirm ckg
Opens at 7:30am, arrive at 8am to start photos at 8:30am
Bigelow: approx 144 children ages 3-4 yrs in 8 classrooms
Erin Baker
11:20 AM (0 minutes ago)
to Beth, Andrew, Corinne, me, Matthew
Good morning,
Sound great- we will have you starting at 830 am in classroom 101. Please ask for Mary- site supervisor - when you arrive. Below is the schedule of classrooms for the 25th. Please let me know if you need anything additional. 

Room 105
Room 107
Room 106
Room 111
Room 103
Room 104
Room 109
Room 110
Room 108
Thanks,
Erin
lunch starts at 12pm
100 Bigelow Avenue
Schenectady, NY 12304
Indoor with spring background
Photograph all children and faculty
Collage
 class photos$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5t9aj2dkr3jrkfts1uummgi4vn@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_005dcad4e4412911$cid$, $src$google_calendar_import$src$, $uid$6scqqlo1c09pathn11j4iavsqv@google.com$uid$, $title$TBC Tax Seminar Steph$title$, $d$2025-08-20$d$::date, $d$2025-08-20$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$8:30 am Duo at the Dunes
program begins at 9$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6scqqlo1c09pathn11j4iavsqv@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_59bfb5e34c35173e$cid$, $src$google_calendar_import$src$, $uid$0bll1pjct3jb16v90uf3il8to6@google.com$uid$, $title$Yates Elementary (1 team)$title$, $d$2025-10-23$d$::date, $d$2025-10-23$d$::date, NULL, $arr$7:30$arr$, $sch$Yates Elementary$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Samantha Eichle, Vice Principal
eicheles@schenectadyschools.org
Set up 7:30-8:00am; 8:20am start time
Indoor
Individuals of Students and Faculty
Collages (Megan)
Yearbook (Treering) and attendance system support (Megan)
NO MONDAYS$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0bll1pjct3jb16v90uf3il8to6@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f119b017db7d7b57$cid$, $src$google_calendar_import$src$, $uid$773jvcqo1cos7v9ouhnjoid3ef@google.com$uid$, $title$Duanesburg Elementary (2 teams+1)$title$, $d$2025-09-19$d$::date, $d$2025-09-19$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$Duanesburg Elementary$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Leah Simpson, secretary to the principal
lsimpson@duanesburg.org
Please check in at the main office upon arrival. Need a photo ID. 
9/18 recd schedule ckg; 9/15 still working on schedule per Molly's email ckg; 9/10 Leah working on schedule ckg
Set-up: 7:30am, Staff start at 8am; Students start time: 8:20am 
Indoor in GYM (confirmed 9/10 with Leah)
Individuals of all students and faculty/staff
All service items
Group class photos
Treering Yearbook - we upload all
School picture day will be held in the gym on Friday 9/19/25. 
Here's the schedule!
8:20 AM 
KM + KJ
8:40 AM
KG +2V
9:00 AM
UPK D + UPK V + UPK MD
9:20 AM
2W
9:40 AM
2C + 1L
10:00 AM
1R + 1N
10:20 AM
3K + 3L
10:50 AM
4G + 4JG
11:00 AM
5D + 5F
11:20 AM
Staff
All special area teachers, please feel free to stop by during any down time to get your picture taken. All classroom teachers and aides, please take your picture when you are there with your class.
Please have your students line up in alphabetical order before heading to the Gym!
Hi Leah, 
That's no problem at all, we can definitely start students at 8:20am instead! Would we still be starting staff at 8am?  Thank you!! 
On Mon, Sep 15, 2025 at 8:42 AM Leah Simpson <
lsimpson@duanesburg.org
> wrote:
Hi Molly,
Thank you for the email. I am working on the schedule and will hopefully be able to share it with you by the end of the day today. Just making a few minor adjustments. Would it be possible to start the kids at 8:20 instead of 8:30? I will place in that we will need a table and a few chairs for you and there should be plenty of outlets in the gym for you. The plan is to take the group photos in the gym on the bleachers like last year!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$773jvcqo1cos7v9ouhnjoid3ef@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b8e1f3784625c885$cid$, $src$google_calendar_import$src$, $uid$5ijcevpejhmp283suopg39jm4d@google.com$uid$, $title$Duanesburg Sweetheart Dance$title$, $d$2026-02-07$d$::date, $d$2026-02-07$d$::date, NULL, NULL, $sch$Duanesburg Sweetheart Dance$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$1 photographer
Put on got photo
One free 5x7 print for each attendee, option to buy more.  We will print and deliver in bulk

PTA contact Kerry Utstein  kutstein@dcpta.org

1/13/26 no time yet per Kerry ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5ijcevpejhmp283suopg39jm4d@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d795f96911ab5a4f$cid$, $src$google_calendar_import$src$, $uid$4bd49f5rn7v7tjtts8o17e75o9@google.com$uid$, $title$Hannaford Headshots 12:30 Studio$title$, $d$2026-02-16$d$::date, $d$2026-02-16$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4bd49f5rn7v7tjtts8o17e75o9@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_89cb61ebea9190c4$cid$, $src$google_calendar_import$src$, $uid$5lqcceilh43rb87qn4b9lusggq@google.com$uid$, $title$Calvary Methodist Preschool (Lauren or Carmen)$title$, $d$2025-10-30$d$::date, $d$2025-10-30$d$::date, NULL, NULL, $sch$Calvary Methodist Preschool$sch$, $typ$picture day$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, $info$Michelle Hykin, director
518-785-5142
lathamcalvaryprek@gmail.com

17 students
Outdoor if nice, indoor with fall themed background

no commission
no service items$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5lqcceilh43rb87qn4b9lusggq@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f154e923fa553183$cid$, $src$google_calendar_import$src$, $uid$4stimehlja6g0s7q5orlp9ur21@google.com$uid$, $title$Maple Leaf Halfmoon Spring & Grads (2 teams)$title$, $d$2026-05-14$d$::date, $d$2026-05-14$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$Maple Leaf Halfmoon Spring & Grads$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Danielle Dicaprio, director (new as of Spring 2026) (she worked with us at Glenville)
halfmoon@mapleleafchildcare.com
TWO TEAMS - Bring appropriate baby stuff. 2 teams so we are done by noon.
4/23 Danielle confirmed ckg; 4/23/26 emailed Tori to confirm ckg
Setup: 7:30am
Start: 8am until noon (can go later, but then kids get messy and cranky)
CHANGE: 4/23 Outdoor, pushing indoors for bad weather
Individuals of students (ages 5 mos to 5 years) 
GRADS! Individual using OUR cobalt blue caps & gowns
Molly Sosnow
1:28 PM (0 minutes ago)
to Half, Andrew, Carmen, Simone, me, Matthew
Perfect, thank you so much!
On Fri, May 8, 2026 at 2:34 PM Half Moon Maple Leaf Childcare Centre <
halfmoon@mapleleafchildcare.
com
> wrote:
Hi,
 We typically start with babies at 8 am, we will wheel them down in cribs, then toddlers, then preschool then Pre K. We have three baby rooms, four toddler rooms, two preschool rooms and two Pre K rooms open currently. We will have a table all ready.
 Thanks, 
Danielle$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4stimehlja6g0s7q5orlp9ur21@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_003cccf46f1a72a7$cid$, $src$google_calendar_import$src$, $uid$2a6o139ri3djafcbq6cu5s7q7d@google.com$uid$, $title$Hoosic Valley Seniors (1 team)$title$, $d$2025-09-16$d$::date, $d$2025-09-18$d$::date, NULL, NULL, $sch$Hoosic Valley$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$work with main office admin:
Amy Vautrin
avautrin@hoosicvalley.org
Yearbook editor:
Rochelle Dinallo
rdinallo@hoosicvalley.org
Seniors 2:30-5:15pm on 9/17 and 9/18 - SETUP -  2pm
Seniors during school day starting at 8am 9/19 - SETUP -  7:30am
Seniors - 70-ish
15 minutes increments per Trish$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2a6o139ri3djafcbq6cu5s7q7d@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_6b870e4ecb1b31dd$cid$, $src$google_calendar_import$src$, $uid$23i1ditu14dd3ctodssnj8lsco@google.com$uid$, $title$Turner's Tots Preschool AM only (1 photog)$title$, $d$2026-12-04$d$::date, $d$2026-12-04$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, $sch$Turner s Tots Preschool AM only$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Ruth Ann Turner (formerly of Infinite Care)
turnerstotslc@gmail.com

Arrive: 9am
Start: 9:30am

Indoor with WINTER themed background 
15 students with staff, infants, toddlers & preschool ages
Take more than 1 photo of staff please
Collages
All-Center composite (11x14 charged $30 in prior year ckg)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$23i1ditu14dd3ctodssnj8lsco@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2186d4f005125d98$cid$, $src$google_calendar_import$src$, $uid$3rpdu6e44krm34u1oopciibbnt@google.com$uid$, $title$Milton and Lauren Monthly Meeting$title$, $d$2026-05-01$d$::date, $d$2026-05-01$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3rpdu6e44krm34u1oopciibbnt@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e2e41400c213ca89$cid$, $src$google_calendar_import$src$, $uid$7na0gsvmnhb1fucefqoe1kjrk6@google.com$uid$, $title$Erin Lefebvre School Team In Person Interview 3;00$title$, $d$2026-01-30$d$::date, $d$2026-01-30$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$meet.google.com/khw-uaes-wdh$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7na0gsvmnhb1fucefqoe1kjrk6@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c58122532e158b89$cid$, $src$google_calendar_import$src$, $uid$2738212C-B481-4F91-8B6A-5C00C93567E6$uid$, $title$RHMC Headshot 11am Tina (Matt)$title$, $d$2025-07-11$d$::date, $d$2025-07-11$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Matt$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2738212C-B481-4F91-8B6A-5C00C93567E6$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_096c95cab11ad3f0$cid$, $src$google_calendar_import$src$, $uid$14kna5na5v9dhur94qvt67i0gv@google.com$uid$, $title$Craig Elementary 5th Grade Pano (1 photog)$title$, $d$2026-05-19$d$::date, $d$2026-05-19$d$::date, $tm$10:00am$tm$, $arr$9:45am$arr$, $sch$Craig Elementary$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Shawna, PTO (main contact)
craigniskypto@gmail.com

Amy Wickham awickham23@gmail.com
Erin Perry ebeland20@gmail.com

4/18/26 time confirmed with Shawna ckg
4/17/26 heard back, and they only want pano, NOT photographing the whole school. ckg
3/30/36 emailed Shawna to confirm ckg

Arrive:  9:45am
Start:  10am (start of their recess)

Upload to GP to sell (like we do for Skano, same price list too) ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$14kna5na5v9dhur94qvt67i0gv@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_260f69e3eb1c24a5$cid$, $src$google_calendar_import$src$, $uid$6frs5h4ob7h5mfo37phf1p0v7o@google.com$uid$, $title$Santa Jim 9/2$title$, $d$2025-12-06$d$::date, $d$2025-12-06$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6frs5h4ob7h5mfo37phf1p0v7o@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_edcd9b81a9557ac9$cid$, $src$google_calendar_import$src$, $uid$48dnldremqtrmq63bqrs9ld16r@google.com$uid$, $title$Siena Seniors$title$, $d$2026-05-03$d$::date, $d$2026-05-08$d$::date, NULL, NULL, $sch$Siena$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$48dnldremqtrmq63bqrs9ld16r@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_93014c606ddffb50$cid$, $src$google_calendar_import$src$, $uid$0ek130uj9dmf060r7idh2njfge@google.com$uid$, $title$Saint Madeleine's Makeup Day (1 team)$title$, $d$2025-11-12$d$::date, $d$2025-11-12$d$::date, NULL, $arr$7:45am$arr$, $sch$Saint Madeleine s$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kelly Sloan, Principal
ksloan1@smsschool.org
Setup: 7:45am (school opens at 7:10am)
Start pics at 8:15am
Indoor traditional photos - in a first floor classroom per Laura
Individuals of Students & faculty
Group class photos
Yearbook, all service items, attendance files, etc.
11/3/25 proposed this schedule:
7:30 - arrival and set up
8:00 -  staff
8:15 - Grades 1 and 2
8:30 - Grades 3, 4, and 5
9:00 - PK 3
9:15 - PK 4 and last call
9:30 - packing up$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0ek130uj9dmf060r7idh2njfge@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a93523fb34331d63$cid$, $src$google_calendar_import$src$, $uid$4q2q45mrh289m7mkl4ob1ottjb@google.com$uid$, $title$LCS Senior Portraits (2 photogs) 9-3pm$title$, $d$2026-08-18$d$::date, $d$2026-08-18$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$LCS$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$17 Seniors
Indoors in the Ministry Center in Tux and Maroon Cap/Gown
Outdoors around campus in casual clothing (good places to photograph: Flower beds outside ministry center, LCS Sign at Entrance, Pavilion, Prayer Bench area in woods, Playground, Soccer fields)
Gym can generally be accessed for photos too
Enter through Church entrance in back of building, Ministry Center has exterior door to bring in equipment

Bonnie Strock
bstrock@lcs.org
Arrive: 8:30am
Start: 9am
Indoor/Outdoor
$150 price profile$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4q2q45mrh289m7mkl4ob1ottjb@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_93e23498342dbe0c$cid$, $src$google_calendar_import$src$, $uid$70gvhlv74lfce5sqmm0v1s06qq@google.com$uid$, $title$Childhood Friends - Rotterdam (1 Team)$title$, $d$2025-12-08$d$::date, $d$2025-12-09$d$::date, $tm$9:00a$tm$, $arr$8:30a$arr$, $sch$Childhood Friends - Rotterdam$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Lauren Daniels,  director
laurendaniels410@gmail.com
518-339-8325
3040 Hamburg St
Rotterdam, NY 12303
12/1 confirmed;  11/13/25 emailed Lauren to confirm all items ckg
Arrive: 8:30a
Start:  9:00a
Over 2 Days because they have MWF and T/TH Students
78 Students
Indoors on blue
Wants pics in time for Christmas, told her it may not happen.
Collages$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$70gvhlv74lfce5sqmm0v1s06qq@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_86e54dc462d42dce$cid$, $src$google_calendar_import$src$, $uid$3t78jbo8odk9vl5mpoqrii4t68@google.com$uid$, $title$Karigon Spring Photos + 5th grade groups (2 teams)$title$, $d$2026-05-07$d$::date, $d$2026-05-07$d$::date, $tm$8:10am$tm$, $arr$7:40am$arr$, $sch$Karigon Spring 5th grade groups$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Nupoor Gordon
gordnupo@shenschools.org
4/20/26 emailed Nupoor to confirm, cc Beth, Molly ckg
Setup: 7:40am
Start: 8:10am
Outdoor pushing indoors for students if bad weather. Rain date for pano only.
Full school - individuals and 5th grade group
5th grade pano taken during the lunch recess when kiddos are on playground. It'll be on the schedule.
Asking for teachers to help get the kids organized into their group for this pic.
PANO NOTES: OPTION 3 - NO COST PANO
We will donate an 8"x24" pano for each student, teacher, and one framed for your hallway if we can do a spring photo day for ALL students instead of just the 5th graders. Being able to photograph all students (hopefully outdoors so they get something much different than the fall) helps us offset the cost to make the pano for you for the graduating kids.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3t78jbo8odk9vl5mpoqrii4t68@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_69967f997ab0c10f$cid$, $src$google_calendar_import$src$, $uid$2ajsn0ql747jcslq4e20i8c5ag@google.com$uid$, $title$Tesago Elem Makeup Day (1 team)$title$, $d$2026-10-26$d$::date, $d$2026-10-26$d$::date, NULL, NULL, $sch$Tesago Elementary School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Schedule for am only
FALL PHOTOS:
Caroline Moore  
camoore004@gmail.com
Tesago PTA: 
tesagopta@gmail.com
**different people handle fall (PTA) and spring (main office) pics**$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2ajsn0ql747jcslq4e20i8c5ag@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_76ad0e9471fea105$cid$, $src$google_calendar_import$src$, $uid$2145h6operahnjh1bellfbhpa4@google.com$uid$, $title$Northville Fall Sports (1 team)$title$, $d$2025-09-05$d$::date, $d$2025-09-05$d$::date, $tm$2:40pm$tm$, $arr$2:00pm$arr$, $sch$Northville$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Shannon Fitzgerald
sfitzgerald@northvillecsd.org
John Karbowski, Athletic Director
jkarbowski@northvillecsd.org
Renee Mackey
mackeyr003@gmail.com
Arrive: 2pm
Start: 2:40pm
Indoor in library
Group Team photos - AND separate group shot of all seniors together
Photographing all teams, schedule below:
From: 
John Karbowski

<
jkarbowski@northvillecsd.org
>
Date: Thu, Sep 4, 2025 at 9:39 AM
Subject: Re: Northville Fall Sports Photos, Friday September 5th
To: Beth Picciano <
beth@ismilestudios.com
>
CC: <
sfitzgerald@northvillecsd.org
>, Emily Mortensen <
emily@ismilestudios.com
>, Tammy Reidell <
treidell@northvillecsd.org
>
Here is what we will use for this year:
Team Photo Schedule:
2:40 Boys JV Soccer
2:50 Girls JV Soccer
3:00 Varsity Golf
3:10  Girls Varsity Soccer
3:20 Boys Varsity Soccer
3:30 Girls Modified Soccer
3:40 Boys Modified Soccer$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2145h6operahnjh1bellfbhpa4@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b75240fe4f6b464b$cid$, $src$google_calendar_import$src$, $uid$1n2jpk7bbs6281aqq8lapnf9n1@google.com$uid$, $title$DES Spring Photos (2 teams)$title$, $d$2027-05-19$d$::date, $d$2027-05-19$d$::date, $tm$9:00am$tm$, NULL, $sch$DES Spring$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kerry Utstein pTO
kutstein@dcpta.org
Leah Simpson, elem school
lsimpson@duanesburg.org
Setup at elementary school 8:30am
Start time: 9:00am
Outdoor of only students, PUSH INDOORS if bad weather
10% fundraiser for the DCPTA$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1n2jpk7bbs6281aqq8lapnf9n1@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_666063768cc32f90$cid$, $src$google_calendar_import$src$, $uid$6tisa5fqkj0ls88iigsuhp4dl0@google.com$uid$, $title$Malta Ave Elementary Picture Day (2 teams)$title$, $d$2026-10-08$d$::date, $d$2026-10-08$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Malta Ave Elementary$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jenny Bottisti
(518) 884-7250 ext 1380
JBottisti@bscsd.org
Set-up: 8am - check in at main office with photo ID upon arrival
Start: 8:30am, starting with faculty/staff. Students start at 9:30am.
Indoor photos - auditorium
Individuals of students and faculty
Composites
Service strips - yes
Yearbook support - yes
Attendance files - yes$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6tisa5fqkj0ls88iigsuhp4dl0@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f1190c1b00b86a58$cid$, $src$google_calendar_import$src$, $uid$00033ln0co8oslp29kspmgobbh@google.com$uid$, $title$Skano Elem Rain Date (3 teams)$title$, $d$2025-09-30$d$::date, $d$2025-09-30$d$::date, NULL, NULL, $sch$Skano Elementary School$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$see Sept 25
Erin Kisling, main office admin
kislerin@shenschools.org$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$00033ln0co8oslp29kspmgobbh@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2047d4274844d245$cid$, $src$google_calendar_import$src$, $uid$6np2nimrs6t3u1oii99vhpuf0v@google.com$uid$, $title$Gordon Creek Elem Makeups (1 team)$title$, $d$2026-11-12$d$::date, $d$2026-11-12$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Katie Bennice
Administrative Assistant
Gordon Creek Elementary School
(518) 884-7270 ext.3368
kbennice@bscsd.org
Indoor
Shoot staff off laptops, some blank QRs in binder$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6np2nimrs6t3u1oii99vhpuf0v@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d2129b13621e58f8$cid$, $src$google_calendar_import$src$, $uid$62okae6fou1emjq03tf37rvsad@google.com$uid$, $title$Hoosic Valley MS/HS (1 team) Underclass$title$, $d$2026-09-15$d$::date, $d$2026-09-16$d$::date, $tm$7:45am$tm$, $arr$7:15am$arr$, $sch$Hoosic Valley Middle School/High School Underclass$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$work with main office admin:
Amy Vautrin
avautrin@hoosicvalley.org
Yearbook editor:
Rochelle Dinallo
rdinallo@hoosicvalley.org
Underclass during school day on 9/15-9/16
Seniors from 2:30-5:15pm on 9/15-9/16
Seniors only on 9/17 during school day 8am - 2:30pm
Set-up: 7:15am
Start time: 7:45am
9/15 is DAY A
9/16 is DAY B
Indoor
Individuals of all students and faculty during PE classes
In gym 
IDs for students, yearbook in late fall
all classes have about 65-70 students in them.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$62okae6fou1emjq03tf37rvsad@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_0b549e2613e443a6$cid$, $src$google_calendar_import$src$, $uid$47jkvjjldu75d3c0sf4hhbudm6@google.com$uid$, $title$Tech Valley Senior Retakes (Steph +1)$title$, $d$2026-03-03$d$::date, $d$2026-03-03$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$Tech Valley Senior$sch$, $typ$makeup/retake$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$Lana Hower
lana.hower@techvalleyhigh.org
Arrive: 7:30am
Start: 8am
Room 202A (directions below)
Bring jackets, shirts, ties, drape, blue caps/gowns
Coming with us for the 26-27 school year, but some 2026 seniors want retakes with us (instead of Lifetouch). Steph wants to shoot this, at school, doing formals indoors and some casual natural light imagery inside the school.
20-minute sessions with "regular" senior price profile per Steph.
Acuity scheduling through this link: 
https://app.acuityscheduling.com/schedule.php?owner=18719512&calendarID=13071917
Cobalt blue cap and gown for both men and women. Look at this Facebook post from the class of 2025: 
https://www.facebook.com/photo/?fbid=1304446387725386&set=pcb.1304446794392012
DIRECTIONS FROM LANA: 
You will have the use of a classroom but it is on the 2nd floor.  There is an elevator.
Getting to the school is easy, we are on the NY Creates/Nanoscience campus.  Getting through security is not easy.  
Here are the directions 
once you come on to campus.  The only difference from these directions is you should drive down to the school, enter the bus loop to unload your equipment and then park in the visitor lot indicated.  I am sorry about this difficult procedure.  We have no control over it.  Please let me know when you will be arriving so I can be here to greet you and help you set up.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$47jkvjjldu75d3c0sf4hhbudm6@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_884acd2df60a5f62$cid$, $src$google_calendar_import$src$, $uid$6dgjhl2ohf56t0pu4lob6oa2mo@google.com$uid$, $title$HOLD Wildwood Makeups (AM only ANDREW)$title$, $d$2026-11-24$d$::date, $d$2026-11-24$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, $sch$HOLD Wildwood$sch$, $typ$makeup/retake$typ$, ARRAY[$a$Andrew$a$]::text[], ARRAY[]::text[], false, $info$Jill Wood 
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
Needs PSPA for yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6dgjhl2ohf56t0pu4lob6oa2mo@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_30be45a86ab38807$cid$, $src$google_calendar_import$src$, $uid$3i6k67psfol41ft1dounpe1ku7@google.com$uid$, $title$HOLD Glencliff Elementary (2 teams)$title$, $d$2026-09-25$d$::date, $d$2026-09-25$d$::date, $tm$8:30a$tm$, $arr$7:45$arr$, $sch$HOLD Glencliff Elementary$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Ashley Steele, PTO co-president
glencliffpto.copres@gmail.com
cell : (518) 461-7486

Arrive: 7:45-8:00a
Start: 8:30a

Indoor in Gym
350 students
Individuals of all students and faculty/staff
All service items
Yearbook - Treering
Collages (told March for a delivery date)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3i6k67psfol41ft1dounpe1ku7@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_77204a54b9d2d873$cid$, $src$google_calendar_import$src$, $uid$0e35t5qhr4gdb5g1m3tspbomdn@google.com$uid$, $title$AW Becker Clubs for Yrbk (1 photog)$title$, $d$2026-03-10$d$::date, $d$2026-03-10$d$::date, $tm$9:15am$tm$, $arr$8:45am$arr$, $sch$AW Becker Clubs for Yrbk$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Clare Esmond, yearbook editor - main contact for these
cesmond@rcscsd.org

Sarah Plakas, NEW Admin Asst 
splakas@rcscsd.org

(518) 756-5200, ext. 5002
2/20/26 emailed Clare to confirm, cc Steph ckg
Arrive 8:45am
Start 9:15am
Photos of clubs for yearbook
indoors (no backdrop per Steph)
School wants us to use band room$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0e35t5qhr4gdb5g1m3tspbomdn@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c6366c01b391c433$cid$, $src$google_calendar_import$src$, $uid$7cu7oqo77grs3hiki4e4486q6h@google.com$uid$, $title$Waterford Prom (1 Photog, NO PHOTOBOOTH)$title$, $d$2026-06-05$d$::date, $d$2026-06-05$d$::date, NULL, NULL, NULL, $typ$photo booth$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kosar, Natalie

9:05 AM (5 hours ago)
to 
me
Hello, 
I hope you are doing well. My name is Natalie Kosar and I am the Senior class advisor at Waterford Halfmoon. We were wondering if you had availability to take photos at our Senior prom this year on Friday, June 5th. The prom is at Revolution Hall in Troy (next to Brown's) from 6-10. We would not need a photo booth like you provided last year, because our dj has one with our package there. If you are unavailable, would you happen to know someone who is able to help out with taking pictures. You always do such a great job and we are so appreciative. 
Thank you so much. Have a wonderful day.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7cu7oqo77grs3hiki4e4486q6h@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_275d15e25d932a4b$cid$, $src$google_calendar_import$src$, $uid$5fhcf346kajrfuevtl7bbu99lh@google.com$uid$, $title$Thomas Pest Headshots 1;45 STEPH$title$, $d$2026-01-08$d$::date, $d$2026-01-08$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$Hi Stephanie,

We have three folks who were not in attendance in November and one new hire. I can have them come to the studio on the 8
th
 between 1:30 – 2:30 (based on how their services are running).

For new hires, I can coordinate with you to have them come into the studio. Billing monthly will work on our end. Our hiring ramps up between April and July, so you will likely see many new faces then!

Wishing you a very Happy New Year!
mthomas@thomaspest.com

Best,
Megan$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5fhcf346kajrfuevtl7bbu99lh@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_08f98b2c336ae77a$cid$, $src$google_calendar_import$src$, $uid$73gpuepmfv6gne2d1li07oen7i@google.com$uid$, $title$Union College International Student Visas  STEPH$title$, $d$2026-02-24$d$::date, $d$2026-02-24$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$12:00 - 2:00
n Feb 9, 2026, at 3:12 PM, Hodges, Heidi <
hodgesh@union.edu
> wrote:
We are in Reamer Campus Center -- our office is Reamer 303 (Third Floor all the way down on the left). 
I screengrabbed our campus map and attached it to the email in case that's helpful, ha -- 
park in this parking lot
 (Nott-Seward Lott), and our office is in the same building as the 
Bookstore
. I will plan on meeting you in the parking lot unless this all jogs your memory and you feel fully confident you can find your way! My cell is 231.794.9049 so if you run into any issues I'm just a call or text away. 
It's kind of you to offer the list for tracking -- I will have one printed for you and the students can use it to check their names off/sign in! That's great. We'll start promoting it this week and see how many Seniors we can motivate to come see you. 
Thanks so much!
On Mon, Feb 9, 2026 at 1:37 PM Stephanie McCauley <
stephanie@ismilestudios.com
> wrote:
Hi Heidi!
Sounds great - thank you so much!  Could you remind me what building you guys are in?  I am SORT OF familiar with the campus and I am sure I will remember from last year  :)
REAMER 303
Hi Robin!
My apologies for the delayed reply - I was triple booked yesterday and couldn’t seem to come up for air!
I’d love to work with you again and we can do it for the same price as last year ($15/student), which I can bill you for after the date of the photo shoot so you only have to pay for kids who actually show up.
Do you have any dates in mind that I can check?
Thank you so much!
:)
Steph
Easily add me to your contacts here
On Feb 4, 2026, at 8:38 AM, Olinsky, Robin <
olinskyr@union.edu
> wrote:
Hi Stephanie,
I hope you are doing well! We would like to set up a photo session for our graduating international students to take pictures for their work authorization applications. We have about 30-35 students who need pictures. I'm including Heidi Hodges, who is our new international coordinator, on this message so she can work with you on getting everything set up.
The photo specs are the same as last year:
The photos must be 2 x 2 inches
Direct-front-facing view of the face
Head height should measure 1 to 1 3/8 inches from the top of the hair to the bottom of the chin
Head Position: 50% to 69% of the total image height
Eye height should measure between 1 1/8 to 1 3/8 inches from the top of the eyes to the bottom of the photo
Color-correct, no filters, no re-touching
Digital files should be in JPG format and file names should not include any punctuation or symbols
Digital files should be 600x600 to 1200x1200 pixels, ideally between 54 KB and 10 MB 
Background: Plain white or off-white with no shadows or patterns
Restrictions: No glasses, no hats/head coverings (except for religious), no headphones
Our office will cover the cost for all of the photos, so please let us know an approximate cost for the photo session. We can confirm specific numbers for you soon!
Thanks,
Robin$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$73gpuepmfv6gne2d1li07oen7i@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e80449590f39259e$cid$, $src$google_calendar_import$src$, $uid$4q2oitahta8jsvhe29r1oqmjrc@google.com$uid$, $title$Pieter B. Coeymans Makeups (1 team)$title$, $d$2025-12-03$d$::date, $d$2025-12-03$d$::date, NULL, $arr$9:15$arr$, $sch$Pieter B. Coeymans$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Alex Hilker, yearbook editor
ahilker@rcscsd.org
Sandra Krein, Bldg Secretary
skrein@rcscsd.org
Hakim Jones, principal
hjones@rcscsd.org
11/21/25 proposed schedule to Alex and Sandra (based on last year), and Alex responded on 11/24/25 with this:
Alexander Hilker
8:39 AM (5 minutes ago)
to me, Sandra
Hi Carrie,
I haven't heard back yet from everyone, but the schedule is good for everyone who has responded. I'll let you know ASAP if something changes.  
8:45
Arrival & setup
9:15
Pre-K
9:30
3rd
9:45
K
10:00
1st
10:15
4th
10:30
2nd
10:45
5th
11:00
Breakdown & departure$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4q2oitahta8jsvhe29r1oqmjrc@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_df48348173f4ccbe$cid$, $src$google_calendar_import$src$, $uid$6fr59mbnp198t7rip2k9s1cnog@google.com$uid$, $title$Green Tech Seniors 11;30am start (Photog + 1)$title$, $d$2026-04-28$d$::date, $d$2026-04-29$d$::date, $tm$11:30am$tm$, $arr$11:00am$arr$, $sch$Green Tech$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Crystal Campbell
ccampbell@greentechhigh.org
4/6 emailed Crystal cc Matt to confirm ckg
Arrive: 11am
Start:11:30am
indoor and outdoor photos of seniors$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6fr59mbnp198t7rip2k9s1cnog@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4f726c12df5fccc3$cid$, $src$google_calendar_import$src$, $uid$1k0c7jift4vcq5gg9udrj6l2f2@google.com$uid$, $title$Nathan Lebron Early Learning Center (1 team)$title$, $d$2025-10-30$d$::date, $d$2025-10-30$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Nathan Lebron Early Learning Center$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Shameena Aziz
asst site director (WORK WITH SHAMEENA WHILE BREAKING IS ON LEAVE)
saziz@albanycap.org
Breanna Reyes (8/5/25 ON MATERNITY LEAVE)
Site Supervisor 
Nathan Lebron Early Learning Center
170 Ontario St
Albany NY 12206

Tel: 
(518) 729-2001

breyes@albanycap.org

www.albanycap.org

(2nd fall with us after Lifetouch no-showed them in 2025)
10/17 confirmed; 10/16/25 emailed to confirm details ckg
Arrive: 8:30am
Start: 9am
two photo teams, one in gym, the other in Conf room. Asked for schedule on 10/20/25 ckg
https://docs.google.com/
spreadsheets/d/
1EFcNSYpkhyiX8MTYTSoLbOifZifUA
3PcYNKz4ZJeALE/edit?usp=
sharing
Indoor with winter backdrop (cannot have anything specifically holiday-ish)
80 students
Ages 2-4 year olds
GROUP class photos
from Shameena 10/24/25:
Yes, 9am would be great to start, most of our kiddos are in the building by then. Yes, I would like group class photos to be taken once all the individual ones are complete. We will have a chair and table with outlets nearby all set up for you. 
We are so excited!
thank you so much!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1k0c7jift4vcq5gg9udrj6l2f2@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_91a8c48eaa3bd2c4$cid$, $src$google_calendar_import$src$, $uid$081od9dum5bu6djm2d3k6d4pe4@google.com$uid$, $title$AA Golf Tournament/Legacy$title$, $d$2025-06-16$d$::date, $d$2025-06-16$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Date:
 Monday, June 16
Location
: Colonie Golf & Country Club 
Golf: 
Golf check in at 10:30am
Shotgun at 12:00pm
(New Time)
Tennis: 
Check in at 8:30am
Round robin: 9:00am - 11am$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$081od9dum5bu6djm2d3k6d4pe4@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_292423f07890bffe$cid$, $src$google_calendar_import$src$, $uid$0ico1uqsfdn3ce6bdc4k42t7d1@google.com$uid$, $title$NEW No. Albany MS MAKEUPS$title$, $d$2026-11-18$d$::date, $d$2026-11-18$d$::date, NULL, NULL, NULL, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$NAMS PTA
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
Yearbook - find out details$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0ico1uqsfdn3ce6bdc4k42t7d1@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_145f887362995569$cid$, $src$google_calendar_import$src$, $uid$0r36k282oh4p53hp4nai42q5o0@google.com$uid$, $title$Luke Apy interview 2;30$title$, $d$2026-01-27$d$::date, $d$2026-01-27$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$https://meet.google.com/zxe-wzcm-vdo$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0r36k282oh4p53hp4nai42q5o0@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_0c6615d7b6d0a74c$cid$, $src$google_calendar_import$src$, $uid$20unaght6c1v5vngl7t7rqkppu@google.com$uid$, $title$Christ the King Valentines Dance 6-7:pm (1 photog)$title$, $d$2026-02-13$d$::date, $d$2026-02-13$d$::date, NULL, $arr$5:30p$arr$, $sch$Christ the King Valentines Dance$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$1/20/26 approved; 1/13/26 verifying with new director that dance is a go ckg
Shavone Diaz (new 2025-26)
shavcam@aol.com
6-7p. Arrive at 5:30p to set-up. Set-up studio in corner. Shoot kids with parents, or just kids.  Candids as time allows. 
HANDOUTS to be made up for photo to give to anyone who sits for photos. 
ALL THROUGH GOTPHOTO. We'll distribute access code during dance and email school flyer to distribute.
Please look at previous year galleries.

Join with Google Hangouts: https://hangouts.google.com/hangouts/_/calendar/MjE5dWo4bzkwY2Q5czNubGwwMHJqYTZkZWtAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ.20unaght6c1v5vngl7t7rqkppu?hs=121

Please do not edit this section.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$20unaght6c1v5vngl7t7rqkppu@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_8a22790d769ff80b$cid$, $src$google_calendar_import$src$, $uid$7r50s78r60in2pgeu01d1i82q2@google.com$uid$, $title$LCS Bacc Evening (Matt)$title$, $d$2025-06-13$d$::date, $d$2025-06-13$d$::date, $tm$4:00$tm$, NULL, NULL, $typ$graduation/pano$typ$, ARRAY[$a$Matt$a$]::text[], ARRAY[]::text[], false, $info$Amy Thiel
Librarian/Lower School Tech Teacher/Graduation Coordinator
Loudonville Christian School
374 Loudon Rd. 
Loudonville, NY 12211
518.434.6051 x335
lcs.org
7pm start
4/25/25 confirmed; 2/19/25 holding based on LCS calendar ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7r50s78r60in2pgeu01d1i82q2@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7d13953463b2735b$cid$, $src$google_calendar_import$src$, $uid$6gtfbqaidujat8qv804erfgb4l@google.com$uid$, $title$NEW Precious Hearts Daycare (1 team)$title$, $d$2025-11-19$d$::date, $d$2025-11-19$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$NEW Precious Hearts Daycare$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$NEW - opened May 2025

Kim Berry, director (formerly with TSL) EMAIL & CALL
phccdir58@gmail.com
518-410-4323

11/12 confirmed everything; 11/7; 11/4/25 emailed Kim for this info ckg
Arrive: 8:30am
Start: 9am

estimated 45 students ages infants to 5 years
requesting indoor photos with a winter-themed background (okay to not have parents be able to choose different backgrounds when ordering)
pics of staff too
collages
no yearbook at this time

no commission as they are under 100 students$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6gtfbqaidujat8qv804erfgb4l@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7d05a4adb8e8ad2f$cid$, $src$google_calendar_import$src$, $uid$15puuhbp6p2arkltpqobor28n7@google.com$uid$, $title$YMCA Learning Village (CTK) Pre-K Grad Photos (1 photog)$title$, $d$2026-05-20$d$::date, $d$2026-05-20$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$YMCA Learning Village CTK Pre-K$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kathleen Rutledge, new director
5/5/26 now operated by the YMCA, new name too!
5/5/26 Kathleen confirmed; emailed Kathleen, Moly/Matt to confirm ckg
Photo times start at 9am
Set-up at 8:30am
Indoor, backdropped "grad" photos for only pre-k students
They make their caps
Use plain white background or grad background - need to confirm!
Classroom for 2026 grads: 
Kathleen Rutledge
10:33 AM (42 minutes ago)
to me
Hello,
Sorry, I thought that I had already sent this,
Rooms: 106, 108, 109, 111$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$15puuhbp6p2arkltpqobor28n7@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_6a4b737649e8d0fe$cid$, $src$google_calendar_import$src$, $uid$2ei7rubjn4i3gadobbjftruk2c@google.com$uid$, $title$Waterford-Halfmoon Fall Sports (1 team)$title$, $d$2025-09-02$d$::date, $d$2025-09-02$d$::date, $tm$2:00pm$tm$, $arr$1:30pm$arr$, $sch$Waterford-Halfmoon$sch$, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kyle Williams
Director of PE, Athletics and Recreation
Waterford-Halfmoon Union Free School District
125 Middletown Road
Waterford, NY 12188
(518)237-0800 ext. 1311
kywilliams@whufsd.org
8/24/25 timing confirmed with Kyle W. Schedule below ckg
Arrive: 1:30pm
Start: 2pm
LOCATION: HS Auditorium (8/24 confirmed with Kyle W. ckg)
Individual players, and group team photos
ONLY V and JV TEAMS. No modified per Kyle.
2:00 p.m - Golf 
2:20 p.m. -varsity girls soccer
2:40 p.m. -  varsity volleyball 
3:00 p.m. - Jv Volleyball
3:20 p.m. -jv boys Soccer
3:40 p.m. - varsity boys soccer$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2ei7rubjn4i3gadobbjftruk2c@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e87d56e5d9b5c16a$cid$, $src$google_calendar_import$src$, $uid$213q60ls1g1h8rv88ud2762803@google.com$uid$, $title$Albany Law Headshots 1 Photog 2 Hours$title$, $d$2025-08-29$d$::date, $d$2025-08-29$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$1L Flex JD Students
Date: Friday, August 29, 2025
Time: 12:30pm - 1:45pm 
Location: 2000 Building  (Alumni Lounge)
Contact Joanne Casey  jcase@albanylaw.edu$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$213q60ls1g1h8rv88ud2762803@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_38fdb5ef982be708$cid$, $src$google_calendar_import$src$, $uid$6k1lum0c4qk9evvhl9bp6qmdm9@google.com$uid$, $title$WYNANTSKILL Family Photo Night$title$, $d$2025-12-10$d$::date, $d$2025-12-10$d$::date, $tm$4:00pm$tm$, $arr$3:30pm$arr$, $sch$WYNANTSKILL Family Photo Night$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kyle Barber

kbarber@wynantskillufsd.org

Arrive: 3:30pm
Start: 4pm$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6k1lum0c4qk9evvhl9bp6qmdm9@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4486b4017b51397c$cid$, $src$google_calendar_import$src$, $uid$1gfk6hdru7mqd4qs322pdescme@google.com$uid$, $title$Spring Debrief$title$, $d$2025-06-11$d$::date, $d$2025-06-11$d$::date, NULL, NULL, $sch$Spring Debrief$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1gfk6hdru7mqd4qs322pdescme@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9153d6f2cdd6eea3$cid$, $src$google_calendar_import$src$, $uid$5ise2nen9m23am3kb1gep77qna@google.com$uid$, $title$Academy Club Photos STEPH$title$, $d$2026-05-15$d$::date, $d$2026-05-15$d$::date, NULL, NULL, $sch$Academy Club$sch$, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$Christine Vaughn requesting photos of student council and student government$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5ise2nen9m23am3kb1gep77qna@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_8009aaf3f973820c$cid$, $src$google_calendar_import$src$, $uid$4h7ob1i3vrd0f512sq8r7u9gim@google.com$uid$, $title$Academy Reunion$title$, $d$2026-05-16$d$::date, $d$2026-05-16$d$::date, NULL, NULL, $sch$Academy Reunion$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4h7ob1i3vrd0f512sq8r7u9gim@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_86552a01b103dc31$cid$, $src$google_calendar_import$src$, $uid$2rrg5ovf0skkicsu0g6i897hra@google.com$uid$, $title$Duanesburg Soccer Senior Night Steph$title$, $d$2025-10-09$d$::date, $d$2025-10-09$d$::date, NULL, NULL, $sch$Duanesburg Soccer Senior Night$sch$, $typ$senior portraits$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2rrg5ovf0skkicsu0g6i897hra@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_dab654a32756cdb8$cid$, $src$google_calendar_import$src$, $uid$7j11j0ttk511vo23e1revr6mfe@google.com$uid$, $title$School Team Huddle 3pm$title$, $d$2025-10-24$d$::date, $d$2025-10-24$d$::date, NULL, NULL, $sch$School Team Huddle$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$meet.google.com/crh-jqub-jse
Dial-in: 
(US)
+1 470-210-0453 
PIN: 
491 885 313#$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7j11j0ttk511vo23e1revr6mfe@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_582b4c85fa4ee936$cid$, $src$google_calendar_import$src$, $uid$6aud26hjtquui9gcjq9bu29cs3@google.com$uid$, $title$HOLD Jefferson Elementary School (3 teams)$title$, $d$2026-10-02$d$::date, $d$2026-10-02$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$HOLD Jefferson Elementary School$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Corrie Hoffman, PTA picture day contact
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

Schalmont Central School District$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6aud26hjtquui9gcjq9bu29cs3@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_0ff114bf2e569c71$cid$, $src$google_calendar_import$src$, $uid$49j93gdefr7a4hk1r4mh9mi3k1@google.com$uid$, $title$Waterford Halfmoon Boys Game Night (1 Photog)$title$, $d$2026-05-31$d$::date, $d$2026-05-31$d$::date, NULL, $arr$5:30$arr$, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$4/22/26 rescheduled to 5/31/26 SM
4/21/26 per Jessica, rescheduling event to May due to low registration ckg

Bring boy-ish background

Jessica Rice, PTO VP
waterfordhalfmoonpto@gmail.com

BOYS GAME NIGHT (GIRLS dance was on March 8)

QRs - job set up to allow one digital download per access with option to buy more

Indoor, backdropped (boy-themed) set up
Arrive: 5:30
Dance times: 6-8pm$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$49j93gdefr7a4hk1r4mh9mi3k1@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_6208e910c75d7c18$cid$, $src$google_calendar_import$src$, $uid$58jhg98r9t454g8p23ubfcs86p@google.com$uid$, $title$HOLD Northville Fall Sports (1 team)$title$, $d$2026-09-03$d$::date, $d$2026-09-03$d$::date, $tm$2:40pm$tm$, $arr$2:00pm$arr$, $sch$HOLD Northville$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Sue Schmitt, yearbook editor
sschmitt@northvillecsd.org

John Karbowski, Athletic Director
jkarbowski@northvillecsd.org

Renee Mackey
mackeyr003@gmail.com

Arrive: 2pm
Start: 2:40pm

Indoor in library
Group Team photos - AND separate group shot of all seniors together
Photographing all teams, schedule below:$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$58jhg98r9t454g8p23ubfcs86p@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d5e441f9f26f0719$cid$, $src$google_calendar_import$src$, $uid$1e233s948a4jucidfp81cpqtjv@google.com$uid$, $title$Academy Kindergarten Cap/Gown and Closings$title$, $d$2026-06-03$d$::date, $d$2026-06-03$d$::date, NULL, $arr$7:25$arr$, $sch$Academy Kindergarten Cap/Gown Closings$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$5/20/26 emailed Suzanne cc SM to confirm timing ckg
Suzanne Gardner-Clarkson
10:33 AM (2 minutes ago)
to me, Stephanie
Carrie,
Our PreK & K ceremony is on 6/3 and begins at 8:30. We have asked kindergarten families to arrive for 7:45 so we can begin taking pictures.  We will have you set up in the library for pictures. Can you and Stephanie arrive at 7:25 so we can begin pictures at 7:45 so our kiddos have time to transition and get set for an 8:30 start? The actual ceremony runs from 8:30-9:15. Our reception follows directly after and runs until 10:30 and we will have a photo booth station set up with an Albany Academy background that families will want pictures in front of.  I will let them know you will be available after for taking family photos. 

Our Grades 1-4 ceremony is on June 4 and runs 1:00-1:40. Our reception follows directly after and runs until 3:00 and we will have a photo booth station set up with an Albany Academy background that families will want pictures in front of.  I will let them know you will be available after for taking family photos. 

Thank you for joining us for these special days. Let me know if you have any further questions.
Suzanne
Need  assistant for cap and gown, the rest can be done with one person
Stephanie,
HI!  Hoping you are doing well.  As our LS Closings approach I wanted to reach out to see about a few things.  Our PreK & K Closing & Reception is June 3
rd
, 8:30-10:30.  Will you be available to take our kindergarten photos with the caps and gowns that morning?  Can we still use the caps and gowns you have?  The Grades 1-4 Closing & Reception is June 4
th
, 1:00-3:00.  Will you be available to take pictures for families as you were in the past, at the receptions for both Closings?  Looking forward to connecting.
Thanks,
Suzanne

SUZANNE GARDNER-CLARKSON
HEAD OF LOWER SCHOOL

Wednesday, June 3
LS Pre-K & Kindergarten Closing - 8:30am in the LS/MS Campus Auditorium 
(we are going to ask Kindergarten parents to bring in their kids at 7:45am for cap and gown photos like you did for us last year. We have the same number of students as last year, but designating a little more time for this so we don't have to rush before the ceremony starts)
US Closing Chapel - 9:30am in the US Campus Chapel
All-School Closing Ceremony - 1:00pm under the Commencement tent (Caird Field)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1e233s948a4jucidfp81cpqtjv@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_6f80fc077f4c463b$cid$, $src$google_calendar_import$src$, $uid$353144F9-51E2-4DC6-B976-046254394C9C$uid$, $title$BKW 8th grade pano 11;26 STEPH$title$, $d$2026-04-24$d$::date, $d$2026-04-24$d$::date, NULL, NULL, $sch$BKW 8th grade$sch$, $typ$graduation/pano$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$353144F9-51E2-4DC6-B976-046254394C9C$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2ef794b3bd4733ae$cid$, $src$google_calendar_import$src$, $uid$5acomt4qr13tadqpj72lvpb07a@google.com$uid$, $title$Green Tech Seniors 11;30am start (Photog + 1)$title$, $d$2027-04-27$d$::date, $d$2027-04-28$d$::date, $tm$11:30am$tm$, $arr$11:00am$arr$, $sch$Green Tech$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Crystal Campbell
ccampbell@greentechhigh.org
Arrive: 11am
Start:11:30am
indoor and outdoor photos of seniors$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5acomt4qr13tadqpj72lvpb07a@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_06057c79efa0835d$cid$, $src$google_calendar_import$src$, $uid$3aeclglo5urphc0fj4kjn6v8l7@google.com$uid$, $title$Hudson Valley Consortium Day 2 (REQ MOLLY, 1 team)$title$, $d$2026-10-01$d$::date, $d$2026-10-01$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$Hudson Valley Consortium Day$sch$, $typ$senior portraits$typ$, ARRAY[$a$Molly$a$]::text[], ARRAY[]::text[], false, $info$Teresa Rieder - LOCAL PHOTOGRAPHER! Has a lot of her own ideas!
hvcteresarieder@gmail.com

*ABSOLUTELY NEED A QR ASST HERE*

Arrive: 7:30am
Start: 8:00am to 1:30PM

Indoor
Home school basis with 215+ students, grades nursery -12
Did not photograph seniors for 24-25, offered studio sessions for 25-26
Meets on Tuesdays and Thursdays 
We'll be there both day as all students do not attend both days
***ORGANIZE QR SHEETS BY THEIR CLASS SCHEDULE, NOT BY GRADE***

Individuals of students only, no faculty
NO Class Pictures
Yearbook support - PSPA to Teresa$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3aeclglo5urphc0fj4kjn6v8l7@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_5222f8759e30f425$cid$, $src$google_calendar_import$src$, $uid$4pjkpjbqln9l7ojt5pfrfmrua5@google.com$uid$, $title$Albany Law Headshots 1 Photog 2 hours$title$, $d$2025-08-28$d$::date, $d$2025-08-28$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$2L Flex JD Students
Date: Thursday August 28, 2025
Time: 9:30am-11:00am
Location: 1928 Building (Foyer)
Contact Joanne Casey jcase@albanylaw.edu$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4pjkpjbqln9l7ojt5pfrfmrua5@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d55bd0bf4db1006e$cid$, $src$google_calendar_import$src$, $uid$24up1a4fk8ocinglgiern1n2is@google.com$uid$, $title$HOLD Albany Academy Spring Photos (PS-4) (1 team)$title$, $d$2027-05-06$d$::date, $d$2027-05-06$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$HOLD Albany Academy Spring$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Rebecca Trainor
TrainorR@albanyacademy.org
Arrive: 7:30am to start at 8am
Outdoor, push into the library if bad weather$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$24up1a4fk8ocinglgiern1n2is@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_08341884fc9d8141$cid$, $src$google_calendar_import$src$, $uid$719pg552qc9jbikuge4703624k@google.com$uid$, $title$TSL UPK East Greenbush (1 photog)$title$, $d$2025-11-19$d$::date, $d$2025-11-19$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, $sch$TSL UPK East Greenbush$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Abby Bowes, director
miss.abby.tsl@gmail.com

11/4 confirmed with Abby ckg
Arrive: 9am
Start: 9:30am
Go to LEFT door and ring bell labeled TSL. You'll be in the gym toward the back,

Indoor
10/29/25 wants winter backdrop ckg
18-20  students and faculty (affiliated with the East Greenbush school district!)
collage

no commission$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$719pg552qc9jbikuge4703624k@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d411965e218c9f42$cid$, $src$google_calendar_import$src$, $uid$4cjjq2t1hq5kf25834ov5i2ngd@google.com$uid$, $title$HOLD Arongen Elementary (2 teams)$title$, $d$2026-10-01$d$::date, $d$2026-10-01$d$::date, NULL, $arr$7:15am$arr$, $sch$HOLD Arongen Elementary$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mallory Detzel, NEW PTO Contact as of 25-26
detzel101312@gmail.com
Cindi Breen, main office admin
breecind@shenschools.org
setup 7:15am, start staff photos at 7:45-8:05am, students at 8:05am, classes every 20 minutes
**NOTE: PTA routinely asks about reducing # of poses to go faster.**
Indoor
Individuals of all students and faculty
All service items
Collages
Full yearbook support - Treering$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4cjjq2t1hq5kf25834ov5i2ngd@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7df4ffe545224337$cid$, $src$google_calendar_import$src$, $uid$4t9res5tmujnb04h02c8qrh0eb@google.com$uid$, $title$Heatly School GR PK-5, 8th grade pano$title$, $d$2026-05-01$d$::date, $d$2026-05-01$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Heatly School GR PK- 8th grade$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jodi Mazzeo, yearbook editor (new pic day contact as of S26)
jmazzeo@greenisland.org
Stephanie Bouchey, principal
sbouchey@greenisland.org
Spring outdoor photos for PK-5 only PUSH INDOORS IF BAD WEATHER (PANO TOO)
Pano for grade 8
4/20/26 Emailed Jodi & Stephanie B cc Matt to confirm ckg
Arrive: 8:30am
Start: 9am?
8x24 pano - group photo needs to be horizontal.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4t9res5tmujnb04h02c8qrh0eb@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3f16a3ad5324ceac$cid$, $src$google_calendar_import$src$, $uid$7io411ftek272ti8rd670d12gp@google.com$uid$, $title$New Lebanon Jr/Sr High (1 team)$title$, $d$2025-10-21$d$::date, $d$2025-10-21$d$::date, $tm$7:35am$tm$, $arr$7:05am$arr$, $sch$New Lebanon Jr/Sr High$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Koni Kraft, main office admin
kkraft@newlebanoncsd.org
Michelle Bienes, yearbook editor 
michellebienes@newlebanoncsd.org
Setup: 7:05am
Start: 7:35am
Indoor on the stage
grades 7-12
ID cards
yearbook files
Pics taken during student's Social Studies classes. QRs are ALPHA by Social Studies class period$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7io411ftek272ti8rd670d12gp@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_be5e70610ccca8ea$cid$, $src$google_calendar_import$src$, $uid$2i8oq8opb32n3aovumq26hvcvb@google.com$uid$, $title$Academy Prom$title$, $d$2026-05-30$d$::date, $d$2026-05-30$d$::date, NULL, NULL, $sch$Academy Prom$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2i8oq8opb32n3aovumq26hvcvb@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d9c9fa72c7480518$cid$, $src$google_calendar_import$src$, $uid$3v0tdm0uhqfnm8slc23bqss5m5@google.com$uid$, $title$Tesago Elementary (2 teams)$title$, $d$2025-09-29$d$::date, $d$2025-09-29$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$Tesago Elementary$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$FALL PHOTOS:
Stephanie Bright 
srbright26@gmail.com
Tesago PTA: 
tesagopta@gmail.com
**different people handle fall (PTA) and spring (main office) pics**
Setup: 7:30am
Start: 8am; faculty first, then students begin at 9am, schedule in binder - classes are sorted per the schedule.
INDOOR in lobby
Individuals of all students and faculty/staff
All service items
Yearbook support 
Attendance files
Collages$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3v0tdm0uhqfnm8slc23bqss5m5@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_de4220dfbd3d2f3f$cid$, $src$google_calendar_import$src$, $uid$5mcbhh07vi18imvfqg4mb8u152@google.com$uid$, $title$Gardner-Dickinson Elem/Middle School (2 photogs + 1 asst)$title$, $d$2025-09-23$d$::date, $d$2025-09-23$d$::date, $tm$8:15am$tm$, $arr$7:45am$arr$, $sch$Gardner-Dickinson Elementary School/Middle School$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Set-up in Kyle's room, one photog in each corner of the room. Assistant feeds to each photographer. Kyle is available throughout the day for questions. 

INDOORS AND COLLAGES PER KYLE   SM
Kyle Barber
kbarber@wynantskillufsd.org
Arrive: 7:45am
Start: 8:15am
SCHEDULE WILL BE IN BINDERS
Indoor
310 students grades PK-8
All service items
2 teams per steph 7/11/22$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5mcbhh07vi18imvfqg4mb8u152@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2d757421f75a3797$cid$, $src$google_calendar_import$src$, $uid$58pavl74kc37usnjiqsvoah3du@google.com$uid$, $title$LCS Graduation Morning (Matt + 1 photog)$title$, $d$2026-06-13$d$::date, $d$2026-06-13$d$::date, NULL, NULL, $sch$LCS Graduation$sch$, $typ$graduation/pano$typ$, ARRAY[$a$Matt$a$]::text[], ARRAY[]::text[], false, $info$Amy Thiel
Librarian/Lower School Tech Teacher/Graduation Coordinator
Loudonville Christian School
374 Loudon Rd. 
Loudonville, NY 12211
518.434.6051 x335
lcs.org
Ministry Center: photos before graduation from 9:30-10am
Graduation - 10:30am
3/25/26 booked with Bonnie ckg
Amy Thiel
Wed, May 13, 4:12 PM (15 hours ago)
to me, Matt
Hi Carrie & Matt - 
I am coordinating Graduation again this year and I wanted to reach out to keep you in the loop!  The LCS Baccalaureate will be held on Friday, June 12 at 6:30 pm (this is a change from last year) and Graduation is to be held on Saturday, June 13 at 10:30 am.  We will have practice on Friday, June 12, beginning at 9:30 am.  
I just want to confirm that you guys have that day on your calendar!  Please let me know if you have any questions or need anything further from me.  I want to also confirm that you'll be available for pictures on Saturday, June 13 beginning at 9:30 am in the Ministry Center (this is also slightly later than last year).  Our graduating class this year is only 8 students so I expect practice, Baccalaureate, Graduation and the pictures beforehand to run a little faster than in previous years.  
Once you have a QR code available, please send it along and I will share it with our families!  (I realize it's a bit early, but figured I would ask now!)
Thank you!  
Best, 
Amy
-- 
Amy Thiel
Office Manager/Librarian/
Grandparents' Day Coordinator/Graduation Coordinator
Loudonville Christian School
374 Loudon Rd. 
Loudonville, NY 12211
518.434.6051 x301
lcs.org
Matt iSmile Studios
Wed, May 13, 7:33 PM (11 hours ago)
to 
Beth
, Amy, me
Hi Amy,
This all sounds great! I'll be your photographer again this year, and Beth will be with me on Saturday for family photos in the morning. 
We'll loop back soon with a flyer and QR code. Have a great evening!
Thanks!
Matt$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$58pavl74kc37usnjiqsvoah3du@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_932ea3ff5de6c805$cid$, $src$google_calendar_import$src$, $uid$1fgqbkcp1k52a644br16c8nqvn@google.com$uid$, $title$Hudson Valley Consortium Day 1 (REQ MOLLY, 1 team)$title$, $d$2026-09-29$d$::date, $d$2026-09-29$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$Hudson Valley Consortium Day$sch$, $typ$senior portraits$typ$, ARRAY[$a$Molly$a$]::text[], ARRAY[]::text[], false, $info$Teresa Rieder - LOCAL PHOTOGRAPHER! Has a lot of her own ideas!
hvcteresarieder@gmail.com

*ABSOLUTELY NEED A QR ASST HERE*

Arrive: 7:30am
Start: 8:00am to 1:30PM

Indoor
Home school basis with 215+ students, grades nursery -12
Did not photograph seniors for 24-25, offered studio sessions for 25-26
Meets on Tuesdays and Thursdays 
We'll be there both day as all students do not attend both days
***ORGANIZE QR SHEETS BY THEIR CLASS SCHEDULE, NOT BY GRADE***

Individuals of students only, no faculty
NO Class Pictures
Yearbook support - PSPA to Teresa$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1fgqbkcp1k52a644br16c8nqvn@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2594f93a0f335beb$cid$, $src$google_calendar_import$src$, $uid$7vn2sqk6usm2mdksu8nthtdh72@google.com$uid$, $title$Academy First Day Stock Photos (STEPH)$title$, $d$2025-09-05$d$::date, $d$2025-09-05$d$::date, NULL, NULL, $sch$Academy First Day Stock$sch$, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$Kayla Germain

9:21 AM (34 minutes ago)
to stephaniemccauley@mac.com, Matthew, me
Hi Steph and all!

Sorry for my SUPER late response. Summer has been crazier than anticipated. 😊

I’m good with planning for a full day. In the afternoon, I’d like to setup some more intentional shots to capture for some admissions materials (may require better lighting?). More intentional than our sort on the run of last year. I can pull together a shot list.

Drone would be awesome! The morning of the first day may look a little different this year, and a drone would be wonderful to capture that. Details TBD but can we plan for that for now? 

THANK YOU!
Kayla
Kayla!  ❤️
I would love this.  
There has been some talk (via Christine Vaughn) of changing US school pictures to two days over Sept 4 (new students and mentors) and Sept 5 (rest of Upper School).   Unconfirmed as of right now but looking likely.
Even if that happens, I have enough staff to pull myself off photographing individual kids and doing the first day activities, so, YES!
We can give you a half day (4 hours) at $500 or a full day (8 hours) at $800.   We can add drone at no additional cost, too, but it does take time away from still shots since there’s a little set up involved as well as flying time.  But - an option.  Might be fun to have some video or high altitude stills of kids crossing, if they are still doing that?
I put this on my calendar and blocked off the whole day, you can decide even last minute what it all will look like.   Thank you so much for the opportunity!
:)
Steph
On Jun 25, 2025, at 9:45 AM, Kayla Germain <
GermainK@albanyacademy.org
> wrote:
Hi Steph!

I hope you are doing well and finding ways to manage this heat!

I was hoping to get on your radar for a first-day-of-school shoot again this fall. I think we can probably get by with a half-day this time, but the pictures were such a hit last year I would love to capture some again!

Please let me know if you’re available on our first day, Friday, September 5, and what the rate would be so I can plan for that.

Thanks, Steph!
Kayla

KAYLA GERMAIN$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7vn2sqk6usm2mdksu8nthtdh72@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_239ceb24b7cc5242$cid$, $src$google_calendar_import$src$, $uid$2ofdtl92beahqak3ba1m7aoq8k@google.com$uid$, $title$A.W. Becker Fall Elem Picture Day (2 teams)$title$, $d$2025-10-10$d$::date, $d$2025-10-10$d$::date, NULL, $arr$8:00am$arr$, $sch$A.W. Becker Fall Elementary School$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Morgan Zinzow, Admin Asst new since fall 2025
mzinzow@rcscsd.org
(518) 7565200 ext 5002

Marybeth Bohl
mbohl@rcscsd.org

9/25 confirmed; 
9/23 emailed to confirm times and get location and schedule ckg
Setup: 8am
Start faculty: 8:30am
Start students: 9:15am

Indoor photos - in Band Room (9/25 confirmed) - check into main office upon arrival with photo IDs
individuals of 450 students plus faculty
Service Strips, Attendance Files
Full Yearbook Support - Treering
Collages$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2ofdtl92beahqak3ba1m7aoq8k@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_fd42ff854477be03$cid$, $src$google_calendar_import$src$, $uid$0qmkh18lpe7f5hj45ujmgklpls@google.com$uid$, $title$Brandt Family Photos STEPH AM$title$, $d$2025-11-04$d$::date, $d$2025-11-04$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0qmkh18lpe7f5hj45ujmgklpls@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_250d307af634dab1$cid$, $src$google_calendar_import$src$, $uid$6o3vmo4sbkff4j2gco3ijdhcuu@google.com$uid$, $title$Tesago Elem Makeup Day (1 team)$title$, $d$2025-10-27$d$::date, $d$2025-10-27$d$::date, NULL, $arr$10:00$arr$, $sch$Tesago Elementary School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Stephanie Bright 
srbright26@gmail.com
Schedule for am only
FALL PHOTOS:
Stephanie Bright 
srbright26@gmail.com
Caroline Moore (training for next year so cc her on everything) camoore004@gmail.com
Tesago PTA: 
tesagopta@gmail.com
**different people handle fall (PTA) and spring (main office) pics**
10/17/25 proposed this makeup day schedule to Stephanie and Caroline ckg:
9:30- set up
10:00- AM Kindergarten
10:15- 4th grade
10:30- 3rd grade
11:00- 5th grade
11:15- 1st grade
11:30- 2nd grade
11:45-12:00- PM Kindergarten$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6o3vmo4sbkff4j2gco3ijdhcuu@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_6b4dd164dbbb1cef$cid$, $src$google_calendar_import$src$, $uid$0a35nb5arsjprdfur0q5pa3e20@google.com$uid$, $title$HOLD Waterford-Halfmoon RAIN PANO ONLY (1 photog)$title$, $d$2027-05-10$d$::date, $d$2027-05-10$d$::date, NULL, NULL, $sch$HOLD Waterford-Halfmoon RAIN ONLY$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jessica Rice, PTO President
waterfordhalfmoonpto@gmail.com
Check in main office upon arrival with photo ID
NEED TIME FOR PANO!!!!
6th grade group photo (on playground per Annemarie Stripe, 6th grade teacher)
Quick turnaround if possible -  needs to be added in yearbook.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0a35nb5arsjprdfur0q5pa3e20@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3b94eb7225af7549$cid$, $src$google_calendar_import$src$, $uid$77tqt4ld8i1do9b8ma2hmqqt88@google.com$uid$, $title$Malta Ave Family Photo Night STEPH$title$, $d$2025-11-13$d$::date, $d$2025-11-13$d$::date, $tm$4:00pm$tm$, $arr$3:30pm$arr$, $sch$Malta Ave Family Photo Night$sch$, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$Katie Clark katie.clark631@gmail.com, 631-745-1282
Jenny Bottisti, school admin  jbottisti@bscsd.org

Arrive: 3:30pm
Start: 4pm-8pm

Acuity sign ups$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$77tqt4ld8i1do9b8ma2hmqqt88@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_99654dc9cf3ba35a$cid$, $src$google_calendar_import$src$, $uid$5ngvepneik069hokpet5uftsr7@google.com$uid$, $title$Photo Booth to Siena$title$, $d$2025-09-18$d$::date, $d$2025-09-18$d$::date, NULL, NULL, NULL, $typ$photo booth$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Hi Steph!
I hope you had a wonderful weekend! 
I wanted to reach out because we are planning a big celebration for September 18 to celebrate Siena's change to university status! We were wondering if we could rent the photobooth from you for this. We would be looking to use it from 5:00 p.m. - 8:30 p.m. that evening. 
When you get a chance, let me know if this might be possible and what the cost would be. I hope you and the family are doing well!
Best, 
Sam 
𑁋
Sam Hesler
Asst. Director of Academic Programs and Events | Siena University
Office:
 518-783-2307$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5ngvepneik069hokpet5uftsr7@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_cb8b178a3aad4b71$cid$, $src$google_calendar_import$src$, $uid$05mfhvju0l14e8l23n26e024sl@google.com$uid$, $title$HOLD Jefferson 4th Grade Pano (1 photog)$title$, $d$2027-05-14$d$::date, $d$2027-05-14$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$HOLD Jefferson 4th Grade$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Corrie Hoffman, PTO contact
corrieh06@icloud.com
Denise Smith, Main Office Admin
dsmith@schalmont.net
3rd time doing pano with us
**4th grade pano outside
Arrive: 8:30am
Start: 9am
Outdoor photo
NOT pushing inside. Rain date for pano on May 18$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$05mfhvju0l14e8l23n26e024sl@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_305aad30032dc9e4$cid$, $src$google_calendar_import$src$, $uid$6su2p2rfi7hlitnou5b5bio81e@google.com$uid$, $title$Gordon Creek Yearbook Clubs (1 photog)$title$, $d$2026-03-24$d$::date, $d$2026-03-24$d$::date, $tm$9:30am$tm$, $arr$9:15am$arr$, $sch$Gordon Creek Yearbook Clubs$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Katie Bennice
Administrative Assistant
Gordon Creek Elementary School
(518) 884-7270 ext.3368
kbennice@bscsd.org
3/11/26 Katie confirmed; 3/10/26 emailed Katie cc Beth to confirm ckg
arrive at 9:15am
start at 9:30am
in lobby, no backdrop per Katie
Katie will call groups down to be photographed
7 groups
*Please name the files the GROUP name so the yearbook crew know what's what. Thank you!
club photos for yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6su2p2rfi7hlitnou5b5bio81e@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ccfd1b0b7cdfc39e$cid$, $src$google_calendar_import$src$, $uid$4q0of0b5ms11i2gcnnjmukd1a3@google.com$uid$, $title$Arongen 5th Grade Graduation 8:00-10$title$, $d$2026-06-25$d$::date, $d$2026-06-25$d$::date, NULL, NULL, $sch$Arongen 5th Grade Graduation$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mallory Detzal, new pic day contact
detzel101312@gmail.com

Cindi Breen, main office admin
breecind@shenschools.org

4/20/26 booked with Mallory ckg

notes for reference:
Hi everyone, as per the 5th grade team, they'd like you to capture photos of each student as they go on the stage and shake hands with Mr. Hills and their teacher.

The ceremony begins promptly at 9:00am and families will be arriving as early as 8:15am.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4q0of0b5ms11i2gcnnjmukd1a3@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_1d2cd7072bcaa157$cid$, $src$google_calendar_import$src$, $uid$7h2gr5nei4lf5q5bd1fo6tvft5@google.com$uid$, $title$NEW Duanesburg Youth Wrestling Club (Steph)$title$, $d$2026-01-19$d$::date, $d$2026-01-19$d$::date, $tm$6:00$tm$, $arr$5:30pm$arr$, $sch$NEW Duanesburg Youth Wrestling Club$sch$, $typ$sports$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$Rebecca Atwell
rebecca.d.atwell@gmail.com
518-649-0118 

Mike Walpole
mikewalpole@gmail.com

Steph confirmed ckg
Arrive: 5:30pm
Start 6-7pm

Indoor in Duanesburg HS in the Joe Bena Hall
25 Youth wrestlers
Individual and team photos
Coach photos too$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7h2gr5nei4lf5q5bd1fo6tvft5@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_33f298770b8ab749$cid$, $src$google_calendar_import$src$, $uid$5kfg46aq619tldp1fk6ravp7d4@google.com$uid$, $title$(Mini) Studio Easter Bunny Robert confirmed for Bunny$title$, $d$2026-03-21$d$::date, $d$2026-03-21$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5kfg46aq619tldp1fk6ravp7d4@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_5067cde7fb9fa074$cid$, $src$google_calendar_import$src$, $uid$2gbu4vr5506uqes3qnfauhu6fl@google.com$uid$, $title$Milton and Lauren Monthly Meeting$title$, $d$2026-03-31$d$::date, $d$2026-03-31$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2gbu4vr5506uqes3qnfauhu6fl@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a9b96b5e35e701c7$cid$, $src$google_calendar_import$src$, $uid$2mmq68s1fidnflg57iklp7g06n@google.com$uid$, $title$Eagle Point PHOTO BOOTH (Milton/Lauren)$title$, $d$2026-06-05$d$::date, $d$2026-06-05$d$::date, NULL, NULL, $sch$Eagle Point$sch$, $typ$photo booth$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, $info$5/5/26 emailed school cc M/L to let them know to contact M/L to customize border ckg
5/4/26 Spring Fling Dance - school wants photo booth only as one of their free events. Carrie emailed team to see if this is possible.

6-8pm

Eagle Point PTA
eaglepointpta@gmail.com

1st free event for 25-26$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2mmq68s1fidnflg57iklp7g06n@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_49951bfe9ba80cb8$cid$, $src$google_calendar_import$src$, $uid$39uv0uofdnkcql9fospv46ij12@google.com$uid$, $title$Wood Road 5th Grade PANO RAIN DATE (1 photog)$title$, $d$2026-05-11$d$::date, $d$2026-05-11$d$::date, NULL, NULL, $sch$Wood Road$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$MaryBeth Leslie, admin
mleslie@bscsd
Only 5th grade pano on this date if not done on 4/14 spring pic date because of rain. This is at the school's request.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$39uv0uofdnkcql9fospv46ij12@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7361821d867d2d66$cid$, $src$google_calendar_import$src$, $uid$2jo1vqj3t04e14jdqk3jc1hfla@google.com$uid$, $title$Jefferson 4th Grade Pano (1 photog)$title$, $d$2026-05-15$d$::date, $d$2026-05-15$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Jefferson 4th Grade$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Corrie Hoffman, PTO contact
corrieh06@icloud.com
Denise Smith, Main Office Admin
dsmith@schalmont.net
2ND time doing pano with us
**4th grade pano outside
5/11/26 confirmed with Corrie cc Matt/Andrew ckg
Arrive: 8:30am (?) Is that enough time to take the photo of Mr. Gifford and Ms. Rose, and then the group shots?
Start: 9am
Outdoor photo
NOT pushing inside. Rain date for pano on May 19
**ALSO - Take photos of Mr. Gifford and Mrs. Rose together. Added 4/29/26 ckg**
Corrie Hoffman
1:03 PM (20 minutes ago)
to me, Andrew, Matthew
Mr. Gifford is hoping we can do the photograph on the playground right at 9am. We can do his photo with Mrs. Rose right before if that works.
I will be there to meet the photographer so we can ensure things go smoothly. 

Corrie Hoffman
4/29/26 7:36 AM (1 hour ago)
to me
Carrie,
Do you think the photographers who take the panoramic photo on 5/15 will be able to take a photo of Mr. Gifford and Mrs. Rose together for us? 
Please let me know. 
Corrie 
PANO DETAILS - 8x24, 1 for each 4th grader and their teachers, one framed in black for school. $6 EACH
Schalmont Central School District$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2jo1vqj3t04e14jdqk3jc1hfla@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_fdaf5a85cb5bfa91$cid$, $src$google_calendar_import$src$, $uid$3jjqi64a4ileq4hkfgk4ver7oo@google.com$uid$, $title$Kids Express First Day 7:30am (1 photog)$title$, $d$2025-09-03$d$::date, $d$2025-09-03$d$::date, NULL, NULL, $sch$Kids Express First Day$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$8/27 talked to Sue and gave her info to confirm ckg
Liz Landon
Liz@achievements.org
(This is a free event for the school where they receive the digital files)
School needs to review images before we share the images with the school: Per Matt - 
We send the link to the school, they review them and send us a list of any photos of students that can’t be publicly shown. We delete those then they share the link. Very easy!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3jjqi64a4ileq4hkfgk4ver7oo@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_469a357c9d9dd5a3$cid$, $src$google_calendar_import$src$, $uid$1646ca2u31lvf38lou3ocknq1n@google.com$uid$, $title$Central Park Middle School (1 team)$title$, $d$2025-11-06$d$::date, $d$2025-11-07$d$::date, $tm$8:25am$tm$, $arr$7:50am$arr$, $sch$Central Park Middle School$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$*NEW THIS FALL*
Kate Pieronek, NEW asst principal (came from Hamilton Elementary)
pieronekk@schenectadyschools.org
Arrive: 7:50am
Start: 8:25am (FIRST PERIOD START TIME)
Indoor
580 students grades 6-8
Faculty as well
photos taken during PE classes
Yearbook support
11/18/25 proposed this schedule to Kate ckg:
7:50 set up
8:25 grade 6
8:45 grade 7
9:05 grade 8
9:25 latecomers, staff, then breakdown equipment$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1646ca2u31lvf38lou3ocknq1n@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c1189612f3bf5298$cid$, $src$google_calendar_import$src$, $uid$5pgcf30vdvs63n7i154b0ofp6i@google.com$uid$, $title$Elevate Dance Project Day 2 4;00-8;30 PM$title$, $d$2026-04-01$d$::date, $d$2026-04-01$d$::date, $tm$4:30pm$tm$, $arr$4:00pm$arr$, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Bridget Engelhardt
bengelhardt@rcscsd.org
Molly is dance studio owner
elevatedanceproject1@gmail.com
3/11/26 emailed Bridget and Molly E cc Molly S to get rosters and schedule ckg
2/18/26 times per email from Bridget to Steph and Carrie
Arrive: 4pm
Start: 4:30pm
End about 8:30pm
Located in Faith Plaza, 2480 Route 9W, Ravena, NY 12143 
NEW SPACE upstairs in the mall
NOTE: BATCH SHIPPING TO THE STUDIO FOR MOLLY E. TO PICK UP
Bridget Engelhardt
9:40 AM (1 hour ago)
to 
Molly
, me, Bridget, elevatedanceproject1
Hey Molly!
There is a ton of parking, so feel free to park wherever you can find a spot.  If you're facing Shop n Save, the door is directly to the right.   The door is kind of facing the doors of the store. We are in between Shop n Save and the Chinese takeout spot.  There is a large decal on the door that says Elevate Dance Project on the door.  One of us will meet you right down by the door.
Looking forward to meeting you!!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5pgcf30vdvs63n7i154b0ofp6i@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_880c9966d3d3f2c7$cid$, $src$google_calendar_import$src$, $uid$38fr2nen3cjdnqs7i3la0sq2g8@google.com$uid$, $title$Santa Joel$title$, $d$2025-12-13$d$::date, $d$2025-12-13$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$38fr2nen3cjdnqs7i3la0sq2g8@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f8871161920e94e5$cid$, $src$google_calendar_import$src$, $uid$1v2hq45g8eu9q9btmsse3l9s48@google.com$uid$, $title$Siena Career Fair 1 Photog$title$, $d$2026-02-11$d$::date, $d$2026-02-11$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$February 11, 2025
 | 12:30 PM – 2:00 PM | Student Center$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1v2hq45g8eu9q9btmsse3l9s48@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_77fd68479d6e5b46$cid$, $src$google_calendar_import$src$, $uid$2ng8ono9b0nqmnn4pm7gjsamhd@google.com$uid$, $title$Loudonville Christian Fall Photos (1 team)$title$, $d$2025-09-24$d$::date, $d$2025-09-24$d$::date, NULL, NULL, $sch$Loudonville Christian Fall$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Bonnie Strock
bstrock@lcs.org
Set-up: 745am in the Ministry Center
All service items and yearbook
group class pictures$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2ng8ono9b0nqmnn4pm7gjsamhd@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f99caba72e4d706c$cid$, $src$google_calendar_import$src$, $uid$7mp2mn52n63v3ek5f7evsebkcc@google.com$uid$, $title$Milton Terrace RAIN 5th Grade Photo (1 photog)$title$, $d$2027-05-10$d$::date, $d$2027-05-10$d$::date, NULL, NULL, $sch$Milton Terrace RAIN 5th Grade Photo$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Sarah Kinney, NEW main office admin
skinney@bscsd.org
NOT SURE YET WHAT TIME...$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7mp2mn52n63v3ek5f7evsebkcc@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_18ea7bb3d74cb5c4$cid$, $src$google_calendar_import$src$, $uid$265sngl3gfvp31krqeiu6hck67@google.com$uid$, $title$Chango Elem Picture Day (2 Teams)$title$, $d$2025-09-29$d$::date, $d$2025-09-29$d$::date, $tm$8:45am$tm$, $arr$8:15am$arr$, $sch$Chango Elementary School$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Emily Carter
mily.carter4191@gmail.com
9/24 got schedule at 11;35 and shared with teams; 9/24 recd schedule at 11:20am, need access to see it ckg
Arrive: 8:15am
Start: 8:45am staff, 9:15am students
Monday 9/29
Time
Grade
Time
Grade
8:45
Staff Pictures
8:45
Staff Pictures
9:15
Woodbeck AM
9:15
Lucchesi AM
9:35
High/ Ferritto
9:35
Berschwinger
9:55
Sharp
9:55
Cocozzo/O'Connor
10:15
Salvi
10:15
Collins
10:35
Pipino
10:35
Cowan
10:55
Bassey
10:55
Szeli
11:15
Figel
11:15
Jackson
11:35
Theilemann
11:35
Ferrone
11:55
Monteiro
11:55
Barbagelata
12:15
Lunch break
12:15
Lunch break
12:35
Lunch Break
12:35
Lunch Break
12:55
Woodbeck PM
12:55
Lucchesi PM
1:15
Meager
1:15
Mr. C/Drum
1:35
1:35
1:55
Klett
1:55
Donnelly
2:20
S. Kuhn
2:20
EKu
NEW SCHOOL Fall 2025!
Indoor
~450 Kids
COMPOSITE PHOTOS, not group class pictures -MM 8/28/25

On Mar 15, 2025, at 4:40 PM, Matt iSmile Studios <
matt@ismilestudios.com
> wrote:
Hi Emily,
How about October 2nd, 3rd, 6th or 7th?
Thanks!
Matt
On Sat, Mar 15, 2025 at 3:44 PM Emily Carter <
emily.carter4191@gmail.com
> wrote:
Hi Matt!
There isn't a certain day of the week for the photos. Can you give me some dates in October and I'll check with the school?
Thank you!
Emily
On Wed, Mar 12, 2025 at 9:55 AM Matt iSmile Studios <
matt@ismilestudios.com
> wrote:
Hi Emily,
That's great news! We're so excited to work with you this Fall!! I'm copying my colleagues Stephanie and Carrie onto this email too :)
I know you were thinking of an early October date for Picture Day. Is there a certain day of the week that works best? I can provide some options. Also, would Chango like to do Spring Photos? If so, we can get that date in the books too.
We'd also be happy to assist with this year's graduation! We don't have an on-site print option. But, for a lot of the other Shen 5th Grade Graduations, we send a photographer over to photograph the grads with their families (or friends) and then parents can view the pictures in a gallery a few days later and can purchase for a low cost. No cost to the school.
If that's something you're interested in, let me know the graduation date!
Please let me know if you have any questions. Thank you so much!
Best,
Matt
On Wed, Mar 12, 2025 at 9:33 AM Emily Carter <
emily.carter4191@gmail.com
> wrote:
Hey Matt!
I wanted to let you know that I spoke to the principal and she told me she would support whatever decision I made. So I’d like to set up a date for next fall!
I also had a question about your photo booths. I am planning the 5th grade graduation and wondering if you print the photos at the event or is that not an option? The kids don’t have phones or emails so send to. Also, that is the price for 2 hours?
Thank you!
Emily$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$265sngl3gfvp31krqeiu6hck67@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_5b232f2dd8fea848$cid$, $src$google_calendar_import$src$, $uid$2fnlfrtv9dk93mj7n4j64llovc@google.com$uid$, $title$HOLD Craig Elementary MAKEUPS (1 teams)$title$, $d$2026-10-29$d$::date, $d$2026-10-29$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$HOLD Craig Elementary$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Amy Wickham awickham23@gmail.com
Erin Perry ebeland20@gmail.com

Nisky school district
NEW Fall 2025
420 students
Talking to Treering for yearbook

Arrive: 7:30am
Start: 8am, need to be out by 10am per email below from fall 2025

7:30am set-up
8:00am K
8:15am 1st
8:30am 2nd
8:45am 3rd
9:00am 4th
9:15pm 5th
9:30am latecomers and staff
9:45am pack up equipment

Hi Carrie,
I spoke to the office at Craig and they would prefer an early start time similar to picture day.  (8am start time for photos) We are incredibly limited on space inside the school this year so the principal would like us to try to utilize the back corner of the cafeteria for makeups. Downside is lunch starts at 10am.  Typically, in the past, our makeups have taken a total of 2 hours max.  
I will send all of this to them as well. 

Thank you!
Erin$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2fnlfrtv9dk93mj7n4j64llovc@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4c30b227fb471f41$cid$, $src$google_calendar_import$src$, $uid$1m7gk9pj9jr7ajhqofai3i3l9h@google.com$uid$, $title$Green Tech Makeups (1 team)$title$, $d$2026-10-16$d$::date, $d$2026-10-16$d$::date, $tm$11:00am$tm$, $arr$10:30am$arr$, $sch$Green Tech$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Cedria Hood
chood@greentechhigh.org
Main Phone : (518) 396-5107
Setup: 10:30am
Start: 11:00am during lunch (HS Lunch 12-1, MS Lunch 1-2)
Indoor (in cafeteria)
Individuals of all students grades 6-12 (12 for ID cards)
Individuals of all faculty / staff
ID cards for all
See schedule for timing - Cedira will send over when ready
Yearbook and attendance files
Doing senior portraits in spring 2027$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1m7gk9pj9jr7ajhqofai3i3l9h@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a995d463a45974e0$cid$, $src$google_calendar_import$src$, $uid$5s2nln3pmredi7anv2j3gl60qh@google.com$uid$, $title$Maywood Academy BOCES (1 team)$title$, $d$2025-11-04$d$::date, $d$2025-11-04$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Maywood Academy BOCES$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mr. Gabriele Barbato
Principal of Maywood Academy - Capital Region BOCES
925A Watervliet-Shaker, Albany, NY 12205
Office - 518-464-6363
Gabriele.Barbato@neric.org

Rose Gabriel, office admin
astrid.gabriel@neric.org

special needs school
needs BOCES contract - Carrie handled over summer

10/2025 emailed to confirm times and req schedule. Have to stay with 15 min slots to get all classes in ckg
Arrive: 8:00am
Start: 8:30am

Schedule: https://docs.google.com/spreadsheets/d/1J5_4xhTGOmPkZR3sylS-lXToL2DBlhWgzo30WNaolfc/edit?usp=sharing

Indoor
110 students
Individuals of students and faculty
IDs for Students
Service Strips
Considering a yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5s2nln3pmredi7anv2j3gl60qh@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7d22f23552b35e6d$cid$, $src$google_calendar_import$src$, $uid$50i84kbmv3qkjcvq8ed1md3bhd@google.com$uid$, $title$BKW Graduation 1 Photog$title$, $d$2025-06-26$d$::date, $d$2025-06-26$d$::date, NULL, NULL, $sch$BKW Graduation Photog$sch$, $typ$photo booth$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$NO PHOTO BOOTH - already booked elsewhere  SM
On Feb 11, 2025, at 6:01 PM, Colleen Stevens 
wrote:
Hello,
I was wondering if you could take photos at our graduation this year and if we could use the photo booth you brought to prom? The graduation will be on 6/26 at 6:30 pm at the EGG. I know you have done this in the past and the photos came out great!
Thank you, 
Colleen$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$50i84kbmv3qkjcvq8ed1md3bhd@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ccf441a4606d46b8$cid$, $src$google_calendar_import$src$, $uid$3n7sjeehjf5fke9om25kgbueet@google.com$uid$, $title$Brower Wedding Steph$title$, $d$2025-06-07$d$::date, $d$2025-06-07$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$12:00   You start getting ready with bridal party  (don’t get fully dressed because I need pics of the gown)
2:00   I arrive and do photos of you and bridal party, any of your family that is with you before
3:00   ** IF there is time and the boys are close by, I can meet up with them to do photos prior to ceremony
3:30   Everyone heads to church - do you want to do a first look before the ceremony?
4:00   Ceremony
5:00  Formals (will take around 30 minutes, more if there are a LOT of people)
5:00 - 6:00 is your cocktail hour, you will hopefully arrive for the second half
6:00  Reception starts, intros, first dance, etc
6:15   Table pictures before dinner (I will explain)
6:30   Dinner  (photos not taken during dinner, no one wants that)
7:30   Cake cutting and dancing begin8:00   Photos endHi!
I'm so sorry you were sick! No worries at all about the delay; I figured you were busy! I hope you're feeling better now—I had a nasty stomach flu on Christmas and the only time I've been so miserable was perhaps when I had covid.
Anyway, that is way more in line with our budget, and I think we can make it work! It's awesome that you'll be guiding us through the day and when to be aware of slowing down, taking time, etc. That will be very helpful!
But anyway, yes, that should be good, and I appreciate your being willing to work with me!
Susannah
From:
 Stephanie McCauley <
stephaniemccauley@mac.com
>
Sent:
 Thursday, May 16, 2024 9:29 PM
To:
 Susannah Brower <
browers@albanyacademies.org
>
Subject:
 Re: photography

I am so ashamed it took me six days to write back to you.   My only excuse is I have had a TERRIBLE flu - still sick but finally over the hump I think.  I hope you didn’t think I wasn’t interested I just fell so far behind!
We can make this work.  I can pare down to just me (no second shooter, we will be ok, when we review your “run of day” we will build in safety methods for you to slow down a little so I can make sure I can be everywhere I need to be), and we can eliminate both the getting ready stuff no one wants and the last two hours of the reception (also no one wants).   I think we can get this done for around $2K that way, if that is an amount that you can keep in the back of your mind and we can work toward?
Just wanted to leave this out there for you to consider, I am hurrying typing so I can hit send since this took WAAAAYYYYYYY TOOOOOOOOOO LONGGGGGGGG$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3n7sjeehjf5fke9om25kgbueet@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c3d56f9630b224f2$cid$, $src$google_calendar_import$src$, $uid$51rgllnji9jg9lm952r1uohovh@google.com$uid$, $title$AWB Makeup Day 2 (Matt)$title$, $d$2025-11-18$d$::date, $d$2025-11-18$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$AWB$sch$, $typ$makeup/retake$typ$, ARRAY[$a$Matt$a$]::text[], ARRAY[]::text[], false, $info$Morgan Zinzow, Admin Asst (new fall 2025)
mzinzow@rcscsd.org
(518) 7565200 ext 5002
Arrive: 8:30am
Start: 9am students
Going back as school gave out incorrect timing schedule to teachers on original MU Day on 11/12. Estimate 20 students needing photos.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$51rgllnji9jg9lm952r1uohovh@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_8010e63013431ef3$cid$, $src$google_calendar_import$src$, $uid$4r3cm5bpd2622k0gmg0m40173r@google.com$uid$, $title$Albany Academy Fall Sports (2 photogs) AFTERNOON 2-4pm$title$, $d$2025-09-03$d$::date, $d$2025-09-03$d$::date, $tm$2:00pm$tm$, $arr$1:30pm$arr$, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Paul Gallucci, AD
galluccp@albanyacademy.org

Michael Murray, Asst AD
MurrayM@albanyacademy.org

Senior portrait team to shoot these per Matt. Acuity blocked off from senior sessions.

8/20/25 new timing! Arrive: 1:30pm, start 2pm, end 4pm

Indoor both girls and boys, POOL LOBBY confirmed by Paul on 8/20/25 ckg
Group team pics
Senior banners

Schedule from Paul:

In Pool Lobby:
2pm - B/G Golf
215 - Football
230-B Soccer
240 Volleyball
250 - G Soccer
3pm - B/G XC
315 - Tennis$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4r3cm5bpd2622k0gmg0m40173r@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e30017015441b9cf$cid$, $src$google_calendar_import$src$, $uid$4h2hin1og9g95pu9vl6p6fud8l@google.com$uid$, $title$Alloya Headshot 9:30AM (MATT)$title$, $d$2025-07-11$d$::date, $d$2025-07-11$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Matt$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4h2hin1og9g95pu9vl6p6fud8l@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9e92cf8389cf0e6e$cid$, $src$google_calendar_import$src$, $uid$6t660pe0bp0811383nrj7a1sju@google.com$uid$, $title$HOLD Arongen 5th Grade Graduation 8:00-10$title$, $d$2027-06-24$d$::date, $d$2027-06-24$d$::date, NULL, NULL, $sch$HOLD Arongen 5th Grade Graduation$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mallory Detzal, pic day contact
detzel101312@gmail.com

Cindi Breen, main office admin
breecind@shenschools.org

notes for reference:
Hi everyone, as per the 5th grade team, they'd like you to capture photos of each student as they go on the stage and shake hands with Mr. Hills and their teacher.

The ceremony begins promptly at 9:00am and families will be arriving as early as 8:15am.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6t660pe0bp0811383nrj7a1sju@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9f794b8623a1c2cf$cid$, $src$google_calendar_import$src$, $uid$0ube355ebj3ddf498v5necp3jj@google.com$uid$, $title$HOLD Cohoes HS Fall Sports (1 team)$title$, $d$2026-10-07$d$::date, $d$2026-10-07$d$::date, NULL, NULL, $sch$HOLD Cohoes High School$sch$, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Caryn Dollard, picture day contact
cdollard@cohoes.org
Jeff Huneau, AD 
jhuneau@cohoes.org
OFFER BANNERS
5th year doing sports at this school - arrange with Caryn, and AD$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0ube355ebj3ddf498v5necp3jj@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_63e6c142f63753f7$cid$, $src$google_calendar_import$src$, $uid$0gnod42vkmm16i7vcic051ieq1@google.com$uid$, $title$HOLD Gardner-Dickinson Elem/Middle School (2 teams)$title$, $d$2027-05-07$d$::date, $d$2027-05-07$d$::date, $tm$8:15am$tm$, $arr$7:45am$arr$, $sch$HOLD Gardner-Dickinson Elementary School/Middle School$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kyle Barber ;)
kbarber@wynantskillufsd.org
Arrive: 7:45am
Start: 8:15am
Outdoor, push indoors is bad weather per Kyle
310 students grades PK-8
NO GROUP PICTURE
2 teams per steph$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0gnod42vkmm16i7vcic051ieq1@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d3d9b9afd209cef1$cid$, $src$google_calendar_import$src$, $uid$0acgtnr1m5kl832sa6ajl1uo36@google.com$uid$, $title$Northville Winter Sports (1 team)$title$, $d$2025-12-01$d$::date, $d$2025-12-01$d$::date, NULL, NULL, $sch$Northville$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Sue Schmitt, yearbook editor
sschmitt@northvillecsd.org
John Karbowski, Athletic Director
jkarbowski@northvillecsd.org
Individual and team photos
Senior Banners
school days ends at 2:30 pm
From the AD 11/21/25:
2:40 pm - 2:45 pm Nordic Ski
2:45 pm - 2:55 pm Girls Varsity Basketball
2:55 pm - 3:05 pm  Varsity Cheerleading
3:05 pm - 3:15 pm Boys Modified Basketball
3:15 pm - 3:25 pm  Girls Modified Basketball
3:25 pm - 3:35 pm Boys JV Basketball
3:35 pm - 3:45 pm Boys Varsity Basketball
Hi Stephanie!
I am not sure if I am on all of the emails but I really only need to be on the one that involves the banners for Booster Club for Senior Banners:) I just thought I would consolidate into one email for Booster club purposes🤣 
 I have listed the senior rosters for all winter sports! We have 11 Seniors and would like the 2x3 banners for the gym. 
The banners will be billed to the booster club and we would also like the 8z10 photos of the senior banner pics chosen for our senior night!
Thank you for working with me so easily.  Let me know if you have any questions!
I always appreciate you!
Happy Thanksgiving!!!!🦃
Nordic Ski
Lyra Thomarie 12
Boys Varsity Basketball
Landon Artikuski 12
Braydn Bovee 12
Landon Frasier 12
Sal Pagano 12
Hunter Riches 12
Kaidyn Tran 12
Girls Varsity Basketball
Keira Mackey 12
Leah Valovic 12
Varsity Cheerleading
Mia Perrott 12
Kendra Stevens 12
-- 
Thank you,
~Mrs. Bovee$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0acgtnr1m5kl832sa6ajl1uo36@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_bbfcef4448d387cc$cid$, $src$google_calendar_import$src$, $uid$1bcuoseusi3r4hct7rvo0ldn2r@google.com$uid$, $title$Keane 5th Grade Group Photo 10:15$title$, $d$2026-05-20$d$::date, $d$2026-05-20$d$::date, $tm$10:30am$tm$, $arr$10:15am$arr$, $sch$Keane 5th Grade Group Photo$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$CHRISTINE MAHADEO, building secretary (new pic day contact)
mahadeoc@schenectadyschools.org
5/14/26 reschedule to 5/20 due to lawn not being mowed per MM
2/24/26 time chged with Karen due to fire drill ckg; 9/9/25 confirmed with Karen (note, time is different than for the rain date) ckg
Karen Williams, main office
williamsk@schenectadyschools.org
Arrive: 10:15am
Start: 10:30am
School is buying prints for $6 per 8x24.
***PLEASE TAKE A FEW LANDSCAPE SHOTS OF THE OUTSIDE OF THE SCHOOL BUILDING FOR THE COVER OF THEIR PRINCIPAL'S BOOK*** 
In front of school
QUICK TURNAROUND for principal's book and yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1bcuoseusi3r4hct7rvo0ldn2r@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a4eef2a7c212431c$cid$, $src$google_calendar_import$src$, $uid$1859o9icearidkebl3krega1fl@google.com$uid$, $title$Orenda Elementary School (2 teams)$title$, $d$2025-09-26$d$::date, $d$2025-09-26$d$::date, NULL, $arr$7:45am$arr$, $sch$Orenda Elementary School$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Becky Striker, PTA picture day contact
rstrikes102@gmail.com
Krissie Yacano, attend clerk (school contact for pic days)
yacakris@shenschools.org
NOTE FOR 2026: update google schedule for 20 min time slots
Set-up: 7:45am; Start photos at 8:15am
main office works on class schedule for pic day - that's Krissie above ^
Check in at the main office with photo IDs.
OUTDOOR - around back like last fall and spring
RAIN DATE IS FOR ENTIRE SCHOOL PLUS MAKEUPS
Individuals of all students and faculty
Service strips, yearbook
Collages$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1859o9icearidkebl3krega1fl@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_197ae34933b93590$cid$, $src$google_calendar_import$src$, $uid$0cbgpfel6lbnji4260rvag53n5@google.com$uid$, $title$Skano Elem Picture Day (2 teams)$title$, $d$2026-09-23$d$::date, $d$2026-09-23$d$::date, $tm$7:30am$tm$, $arr$7:00am$arr$, $sch$Skano Elementary School$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Erin Kisling, main office admin
kislerin@shenschools.org
Set-up 7am
Start: 7:30am staff, then 8am students, classes every 20 min with a short lunch break 
ASKING TO GO BACK TO 2 TEAMS
OUTDOOR, pushing in for bad photo weather (per Erin on 11/4/25 ckg)
580 students
all faculty
SERVICE STRIPS / attendance files
full yearbook / Treering
Collages$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0cbgpfel6lbnji4260rvag53n5@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_1a6ba0e897cc14bc$cid$, $src$google_calendar_import$src$, $uid$08ff3j6pnr4k7usbi0caq4pu25@google.com$uid$, $title$Pieter B Coeymans RAIN FOR PANO ONLY (1 Photog)$title$, $d$2026-05-08$d$::date, $d$2026-05-08$d$::date, NULL, NULL, $sch$Pieter B Coeymans RAIN FOR ONLY$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Alex Hilker, yb editor, picture day coordinator (NEW)
ahilker@rcscsd.org

Outdoor PANO ONLY

(12:15pm in 2024)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$08ff3j6pnr4k7usbi0caq4pu25@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b45eadbd7371298a$cid$, $src$google_calendar_import$src$, $uid$23nqpvvrdprmhaqqlk4k3fai1f@google.com$uid$, $title$Learning Garden Childcare LATHAM (1 team)$title$, $d$2026-10-19$d$::date, $d$2026-10-19$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Learning Garden Childcare LATHAM$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jennifer Hogan
jennifer@learninggarden.kids

Dawn Benoit
lathamdirector@steppingstonedaycare.kids

1003 Loudon Road, 
Cohoes, NY 12047-5003

Arrive: 8am
Start: 8:30am

Indoor - morning 10/10 school blue background ckg
70 students
Collages$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$23nqpvvrdprmhaqqlk4k3fai1f@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_69ee2d2636d42db5$cid$, $src$google_calendar_import$src$, $uid$6o0afduttjq83rt89adp64mfit@google.com$uid$, $title$NEW Craig Elementary MAKEUPS (1 teams)$title$, $d$2025-11-07$d$::date, $d$2025-11-07$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$NEW Craig Elementary$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Amy Wickham awickham23@gmail.com
Erin Perry ebeland20@gmail.com

Nisky school district
NEW Fall 2025
420 students
Talking to Treering for yearbook

Arrive: 7:30am
Start: 8am, need to be out by 10am per email below

7:30am set-up
8:00am K
8:15am 1st
8:30am 2nd
8:45am 3rd
9:00am 4th
9:15pm 5th
9:30am latecomers and staff
9:45am pack up equipment

Hi Carrie,
I spoke to the office at Craig and they would prefer an early start time similar to picture day.  (8am start time for photos) We are incredibly limited on space inside the school this year so the principal would like us to try to utilize the back corner of the cafeteria for makeups. Downside is lunch starts at 10am.  Typically, in the past, our makeups have taken a total of 2 hours max.  
I will send all of this to them as well. 

Thank you!
Erin$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6o0afduttjq83rt89adp64mfit@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_962afbf6500bfa38$cid$, $src$google_calendar_import$src$, $uid$1um9m2auakukdiv0d8bnvibn4p@google.com$uid$, $title$Mother Teresa GROUP pics (1 team)$title$, $d$2026-03-31$d$::date, $d$2026-03-31$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Mother Teresa GROUP$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Holli Riviezzo 
mshollimta@gmail.com
msholli@motherteresaacademy.org

518-280-4227
Mother Teresa Academy
1 Executive Park Drive
Clifton Park, NY 12065
Arrival: 8:30am
Photo Start Time: 9am
OUTDOOR
GROUP PICS ONLY
every class and a big group of entire school (make sure background is clean - no cars, etc.)
Smug link for all group pics to be provided to Holli
Print group class pics as usual, and one framed (white) of the all-school.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1um9m2auakukdiv0d8bnvibn4p@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e36360c8106e77d1$cid$, $src$google_calendar_import$src$, $uid$3gqosirhpp8o91r0hhe4u9shcu@google.com$uid$, $title$HOLD Jefferson 4th Grade Grads (2 teams)$title$, $d$2027-03-18$d$::date, $d$2027-03-18$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$HOLD Jefferson 4th Grade Grads$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Corrie Hoffman, PTO contact
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

Schalmont Central School District$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3gqosirhpp8o91r0hhe4u9shcu@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_47f535a26298d1a3$cid$, $src$google_calendar_import$src$, $uid$42lhv0baplotktsskd442b0mdk@google.com$uid$, $title$HOLD Glencliff Elem Makeup Day (1 team)$title$, $d$2026-10-28$d$::date, $d$2026-10-28$d$::date, $tm$8:30a$tm$, $arr$7:45$arr$, $sch$HOLD Glencliff Elementary School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Ashley Steele, PTO co-president
glencliffpto.copres@gmail.com
cell: (518) 461-7486
Arrive: 7:45-8:00a
Start: 8:30a$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$42lhv0baplotktsskd442b0mdk@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7ab33257cf4063ef$cid$, $src$google_calendar_import$src$, $uid$5jp84viab7hqnbj5897r5jtl6c@google.com$uid$, $title$HOLD Gardner-Dickinson Elem/Middle School (2 photogs + 1 asst)$title$, $d$2026-09-22$d$::date, $d$2026-09-22$d$::date, $tm$8:15am$tm$, $arr$7:45am$arr$, $sch$HOLD Gardner-Dickinson Elementary School/Middle School$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Set-up in Kyle's room, one photog in each corner of the room. Assistant feeds to each photographer. Kyle is available throughout the day for questions. 

INDOORS AND COLLAGES PER KYLE   SM
Kyle Barber
kbarber@wynantskillufsd.org
Arrive: 7:45am
Start: 8:15am
SCHEDULE WILL BE IN BINDERS
Indoor
310 students grades PK-8
All service items
2 teams per steph 7/11/22$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5jp84viab7hqnbj5897r5jtl6c@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3b54af04b5df7aab$cid$, $src$google_calendar_import$src$, $uid$06bbv10ebhkkqgd6ol0dleul5o@google.com$uid$, $title$Cairo-Durham Middle/High Makeups (1 team)$title$, $d$2025-10-15$d$::date, $d$2025-10-15$d$::date, NULL, $arr$8:00am$arr$, $sch$Cairo-Durham Middle/High$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Alyssa Bratton, HS Admin
abratton@cairodurham.org
Catherine Dodig, High school principal
cdodig@cairodurham.org
We usually set up for an hour or so on make up day, but since we are covering two buildings, I wanted to propose the following:
Arrival at 8 am, set up in MEDIA CENTER
8:20am Makeup senior session for exchange student Maxi Dinjus
8:30 - 9:30 - open for middle school and staff
9:30 - 10:30 - open for high school and staff
10:30 - 10:45 - last calls
Is this ok with you?  Can we find one location where I can set up that is convenient to both divisions like we did last fall?$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$06bbv10ebhkkqgd6ol0dleul5o@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_1690f712fe5e4402$cid$, $src$google_calendar_import$src$, $uid$662tl9f8721nl4upp4fvpvp1v5@google.com$uid$, $title$Heatly School GR PK-5, 8th grade pano$title$, $d$2027-04-30$d$::date, $d$2027-04-30$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Heatly School GR PK- 8th grade$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jodi Mazzeo, yearbook editor (new pic day contact as of S26)
jmazzeo@greenisland.org
Stephanie Bouchey, principal
sbouchey@greenisland.org
Spring outdoor photos for PK-5 only PUSH INDOORS IF BAD WEATHER (PANO TOO)
Pano for grade 8
Arrive: 8:30am
Start: 9am?
8x24 pano - group photo needs to be horizontal.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$662tl9f8721nl4upp4fvpvp1v5@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7024dc240f057a15$cid$, $src$google_calendar_import$src$, $uid$52452psr0grobpp9f95ud0k9b7@google.com$uid$, $title$Wildwood Seniors (1 team)$title$, $d$2026-02-12$d$::date, $d$2026-02-12$d$::date, $tm$10:00am$tm$, $arr$9:30am$arr$, $sch$Wildwood$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jill Wood, main office admin UNTIL 1/23/26
jwood@wildwoodprograms.org
AFTER 1/23/26:
Kellie or Willow, new main office admins
school-office@
wildwoodprograms.org
Green cap and gown photos, may have to photoshop cap on some students.
Arrive: 9:30am
Start: 10am
We provide the digitals to Kellie and Willow for yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$52452psr0grobpp9f95ud0k9b7@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_5536a8930ebe7807$cid$, $src$google_calendar_import$src$, $uid$1gpfaj2ittadpmpel4cp9jhui4@google.com$uid$, $title$Northville Graduation Evening$title$, $d$2026-06-26$d$::date, $d$2026-06-26$d$::date, NULL, NULL, $sch$Northville Graduation Evening$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Per the school's website$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1gpfaj2ittadpmpel4cp9jhui4@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_131609ee56a26338$cid$, $src$google_calendar_import$src$, $uid$0k7tc7l68isgg8ts8kr2vvdsae@google.com$uid$, $title$Milton and Lauren Monthly Meeting$title$, $d$2026-09-08$d$::date, $d$2026-09-08$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0k7tc7l68isgg8ts8kr2vvdsae@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a9c862dd0096fb8e$cid$, $src$google_calendar_import$src$, $uid$17be7cein1hfog2q3uqhmvlvog@google.com$uid$, $title$Alb School of Humanities Makeup Day (1 team)$title$, $d$2025-11-14$d$::date, $d$2025-11-14$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Alb School of Humanities$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Susannah (Sheehan) Doyle, Vice Principal 
sdoyle@albany.k12.ny.us
Setup: 8:00am, start at 8:30am. Check in at main office with photo ID!
Indoor of students and faculty
Yearbook
Service Strips, PSPA and attendance files
Collages
11/5/25 based on prior year, this was confirmed with Susannah:
For timing, we typically only need a short time in the morning. Last fall, we arrived at 8am, started taking photos in the performance center at 8:30am. We started with your younger grade levels and have the students getting retakes. Once we go through the grade levels, faculty members were called to be photographed.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$17be7cein1hfog2q3uqhmvlvog@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_001e925e98593d24$cid$, $src$google_calendar_import$src$, $uid$692h675pka4ogbn57trl2or5a7@google.com$uid$, $title$Steph Anniversary need half day or so$title$, $d$2025-10-03$d$::date, $d$2025-10-03$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$692h675pka4ogbn57trl2or5a7@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a1de1e8d914884fe$cid$, $src$google_calendar_import$src$, $uid$252qelrv1eeno5f5fj3uu7cn5j@google.com$uid$, $title$Arongen Yearbook Photos (1 photog)$title$, $d$2026-03-11$d$::date, $d$2026-03-11$d$::date, $tm$8:50am$tm$, $arr$8:20am$arr$, $sch$Arongen Yearbook$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mallory Detzel, NEW PTO Contact as of 25-26
detzel101312@gmail.com
Cindi Breen, main office admin
breecind@shenschools.org
2/20/26 emailed Mallory & Cindi to confirm cc MM ckg
Arrive: 8:20am
Start: 8:50am 
End: 12:00pm
Groups in the step area near the front office
Classroom candids$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$252qelrv1eeno5f5fj3uu7cn5j@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_cc94e37bcb6eaa32$cid$, $src$google_calendar_import$src$, $uid$46m2oeg1bsah1vvml4joip2l4c@google.com$uid$, $title$Green Tech MS/HS (1 team)$title$, $d$2025-09-10$d$::date, $d$2025-09-11$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Green Tech Middle School/High School$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$9/16/25 NOTE FOR 2026-27 - SCHEDULE 2 PHOTOGS FOR HS DAY PER BETH. ckg
Cedria Hood
chood@greentechhigh.org
Main Phone : (518) 396-5107
9/5 Beth confirmed ckg
Setup: 8am
Start: 8:30am (PE classes?)
Indoor (in cafeteria)
Individuals of all students grades 6-12 (12 for ID cards)
Individuals of all faculty/staff
ID cards for all
See schedule for timing - Cedira will send over when ready
Yearbook and attendance files
Doing senior portraits in spring 2026
Good Afternoon,
Please see the schedule below and attached.
Wednesday, 9/10/2025
ADVISORY: 11th and 12th grade / Teachers and Staff with free period
P1-5: Teachers/Staff with free period
GYM PERIODS: All HS students
Community Hour: Any HS students without gym/advisory
6
th
-8th Period: Any seniors without classes / Teachers and Staff with free periods

Thursday, 9/11/205
Middle School: STEM, Electives and/or Lunch period
(Makeup for HS students and teachers)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$46m2oeg1bsah1vvml4joip2l4c@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a892c313da821402$cid$, $src$google_calendar_import$src$, $uid$5t5k1akc4snpi13ne97idf4v2v@google.com$uid$, $title$Northville SENIORS (2 photogs)$title$, $d$2025-08-25$d$::date, $d$2025-08-26$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Northville$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Shannon Fitzgerald
sfitzgerald@northvillecsd.org
Andrea Bovee, senior class advisor
abovee@northvillecsd.org
Anna Edwards, senior class advisor
aedwards@northvillecsd.org
8/12/25 Tammy Reidell, principal, asked Steph to also take senior sports pics during senior portraits as they'd like banners on display for a 9/4 tournament. NEED SUPER QUICK TURNAROUND on these. Told Andrea that seniors have to have uniforms and equipment ready, so delays are not caused by this added set of photos. ckg
Arrive: 8:30am
Start: 9:00am
Indoor in library?
5/14/25 Terry asked for a date in late August to incorporate athletic pics for seniors. Hoping they can have their fall sports senior banners done early.ckg
7/14/25 Rylan Czadzeck's Mom let me know that he will miss the senior portrait days and will be getting them done on Makeup Day. -MM
We photograph the seniors in street clothes (generally something dressy) and then in suit/tie (we provide) or drape (we provide) and cap and gown (we provide).  We shoot both indoors (formal) and outdoors (casual) and our outdoor portraits incorporate different spots around school to give it a school spirit feel.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5t5k1akc4snpi13ne97idf4v2v@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_831d9ce7c6feac8b$cid$, $src$google_calendar_import$src$, $uid$0cdieuobal8secutgac2l8nu5o@google.com$uid$, $title$NEW Precious Hearts Daycare (1 team)$title$, $d$2026-04-28$d$::date, $d$2026-04-28$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$NEW Precious Hearts Daycare$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$NEW - opened May 2025

Kim Berry, director
phccdir58@gmail.com
518-410-4323

4/15 indoor spring background ckg; 4/7/26 emailed Kim to confirm timing, and to decide on outdoor or indoor pics ckg

Arrive: 8:30am
Start: 9am

estimated 45 students ages infants to 5 years
indoor pics with spring background, nowhere good outdoors for pics per director
no yearbook at this time

no commission as they are under 100 students$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0cdieuobal8secutgac2l8nu5o@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e8f71e6b264b6f85$cid$, $src$google_calendar_import$src$, $uid$615umij0fkpb768obkmif83oto@google.com$uid$, $title$Maple Leaf - Malta SOUTH (2 teams)$title$, $d$2025-11-17$d$::date, $d$2025-11-17$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Maple Leaf - Malta SOUTH$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Amanda, Center Director 
malta@mapleleafchildcare.com
Maple Leaf Childcare Center, Inc.
10 Hemphill Place 
Malta, NY 12020
518-899-4159 (p)
518-899-6931 (f)
Arrive: 8:30am
Start: 9am
Winter backdrop
Indoor
Individuals of students and faculty
class collages
10/28/25 proposed this schedule to Amanda:
9:00     Inf 1 and Tod 1
9:20     Inf 2 and Tod 2
9:40     Pre 1 and Tod 3
10:00   Pre 2 and PreK
10:20   siblings, late arrivals, etc...$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$615umij0fkpb768obkmif83oto@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_8dc5258c2f4d2875$cid$, $src$google_calendar_import$src$, $uid$380cpijan8rl6c29vb6svnf627@google.com$uid$, $title$Hackett Middle School Moving Up Ceremony (1 photogs)$title$, $d$2025-06-27$d$::date, $d$2025-06-27$d$::date, NULL, $arr$8:30am$arr$, $sch$Hackett Middle School Moving Up Ceremony$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mike Paolino, principal
mpaolino@albany.k12.ny.us
Main Ceremony Contact
arrive 8:30am
event starts at 9am, goes to 11am$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$380cpijan8rl6c29vb6svnf627@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c0f3eb5633c8cac6$cid$, $src$google_calendar_import$src$, $uid$7o1o3v0l70naqrk8be19nmpqce@google.com$uid$, $title$Karigon Yearbook Club Pics (1 photog)$title$, $d$2026-02-05$d$::date, $d$2026-02-05$d$::date, NULL, NULL, $sch$Karigon Yearbook Club$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Nupoor Gordon (NEW picture day contact)
gordnupo@shenschools.org
Club and Group pictures for the yearbook
1/15/26 emailed to confirm timing and request schedule ckg
Starting at 8:30 in the cafeteria on risers.
Images to be uploaded to Smugmug. Let Carrie know when they're ready so she can upload to their yearbook. RENAME FILES AS THE CLUB NAME
Gordon, Nupoor
Fri, Jan 30, 2:49 PM (3 days ago)
to Beth, me
Good afternoon Beth,
Below is the Karigon club photos schedule so we should be all set:
8:30am                         Chorus (4th and 5th grade)
8:40am                         4th Grade Orchestra
8:45am                         5th Grade Orchestra
8:50am                         Band
8:55am                         Art Club (Winter)
9:00am                         Art Club (Spring)
9:05am                         Chess Club (2nd & 3rd Grade)
9:15am                         Chess Club (4th & 5th Grade)
9:25am                         Ski Club 
9:35am                         Student Council (whole group)
                                     - Announcers
                                     - Officers
9:45am                         School Store Helpers
9:50am                         Best Buddies 
10:00am                       Battle of the Books
10:05am                       Quest
10:10am                       Reflections
10:15am                       Lego League$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7o1o3v0l70naqrk8be19nmpqce@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f8ef879049f2fac7$cid$, $src$google_calendar_import$src$, $uid$38j66t9odpl3lev76e3opmsidj@google.com$uid$, $title$Heatly Field Day (1 photog)$title$, $d$2027-06-15$d$::date, $d$2027-06-15$d$::date, $tm$10:00am$tm$, $arr$9:30am$arr$, $sch$Heatly Field Day$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jodi Fowler, field day coordinator
jfowler@greenisland.org
Jodi Mazzeo, yearbook editor (new pic day contact as of S26)
jmazzeo@greenisland.org
Stephanie Bouchey, principal
sbouchey@greenisland.org
CHECK TIMES FOR 2027
Arrive:  9:30am
Start:  10am until noon
2nd free event for school
Event goes most of the day so school said they see when we were available and pick a window of time for us to be there.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$38j66t9odpl3lev76e3opmsidj@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_bf0d41dfbae2a47e$cid$, $src$google_calendar_import$src$, $uid$71j823t8khovc9v4ltamlur3ip@google.com$uid$, $title$Jefferson Elementary School (3 teams)$title$, $d$2025-10-03$d$::date, $d$2025-10-03$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Jefferson Elementary School$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$NO NEW PIC DAY CONTACT AT 9/17/25 ckg

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

Considering spring photos with 4th grade pano
Schalmont Central School District$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$71j823t8khovc9v4ltamlur3ip@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2ff5446738c531b7$cid$, $src$google_calendar_import$src$, $uid$2lc182nf4bv35ttad48k2ihtnn@google.com$uid$, $title$Tricia Weaver Wedding Reception Time TBD 2 hour coverage$title$, $d$2026-09-20$d$::date, $d$2026-09-20$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$On Saturday it’s at our home 5500 Skyline Dr., Delanson NY 12053. 
And on Sunday, it’s at the briar Creek golf course$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2lc182nf4bv35ttad48k2ihtnn@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_159bb4fb94eef753$cid$, $src$google_calendar_import$src$, $uid$2hi43aisa6eqfkt3gf3q4m9iae@google.com$uid$, $title$Retake: Zihan [Alice] Zhao '26 (AA) 2:30PM$title$, $d$2025-09-10$d$::date, $d$2025-09-10$d$::date, NULL, NULL, NULL, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2hi43aisa6eqfkt3gf3q4m9iae@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_384b508355ca683f$cid$, $src$google_calendar_import$src$, $uid$3qhmbcqg14qkf0jdqk4go8reqa@google.com$uid$, $title$Kids Express Fall Photos Day 1 (Matt+1)$title$, $d$2025-09-23$d$::date, $d$2025-09-24$d$::date, $tm$9:30$tm$, $arr$9:00$arr$, $sch$Kids Express Fall Day$sch$, $typ$picture day$typ$, ARRAY[$a$Matt$a$]::text[], ARRAY[]::text[], false, $info$8/27 talked to Sue and gave her info to confirm ckg
Liz Landon
Liz@achievements.org
Arrive: 9:00
Start: 9:30
OUTDOOR
Individual photos of all students and teachers
Preschool aged kids with special needs
They love MATT!
Collages - only child's first name PLEASE!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3qhmbcqg14qkf0jdqk4go8reqa@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_1732bc085f924d25$cid$, $src$google_calendar_import$src$, $uid$50edrbnsgbe5polksu2jdc95nr@google.com$uid$, $title$BKW Prom & PHOTO BOOTH$title$, $d$2026-05-30$d$::date, $d$2026-05-30$d$::date, NULL, NULL, $sch$BKW Prom &$sch$, $typ$photo booth$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Orchard Creek

Erin Snyder is running it

Also bring photo booth$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$50edrbnsgbe5polksu2jdc95nr@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_69f627ae744a6a1c$cid$, $src$google_calendar_import$src$, $uid$1dqv0fgkn6ra9sogpih4v6975r@google.com$uid$, $title$OCTOBER SCHEDULING CALL 7:30PM$title$, $d$2025-09-15$d$::date, $d$2025-09-15$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1dqv0fgkn6ra9sogpih4v6975r@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_1634e174a4203dea$cid$, $src$google_calendar_import$src$, $uid$1db7tl0cktqml8q4saksu1m2ot@google.com$uid$, $title$Capital Region BOCES Albany CTE Main (2 Teams)$title$, $d$2025-09-15$d$::date, $d$2025-09-15$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$NO NEED TO PRINT QR SHEETS - SHOOT OFF LAPTOPS
**DO NOT HAND OUT QR CARDS TO ANYONE - NOT SELLING THESE TO PARENTS**
CONTACT FOR ALBANY CTE MAIN LOCATION
Diane Ogren
diane.ogren@neric.org
925B Watervliet-Shaker Rd, Albany, NY 12205
7:30am Arrival 
The AM shift runs from 8:10 – 10:34. The PM shift is from 11:10 – 1:34

Student headshots - take 2 of each student but only keep one
Charged $3 per headshot in 23-24. NEEDS CONTRACT and W9
Roughly 600 students, am and pm sessions$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1db7tl0cktqml8q4saksu1m2ot@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4edb13794915e9b4$cid$, $src$google_calendar_import$src$, $uid$2phqou7r00jkvslp05spcjs9pa@google.com$uid$, $title$Rosendale Elem Field Day RAIN DATE (1 photog)$title$, $d$2026-06-18$d$::date, $d$2026-06-18$d$::date, NULL, NULL, $sch$Rosendale Elementary School Field Day$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Ashley Feldman, PTO
ashleyfeldman929@gmail.com

Original date is June 12

4/9/26 booked, still need details! ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2phqou7r00jkvslp05spcjs9pa@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_8765378e0589ef69$cid$, $src$google_calendar_import$src$, $uid$4msu6ud8ksp1ohlvqhq42lucst@google.com$uid$, $title$Siena Photo Booth 6-8pm$title$, $d$2026-05-10$d$::date, $d$2026-05-10$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Hi Stephanie,
As senior week is approaching, I just wanted to make sure we have the photo booth rental confirmed for our kick off party (May 10th 6-8pm) 
Sarah will be your day of contact! Her phone number is 425-314-0952 
The name of the event is Senior Week Kick off party which will be taking place on Nigro Plaza and we will have some overflow of vendors on the Quad. 
Let me know if you have any other questions. 
On Jan 27, 2026, at 4:31 PM, Kilian, Telaney <
ta28kili@siena.edu
> wrote:
Hi Stephanie, 
My name is Telaney and I'm a senior week co-chair over at Siena University. During Senior Week we were hoping to use your photobooth services on May 10th 6-8pm. 
I was first wondering if you have availability during this time, then the process for scheduling the photo booth. 
Best,
Telaney Kilian$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4msu6ud8ksp1ohlvqhq42lucst@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4d523a34b1b50570$cid$, $src$google_calendar_import$src$, $uid$62mv8rha77sf5lto8t35lq4tvs@google.com$uid$, $title$HOLD Wildwood School - Latham Site (Andrew +1)$title$, $d$2026-10-26$d$::date, $d$2026-10-26$d$::date, $tm$9:30$tm$, NULL, $sch$HOLD Wildwood School - Latham Site$sch$, $typ$review$typ$, ARRAY[$a$Andrew$a$]::text[], ARRAY[]::text[], false, $info$Kellie or Willow, new main office admins
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
Needs PSPA for yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$62mv8rha77sf5lto8t35lq4tvs@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_466e5e77e8bf3a7d$cid$, $src$google_calendar_import$src$, $uid$7qcrv6qmpnrt6ouueel1atjv30@google.com$uid$, $title$Milton Terrace Yearbook Photos (1 photog)$title$, $d$2027-03-09$d$::date, $d$2027-03-09$d$::date, $tm$9:30am$tm$, $arr$9:15am$arr$, $sch$Milton Terrace Yearbook$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Sarah Kinney, main office admin
skinney@bscsd.org
Arrive: 9:15am
Start: 9:30am
Photos on stage in school cafeteria per Sarah
Photos of school's clubs and groups for the yearbook
Upload to Smug and send Carrie the link when ready
Please rename images with group or club name so they can be easily identified (Carrie can help if needed)
10 min between groups
schedule:$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7qcrv6qmpnrt6ouueel1atjv30@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_65311a4b5db7d980$cid$, $src$google_calendar_import$src$, $uid$2jp6e8tlt1tq2pl822473kjbd5@google.com$uid$, $title$Albany Cap Center Trade Show MATT$title$, $d$2025-06-12$d$::date, $d$2025-06-12$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Matt$a$]::text[], ARRAY[]::text[], false, $info$Hi!!!  ❤️
This is all 100% perfect, it’s a GO!
Matt has great energy and everyone will love having him take their pictures.  He usually gets somewhere between 5-8 poses for people - kind of depends on if they are male or female and if they have hair or accessories that can be changed to add variety.
Rest assured ALL photos will be free for ALL attendees, delivered in full resolution with gentle artful retouching added.  We will give you a master list of everyone at the end, too.
And - we want to work with you all the time - so the BOGO is a small way for us to thank you for this and all future opportunities!!!!!
Matt will reach out to you a few days prior to confirm everything and share his cell number with you in case you need him day of.
For background options - we have a pretty blue, or a nice corporate gray, or black, or white, or a forest green.  I would say blue (keeping with the ACC color palette) or gray since it’s generic and useable anywhere.   No rush on deciding that.
Thank you sooooo much and I am so sorry to miss it - next time for sure!!!
:)
Steph
On May 30, 2025, at 11:28 AM, Shannon Licygiewicz 
wrote:
Hello Stephanie and Hi Matt!!! 

Thanks so much for getting back to me with this info!! Let’s dive in a little bit!
I am SO bummed to hear you are not going to be able to join us on June 12
th
 – but am looking forward to meeting Matt! Please know this will be a group of fun and chatty hospitality folks so we will be high energy and just (hopefully) bubbly all day! 
Love that you stalked the show!!! Let me clarify what is going to happen – the tradeshow portion of the event runs from 2pm-4pm that’s when everyone will be on the floor…I am actually going to set you guys up in the ACC’s tradeshow booth space. So, attendees and even other exhibitors can come and get their headshots. Will be a fun way to interact with attendees and offer an epic take away!
While I am so very appreciative of the buy one gets one hour free – there is absolutely NO WAY I am only paying you only $350.00 for this!!! Please let me compensate you some more for the ability to have the attendees get their photos for free!!!! I do not want anyone needing to pay for the downloads so please let me know if there are any additional charges I can help with. 
Matt not sure if you have a sweet tooth but we will also be offering a candy bar in our booth!! 

Look forward to finalizing things and again THANK YOU for agreeing to do this – I think it is going to be FUN! 
Shannon 

Shannon Licygiewicz, CEM 
│ 
General Manager
Albany Capital Center   
55 Eagle Street, Albany NY 12207
shannon.licygiewicz@albanycapitalcenter.com
P: 518.487.2009
│
F: 518.487.2250

www.albanycapitalcenter.com

From:
 Stephanie McCauley <
stephanie@ismilestudios.com
> 
Sent:
 Thursday, May 29, 2025 9:15 PM
To:
 Shannon Licygiewicz <
shannon.licygiewicz@albanycapitalcenter.com
>
Cc:
 Matthew Minardi <
matt@ismilestudios.com
>
Subject:
 Re: Headshot Station Inquiry for a Tradeshow Booth at the ACC!

Hi Shannon!

Wanted to touch base with a few more details on this awesome opportunity for us!

The first thing is - I am of course booked at 3:00 (right in the middle of your event) but I met with my amazing colleague Matt this morning and he is available to do this for you - which is way better than having me there so it all worked out ha ha!   (Matt and I work very closely together and he has a very similar style, you will love him.  He’s copied on this.)

Alternatively, if you want to change the time we will be there with you, I am personally available anytime before 1:00 that day.   (I stalked the event and see that it runs 8-5, I think your choice of 2-4 pm is a good one where the max amount of people will be milling around, but happy to adjust if needed.)

From our experience, the best way to do this is to give each person a unique code for their photos, take a variety of poses, and then upload them and give them the code which allows unlimited free downloads of their pictures.  It also captures their name and email so you’ll have a list of everyone that stopped at your booth and did photos.

Our normal price is $350/hour but I would love to give you a buy one get one free hour, so for the two hours there we would only charge $350.  We would arrive about 45 minutes prior to our start time to get set up.  

Hopefully that anticipated most of your questions and it fits into the budget.  

Standing by to strategize!  Thank you so much!

Steph$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2jp6e8tlt1tq2pl822473kjbd5@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_904a50b0fd4b9a28$cid$, $src$google_calendar_import$src$, $uid$5j29bje23m84tn7denms2gppi5@google.com$uid$, $title$Berne-Knox-Westerlo 8th Grade Pano (1 photog)$title$, $d$2026-04-17$d$::date, $d$2026-04-17$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Laurie Hilton, main office admin
laurie.hilton@bkwschools.org
4/2/26 emailed Laurie cc Steph to confirm ckg
School blocked off time for 11:26-11:46 (the 8th grade's flex time).
Outdoors pushing indoors to the lobby area for bad weather$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5j29bje23m84tn7denms2gppi5@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_04cf4b11882d3ba7$cid$, $src$google_calendar_import$src$, $uid$7gtqkltq3nt6ntr0hvtgdjakud@google.com$uid$, $title$Our Savior's Christian Fall Photos (1 team)$title$, $d$2025-10-01$d$::date, $d$2025-10-02$d$::date, $tm$9:00a$tm$, NULL, $sch$Our Savior s Christian Fall$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Sarah Alfons, main office (new contact)
salfons@oursaviors.com
Arrive:: 8:30a
Start: 9:00a
Indoor
Grades PK-8
Individuals of all students and faculty/staff
All service items
Collages$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7gtqkltq3nt6ntr0hvtgdjakud@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2aa38d8efac111f1$cid$, $src$google_calendar_import$src$, $uid$0qc7cng408pnn7tg5pbhv2j0td@google.com$uid$, $title$Two By Two Nursery School (1 team)$title$, $d$2025-10-27$d$::date, $d$2025-10-28$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, $sch$By Nursery School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Sarah Huiest, Director
Email: 
2by2sarah@gmail.com
Phone: 518-631-9006
Setup: 9am
Start: 9:30am
blue pop up 
Indoor
Individuals of students and teachers
22 students
2 classes, 1 each morning
collages
Makeups - In studio only
Sarah Huiest
10/29/24 10:18 AM (13 minutes ago)
to me
Hi Carrie,
The GoogleDoc is updated. You will notice that Ashlyn Liu, Charlotte Perkins, and Vivienne Madelone are listed for both classes. They attend every day. Like past years, we planned to have their picture taken on Wednesday, and then use that picture again in the other class picture. 
Thank you,
Sarah$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0qc7cng408pnn7tg5pbhv2j0td@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4a6693700cc1c4ae$cid$, $src$google_calendar_import$src$, $uid$7oudu01mggtvdgn743uddpm6ih@google.com$uid$, $title$Atrea ELC (SHEN) Family Photo Night (1 photog)$title$, $d$2026-11-17$d$::date, $d$2026-11-17$d$::date, NULL, NULL, $sch$Atrea ELC SHEN Family Photo Night$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Erica Ryan, Principal
ryaneric@shenschools.org
5 Maxwell Dr.
Clifton Park, NY 12065
518-881-0500

NEW Shen K school$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7oudu01mggtvdgn743uddpm6ih@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d7b4f990b00425c2$cid$, $src$google_calendar_import$src$, $uid$2puntdr0cv7fpibdtjiibqee80@google.com$uid$, $title$Heatly 8th grade pano RAIN (1 photog)$title$, $d$2026-05-04$d$::date, $d$2026-05-04$d$::date, NULL, NULL, $sch$Heatly 8th grade RAIN$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Stephanie Bouchey, our main contact
sbouchey@greenisland.org
Sarah Lawlor, our backup contact 
slawlor@greenisland.org
Pano for grade 8
8x24 pano - group photo needs to be horizontal.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2puntdr0cv7fpibdtjiibqee80@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9bde13e728940eb0$cid$, $src$google_calendar_import$src$, $uid$7kgl9iunj77cv0in8d2uag3qfu@google.com$uid$, $title$TSL Niskayuna UPK (1 photog)$title$, $d$2025-11-18$d$::date, $d$2025-11-18$d$::date, $tm$10:00am$tm$, $arr$9:30am$arr$, $sch$TSL Niskayuna UPK$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Nicole 
Topaltzas
Ntopaz.tsl@gmail.com
518-242-0722
1050 Troy-Schenectady Road
Latham, NY 12110
In the building behind Control Tower Ice Cream/Mini Golf (former tumbling tykes)
11/4 emailed to confirm ckg
Arrive: 9:30am
Start: 10am
Indoor
10/29/25 wants winter backdrop ckg
Only Prek ages
GROUP class pics$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7kgl9iunj77cv0in8d2uag3qfu@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9186e94f4248dc9b$cid$, $src$google_calendar_import$src$, $uid$4mg3dih45cjup6sp0f5sf3rqs3@google.com$uid$, $title$Duanesburg Scholar Athlete Banquet (1 photog PM)$title$, $d$2025-06-18$d$::date, $d$2025-06-18$d$::date, NULL, NULL, $sch$Duanesburg Scholar Athlete Banquet$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kelsey Flaherty, Athletic Director Secretary
kflaherty@duanesburg.org
518-895-3000 ext.224
Settles Hill Banquet Hall
6-9pm
Please look at last year's GP job at pics
Kelsey Flaherty
10:41 AM (44 minutes ago)
to me, Brett
Good morning Carrie! We are hosting a scholar athlete/varsity athlete ceremony at Settles Hill Banquet Hall on June 18th from 6pm-9pm. We would love to have you there to take photos of all the athletes with their coaches & families. If you are available please let me know. Thank you!
--
Thanks!
-Kelsey Flaherty
HS Attendance Clerk 
Athletic Director Secretary
Varsity Cheerleading Coach
Duanesburg Central School District      
518-895-3000 ext.224
*****************************************************************************************
Since they ASKED us to photograph the sports banquet and intend to have a spot to do family pics and seem to expect that parents will have to buy the photos, let’s do it as a digital event with $10 digitals, and create a QR code and ask if that can be placed on the program to advertise photo location?   We could also print up a bunch of nice canva-style QRs that we can hand out the evening of or leave on the chairs or something.
Coupons - 
I don’t think anyone is going to buy 10 digitals since we just won’t have that many pics of the same kid, so maybe tier them like this:
10% off $30
15% off $50
25% off $80$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4mg3dih45cjup6sp0f5sf3rqs3@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7f2d54fd4cd72770$cid$, $src$google_calendar_import$src$, $uid$40dh4kiu3ajkc73dlp4enku57q@google.com$uid$, $title$Bourbon and Blooms  MATT$title$, $d$2026-08-13$d$::date, $d$2026-08-13$d$::date, NULL, NULL, NULL, $typ$photo booth$typ$, ARRAY[$a$Matt$a$]::text[], ARRAY[]::text[], false, $info$1 photographer - posed photo booth style family/couple/group pics using farm scenery as backdrop (your choice).    Also event candids and details.  VIP Michael Turner, new head of school, make sure you get a lot of him and his wife Meredith.
Photographer assigned will be given $100 at event for you to keep.
24 hour turnaround needed.
Contact Laura Hopper
HopperL@albanyacademy.org
I also wanted to get your thoughts on an idea for the Blooms and Bourbon event on Thursday, August 13. Since this will be Michael Turner's big debut, I'd really love to elevate the experience from last year. I think a whimsical, garden-themed photo booth could be such a fun addition to the evening and a great opportunity to capture beautiful photos to share on our social media platforms.
Have you ever done something like that before? I'm envisioning a beautiful backdrop of the farm with fun props and a more styled "photo moment" rather than printing photos on-site. I'm not sure if that's too ambitious or too much extra work, but I think it would add to the atmosphere and make the event feel extra special. 
Looking forward to hearing what you think!
@ Nikki- Have you seen people do something like this at events on the farm? 
Blooms & Bourbon | An Evening at Old Tavern Farm
An Albany Academy Event Graciously hosted by Nikki Borisenok ‘08
Thursday, August 13, 2026 | 5:30 PM – 8:00 PM
Old Tavern Farm Agricultural Village
142 County Route 71
Stillwater, NY 12170$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$40dh4kiu3ajkc73dlp4enku57q@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_38d43c8e9ca25beb$cid$, $src$google_calendar_import$src$, $uid$54jufljgm1arerclhdusrs5ud6@google.com$uid$, $title$Tesago Spring Pics & 5th Grade Group Photo (2 teams)$title$, $d$2026-05-01$d$::date, $d$2026-05-01$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Tesago & 5th Grade Group Photo$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$SPRING PHOTOS (different contacts for fall and spring photos)
Emma Paradise 
paraemma@shenschools.org
SPRING PIC DAY CONTACT
*Darlene Kern: 
kerndarl@shenschools.org
, office admin
4/13/26 Emma confirmed ckg; 4/13/26 emailed Emma cc Beth & Molly ckg
Setup: 8:30 am
Start: 9am
push inside if bad weather
Tesago Spring 2026 Picture Day
Friday, May 1, 2026
Time Slot
Photographer A
Photographer B
9:00-9:20
Ritter-Connections
Rodriguez- 1st Grade
9:20-9:40
Paradise- 5th Grade 
Fetsko 5th Grade
9:40-10:00
Dzikas 5th Grade
Wright- 2nd Grade
10:00-10:20
Paradise - K
Hancock-Huttel- MOVE
10:20-10:40
Drindak-2nd Grade
Mokay 3rd Grade
10:40-11:00
Hickok-4th Grade
Gallaher (Conn 3-5)
11:00-11:20
Gerstenberger - grade 2
Brobston- 3rd
11:20-11:40
Kern-1st
Smith - 3rd
11:40-12:00
Alheim-1st
McClure-Connections
12:00 -1:00
Rucinski-4th Grade
Paradise - K
1:00- 1:20
Paliwodzinski- Kindergarten
Yattaw-4th Grade
1:20-1:40
5th Grade Group Photo (Dzikas, Fetsko, Paradise, Gallaher)
*please note your grade and teacher name when selecting a time slot.
Paradise, Emma
1:56 PM (58 minutes ago) 4/13/26
to me, Molly, Beth
Our Connections students will go with their own classrooms, not the classrooms they mainstream into. I just wanted to include that for planning purposes!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$54jufljgm1arerclhdusrs5ud6@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f120d50117696ec6$cid$, $src$google_calendar_import$src$, $uid$0259899A-A101-41FD-83E3-C3BF1AF9999F$uid$, $title$No Steph if possible$title$, $d$2026-05-20$d$::date, $d$2026-05-20$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0259899A-A101-41FD-83E3-C3BF1AF9999F$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f2b5ecff1e6fa1b5$cid$, $src$google_calendar_import$src$, $uid$5tkh377ssmvt9c50oi0gtunil8@google.com$uid$, $title$Hudson Valley Consortium Day 1 (1 team)$title$, $d$2025-09-30$d$::date, $d$2025-09-30$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$Hudson Valley Consortium Day$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Teresa Rieder - LOCAL PHOTOGRAPHER! Has a lot of her own ideas!
hvcteresarieder@gmail.com

9/24 Emily confirmed times with Teresa
Arrive: 7:30am
Start: 8:00am to 1:30PM

Indoor
Home school basis with 216 students, grades Infants -12
Did not photograph seniors for 24-25
Meets on Tuesdays and Thursdays 
We'll be there both day as all students do not attend both days

Individuals of students only, no faculty
NO Class Pictures
Yearbook support - PSPA to Teresa$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5tkh377ssmvt9c50oi0gtunil8@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_6e1124ff50e54d61$cid$, $src$google_calendar_import$src$, $uid$0nrgkhk3kgiu0720bo2l7c5tpq@google.com$uid$, $title$Sara Marie School "Gala" Headshots (Steph?)$title$, $d$2026-02-24$d$::date, $d$2026-02-24$d$::date, NULL, NULL, $sch$Sara Marie School Gala Headshots$sch$, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$Stefanie Rawls, director
srawls@thesaramarieschool.org
2/2/26 emailed to confirm ckg
9am start time
High contract 8x10s for a charity art event in May.
80-ish students
Steph requested one hour in morning in a bright spot indoors.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0nrgkhk3kgiu0720bo2l7c5tpq@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_8ad2c31c29ea9b85$cid$, $src$google_calendar_import$src$, $uid$70pd37jp7c28biabm1ftndljnf@google.com$uid$, $title$NEW DATES Clifton KinderCare (1 team)$title$, $d$2026-04-09$d$::date, $d$2026-04-10$d$::date, $tm$9:00a$tm$, $arr$8:30a$arr$, $sch$NEW DATES Clifton KinderCare$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Tiffany Nandini Pariag (asst director) They have had a lot of staff changes this year.
nandani.pariag@kindercare.com
4/7 start times updated (MS), 2/20 moved to April dates ckg; 2/19/26 emailed Nandini to cofnirm dates and times ckg
Arrive: 8:30a
Start: 9a
Indoor in gym - spring backdrop
Need two days for MWF and TTh students
Individuals of all students and teachers (fall date never happened due to sataffing issues at the center so we are photographing ALL in the spring)
BRING OUR KID CAPS & GOWNS -"grads" to photograph like last spring (* the school provided their own red cap/gown Spring 2026 MS *)
Collages
Nandani Pariag
10:49 AM (32 minutes ago)
to Molly, Andrew, me, Matthew
Hey, Good morning. We are planning on infants and toddlers on Thursday along with their teacher picture and on Friday we will have Multi Agers/Graduates with Cap and Gown along with their class teacher.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$70pd37jp7c28biabm1ftndljnf@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_bae0c9bda2c501fd$cid$, $src$google_calendar_import$src$, $uid$24o0s4qnl0527v8vq5sjitstji@google.com$uid$, $title$HOLD Wildwood Seniors (1 team)$title$, $d$2027-02-11$d$::date, $d$2027-02-11$d$::date, $tm$10:00am$tm$, $arr$9:30am$arr$, $sch$HOLD Wildwood$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jill Wood, main office admin UNTIL 1/23/26
jwood@wildwoodprograms.org
AFTER 1/23/26:
Kellie or Willow, new main office admins
school-office@
wildwoodprograms.org
Green cap and gown photos, may have to photoshop cap on some students.
Arrive: 9:30am
Start: 10am
We provide the digitals to Kellie and Willow for yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$24o0s4qnl0527v8vq5sjitstji@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_6ae16d4fdd938496$cid$, $src$google_calendar_import$src$, $uid$17siufb2us8743kps69rc2ghat@google.com$uid$, $title$Cairo-Durham MS & HS (2 days, 2 teams)$title$, $d$2025-09-11$d$::date, $d$2025-09-12$d$::date, $tm$7:45am$tm$, $arr$7:00am$arr$, $sch$Cairo-Durham Middle School & High School$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$CHECK INTO MAIN OFFICE UPON ARRIVAL
CHECK for 2025! 9/12/24 - per Andrew& Molly, organize the HS folders by grade, alphabetical order. PE class doesn't work according to the PE teachers. ckg
Cheryl Dorpfeld, admin who pulls the rosters for us
cdorpfeld@cairodurham.org
(518) 622-0490
Alyssa Bratton, HS Admin
abratton@cairodurham.org
Danielle Czech, middle school principal
dczech@cairodurham.org
518-622-0490
9/3/25 all confirmed with Alyssa ckg
9/11 is a DAY 2
9/12 is a DAY 1
Setup: 7am - check into main office upon arrival - will need photo ID
Start: 7:45am
Photos taken during PE classes that run all the school day, until 2:14pm
Indoor IN TWO LOCATIONS - MS team IN MS GYM AT THE FAR END on 9/11 and the Media Center on 9/12, THE HS Team IN THE HS AUDITORIUM. ONE BINDER FOR MS, ONE FOR HS AND TWO MORE FOR FACULTY (ONE FOR EACH TEAM).
Individuals of students and all faculty/staff
All service items - ID cards, yearbook, attendance files$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$17siufb2us8743kps69rc2ghat@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_6759698dbd0175a2$cid$, $src$google_calendar_import$src$, $uid$64ubvdtua866imk0m70radg7vb@google.com$uid$, $title$Spring Debrief$title$, $d$2026-06-11$d$::date, $d$2026-06-11$d$::date, NULL, NULL, NULL, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$64ubvdtua866imk0m70radg7vb@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7cec079a4463c0a3$cid$, $src$google_calendar_import$src$, $uid$541rvve251qotds9nsuc097el0@google.com$uid$, $title$Glencliff Elementary (2 teams)$title$, $d$2025-09-24$d$::date, $d$2025-09-24$d$::date, $tm$8:30a$tm$, $arr$7:45$arr$, $sch$Glencliff Elementary$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Ashley Steele, PTO co-president
glencliffpto.copres@gmail.com

9/12 confirmed with Ashley ckg
Arrive: 7:45-8:00a
Start: 8:30a

Indoor in Gym
350 students
Individuals of all students and faculty/staff
All service items
Yearbook - Treering
Collages (told March for a delivery date)

Hi Stephanie,

You, Beth and anyone else from your team that is attending picture day will need to bring your drivers licenses to enter the building. Feel free to park in the parking lot furthest to the right. You will need to enter through the main front doors but then can exit the gym by that parking lot to bring your equipment right in and out through the gym doors.

I have let our custodial staff know about the tables and chairs so they will be set up when you arrive and I will share the schedule when it's complete.

I currently have myself and 1 other parent signed up to volunteer. Are 2 parent volunteers sufficient or would you like us to get more?  

If you need anything my cell is (518) 461-7486.

Thank you,
Ashley Steele$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$541rvve251qotds9nsuc097el0@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_6508b1b10d7d5032$cid$, $src$google_calendar_import$src$, $uid$30d557a5h9g0h0m7ljn6af8sl7@google.com$uid$, $title$HOLD Albany Academy Spring Photos (PS-4) (1 team)$title$, $d$2026-05-07$d$::date, $d$2026-05-07$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$HOLD Albany Academy Spring$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Rebecca Trainor
TrainorR@albanyacademy.org
Arrive: 7:30am to start at 8am
Outdoor, push into the library if bad weather$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$30d557a5h9g0h0m7ljn6af8sl7@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_585001d0287d45c1$cid$, $src$google_calendar_import$src$, $uid$74q3rf0jd5cn5vo52j0ap203q8@google.com$uid$, $title$Steph Binghamton to Assist Kim Johnson$title$, $d$2025-09-18$d$::date, $d$2025-09-19$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$74q3rf0jd5cn5vo52j0ap203q8@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ad77c015f160d552$cid$, $src$google_calendar_import$src$, $uid$B1E7C8C3-9542-4D4C-B4CB-E5EA4D704162$uid$, $title$AA board of trustees headshots 6;00$title$, $d$2025-06-10$d$::date, $d$2025-06-10$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$B1E7C8C3-9542-4D4C-B4CB-E5EA4D704162$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_631cce25289e16ac$cid$, $src$google_calendar_import$src$, $uid$7m762fhm4jfh52e4j2ngklkv4l@google.com$uid$, $title$Pieter B Coeymans Elem Picture Day (2 teams)$title$, $d$2025-10-29$d$::date, $d$2025-10-29$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Pieter B Coeymans Elementary School$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Alex Hilker, yearbook editor, MAIN CONTACT
ahilker@rcscsd.org
Sandra Krein, Bldg Secretary
skrein@rcscsd.org
Hakim Jones, principal
hjones@rcscsd.org
10/24/25 tentative schedule per Alex ckg
Setup: 8am
Start: 8:30 am (staff)
Start: 9:00am (students)
Indoor
Individuals of students and faculty
No IDs, only service strips
full yearbook support (Treering)
Collages$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7m762fhm4jfh52e4j2ngklkv4l@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9ecda600bfe715cc$cid$, $src$google_calendar_import$src$, $uid$3a95pltlpj3an4n1d0f251ck5m@google.com$uid$, $title$Waterford Halfmoon Sweetheart Dance GIRLS 1 Photog$title$, $d$2026-03-08$d$::date, $d$2026-03-08$d$::date, NULL, $arr$2:30p$arr$, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jessica Rice, PTO VP
waterfordhalfmoonpto@gmail.com
GIRLS DANCE (BOYS dance is on April 24)
QRs - job set up to allow one digital download per access with option to buy more
Indoor, backdropped set up
Arrive: 2:30p
Dance times: 3-5pm
Waterford-Halfmoon PTO
Sun, Mar 1, 7:33 PM (13 hours ago)
to me
Hi Carrie,
Just checking in for the Sweetheart Dance for next Sunday, March 8th.  The event is from 3-5 pm but we will be there at 12 to start our set up and decorations.  We can have the photographer set up in the lobby just like last year.  Is there anything the photographer will need from us to help support them?  Just let us know.
Thank you and we are looking forward to seeing them there.
-Jessica Rice$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3a95pltlpj3an4n1d0f251ck5m@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_956c3d779ee6e80f$cid$, $src$google_calendar_import$src$, $uid$1lr9uoqqbn4fp4rtuvj7g7l3p7@google.com$uid$, $title$HOLD Wildwood School - Curry Road (Andrew + 1)$title$, $d$2026-10-27$d$::date, $d$2026-10-28$d$::date, NULL, NULL, $sch$HOLD Wildwood School - Curry Road$sch$, $typ$review$typ$, ARRAY[$a$Andrew$a$]::text[], ARRAY[]::text[], false, $info$Kellie or Willow, new main office admins
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
Needs PSPA for yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1lr9uoqqbn4fp4rtuvj7g7l3p7@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ef04782a0acaf724$cid$, $src$google_calendar_import$src$, $uid$263jfkev01g47oudjg79tc5fr5@google.com$uid$, $title$Hackett Middle School (2 teams)$title$, $d$2025-10-15$d$::date, $d$2025-10-16$d$::date, $tm$8:49$tm$, $arr$7:45am$arr$, $sch$Hackett Middle School$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mike Paolino, principal
mpaolino@albany.k12.ny.us
518-475-6475
10/7 all confirmed with Mike ckg
Setup: 7:45am - arrive thru cafe door
Faculty photos: 8:15-8:45am, some may come during 1st period
Students start: 8:49 with first PE class
Oct. 15
th
 is a Day 1 and Oct. 16
th
 is a Day 2
Indoor in gym
6-8 grades
Individuals of all students and faculty during PE classes
no collages
ID cards for all - CHECK for 25-26
Yearbook support for Treering
Stephanie,
Good Morning.  Thank you for the email.
We are looking forward to iSmiles visiting Hackett next week for our school picture.  I will have a member of our maintenance or security team available by the back cafe door each morning at 7:45am to assist with any transportation of equipment to the gym.  I will also ensure that there are chairs and tables within the gym to assist your work.
Our PE teachers will be present for all class periods to provide support and supervision of students.  Should you have any concerns with any students and/or periods, please speak with a member of the PE team and they will immediately request the attention of a school principal.
Please let me know if I can be of any additional assistance.  Thank you again for your willingness to support School Pictures at Hackett.
Mr. Paolino$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$263jfkev01g47oudjg79tc5fr5@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9b6ef75476999c63$cid$, $src$google_calendar_import$src$, $uid$6qbjpmfh08pupaoopbmfui7n74@google.com$uid$, $title$Studio Staff Quarterly Meeting$title$, $d$2026-09-08$d$::date, $d$2026-09-08$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6qbjpmfh08pupaoopbmfui7n74@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ab6da7620dc90ed0$cid$, $src$google_calendar_import$src$, $uid$6sh46qpgi247qulclfhlvbl9k5@google.com$uid$, $title$New Lebanon Grad Group Photo (1 photog)$title$, $d$2026-06-26$d$::date, $d$2026-06-26$d$::date, NULL, NULL, $sch$New Lebanon Grad Group Photo$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$4/15/26 booked with Sarah Roblez in main office (
sroblez@newlebanoncsd.org
)
9:15am start at WBH Elementary
group senior photo at grad rehearsal
Going with option 1, put on GP with a $6 8x10 print option, ship to school. Batch to school is open for one week after 6/26/25. Make flyer for parents and email to Sarah. Also have hard copies for photograper bring to photo shoot.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6sh46qpgi247qulclfhlvbl9k5@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_31222213c0cb1cf8$cid$, $src$google_calendar_import$src$, $uid$582neeiv0gi2dj1j98fdlrh5gs@google.com$uid$, $title$Maureen Parker Branding/Headshots STEPH 3;00 PM$title$, $d$2026-05-04$d$::date, $d$2026-05-04$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$582neeiv0gi2dj1j98fdlrh5gs@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_fb4527bcdcd697d5$cid$, $src$google_calendar_import$src$, $uid$6nih1pbn9j9hdqu6l955b1dmd2@google.com$uid$, $title$NEW DATE Blessed Sacrament Spring Pics (REQ Andrew 1 team)$title$, $d$2026-04-23$d$::date, $d$2026-04-23$d$::date, $tm$8:20am$tm$, $arr$7:50am$arr$, $sch$NEW DATE Blessed Sacrament$sch$, $typ$graduation/pano$typ$, ARRAY[$a$Andrew$a$]::text[], ARRAY[]::text[], false, $info$Mike O'Kane, Principal (NEW)
principal@blessedsacramentschool.net
p: 
(518) 438-5854
2/25/26 CHECK TIMING WITH MIKE AT THE START OF APRIL ckg
2/25/26 new date book ckg; 1/14/26 Mike confirmed ckg
Arrive: 7:50am
Start: 8:20am
Indoor in the Gym with spring backdrop
Individuals of all students (grades prek3 to 6)
1/14/26 Suggested this schedule and Mike confirmed:
Arrive at 7:50am to set up in the Gym, and start photos at 8:20am with this schedule:
8:20-8:40 PreK3
8:40-9:00 PreK4
9:00-9:20 Kindergarten
9:20-9:40 1st grade
9:40-10:00 2nd grade
10-10:20 3rd grade
10:20-10:40 4th grade
10:40-11:00 5th grade
11:00-11:20 6th grade$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6nih1pbn9j9hdqu6l955b1dmd2@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_702bb481e59704a9$cid$, $src$google_calendar_import$src$, $uid$01tjte95quacl2htbrvjodguo6@google.com$uid$, $title$NO STEPH - FAMILY WEDDING$title$, $d$2025-11-23$d$::date, $d$2025-11-23$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$01tjte95quacl2htbrvjodguo6@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_aa3d517795b44be4$cid$, $src$google_calendar_import$src$, $uid$7d1qvrgirfpekdnbrfu0ausi1p@google.com$uid$, $title$Arongen Elem MAKEUP DAY (1 team)$title$, $d$2025-10-30$d$::date, $d$2025-10-30$d$::date, NULL, NULL, $sch$Arongen Elementary School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mallory Detzel, NEW PTO Contact as of 25-26
detzel101312@gmail.com
Cindi Breen, main office admin
breecind@shenschools.org
Cindi makes the schedule
Breen, Cindi
10/27/25 9:11 AM (22 minutes ago)
to Mallory, me
Hi ladies, thank you both for your emails. 
I sent home both the retake photo permission slips and the individual access codes of the students who have not yet viewed their galleries.
The makeup picture schedule is as follows:
K AM - 10am
4th Grade - 10:15am
5th Grade - 10:30am
1st Grade - 10:45am
2nd Grade - 11:00am
3rd Grade - 11:15am
K PM - 11:45am

Please let me know if you have any questions and we look forward to seeing iSmile on Thursday!
Best, Cindi$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7d1qvrgirfpekdnbrfu0ausi1p@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4fc097879f9bce35$cid$, $src$google_calendar_import$src$, $uid$61ch2sr83k5n5v3v9rtlngi2u6@google.com$uid$, $title$HOLD Karigon Yearbook Club Pics (1 photog)$title$, $d$2027-02-04$d$::date, $d$2027-02-04$d$::date, NULL, NULL, $sch$HOLD Karigon Yearbook Club$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Nupoor Gordon, main office admin
gordnupo@shenschools.org
Club and Group pictures for the yearbook
Starting at 8:30 in the cafeteria on risers.
Images to be uploaded to Smugmug. Let Carrie know when they're ready so she can upload to their yearbook. RENAME FILES AS THE CLUB NAME$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$61ch2sr83k5n5v3v9rtlngi2u6@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9ec19425aee0b334$cid$, $src$google_calendar_import$src$, $uid$4vqa7b84l3f18bct9ck1rce2bi@google.com$uid$, $title$Malta Ave 5th Grade Pano RAIN (1 photog )$title$, $d$2027-04-16$d$::date, $d$2027-04-16$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, $sch$Malta Ave RAIN$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jenny Bottisti
(518) 884-7250 ext 1380
JBottisti@bscsd.org
Set-up: 9am - check in at main office with photo ID upon arrival.
Start: 9:30am
ONLY RAIN DATE FOR PANO!
5th grade group on or near playground. They have recess on the playground beginning at 10:15, so we need to be done by then.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4vqa7b84l3f18bct9ck1rce2bi@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a83c7118d62358b5$cid$, $src$google_calendar_import$src$, $uid$06cd31ac27ttgcnpbv673eufeq@google.com$uid$, $title$Story Place Preschool (2 teams)$title$, $d$2026-03-20$d$::date, $d$2026-03-20$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Story Place Preschool$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Michele L. Rose, MS Ed, SDL
Preschool Director
Story Place Preschool, Inc.
1477 South Schodack Rd.
Castleton, NY 12033
mrose@storyplacepreschool.com
Phone: (518)477-7103
Fax: (518)477-7167
spring backdrop
2/26/26 emailed Michelle cc Molly, Andrew, Matt ckg
Set-up: 8:30am
Start: 9:00 am, end by 1:45pm
Students are there from 9am-2pm
Two Teams?
Approx 100 kids 18 mos-5yrs
7 classes
MOST students have special needs
staff pictures
collages - ADD STAFF PICS TO COLLAGES$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$06cd31ac27ttgcnpbv673eufeq@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7257d7a56fa50172$cid$, $src$google_calendar_import$src$, $uid$148h0ipk6e0hbino5lhcjnkdnj@google.com$uid$, $title$Waterford-Halfmoon Seniors (2 photogs)$title$, $d$2025-08-20$d$::date, $d$2025-08-22$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Waterford-Halfmoon$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$NEW CONTACT: Kayla Ramundo (starts mid-August 2025)
kraymundo@whufsd.org

Christopher Scanlan, principal (contact because Kayla hasn't yet started at school)
Cscanlan@whufsd.org
Michael Healey, Superintendent
Mhealey@whufsd.org
ES GYM
Arrive: 8:30am
Start: 9am
Indoor and outdoor portraits
Bring white and red caps / gowns
Look at Class of 2025 GotPhoto galleries to see what we did then
Needs yearbook images in the FALL!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$148h0ipk6e0hbino5lhcjnkdnj@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_8b11e4ef4bfa539c$cid$, $src$google_calendar_import$src$, $uid$4tjo8eeefo3nf5jjj90ai9csni@google.com$uid$, $title$Arongen Spring Pics & 5th Grade Pano (2 teams)$title$, $d$2026-04-22$d$::date, $d$2026-04-22$d$::date, $tm$8:05am$tm$, $arr$7:35am$arr$, $sch$Arongen &$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Time Slot
Photographer A
Photographer B
Location
Story Stairs Door to Courtyard
Rotunda Door to Courtyard
Story Stairs (Rain Location)
Rotunda (Rain Location)
PTA Volunteer - Stephany Wilson
PTA Volunteer - Mallory Detzel
8:00-8:10
Staff
Staff
8:10-8:30
LaGoy
Carcia
8:30-8:50
Rupert
Tempest
8:50-9:05
Losee
White
9:05-9:20
Symonds
VandeCar
9:20-9:40
Lamberton
Jacon
9:40-10:00
Donohue
M.Sulz
10:00-10:15
Swayne
Hubert
10:15-10:30
Leuthauser
Renzi
10:30-10:45
Venditti
G.Sulz
10:45-11:00
McQuade
Ducharme
11:00-11:15
Hughes
Miller
11:15-11:30
*Reinstein
*Camardo
11:30-11:45
*Cahill
*Robillard
11:45-12:00
**Owens
12:00-12:15
Rupert
LaGoy
12:15-12:30
5th GRADE GROUP PICTURE - GYM BLEACHERS
Mallory Detzal, new PTO pic day contact
detzel101312@gmail.com
Cindi Breen, main office admin (does schedule)
breecind@shenschools.org
NO ADD'L PARENT VOLUNTEERS BEYOND MALLORY AND 1 OTHER, PER MR. HILLS
Outdoor Photos - push indoors if bad weather
All students
PANO INDOORS IN GYM ON BLEACHERS ON THIS DAY! Rain or shine
4/13 emailed Mallory cc Steph & Beth ckg
Setup: 7:35am
Start: 8:05am NEW STAFF ONLY (kept it to 10 min purposely), 8:15am STUDENTS
PANO DETAILS: 8x24 pano, 1 free to each 5th grader and teachers, 1 free framed for school. Carrie will handle when image is ready. Also goes into their yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4tjo8eeefo3nf5jjj90ai9csni@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f1c9683e17f83edd$cid$, $src$google_calendar_import$src$, $uid$3hgsosikqfv1s701h23b9o0ijt@google.com$uid$, $title$Loudonville Christian Spring Photos (PK-5) (1 team)$title$, $d$2026-05-06$d$::date, $d$2026-05-06$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Loudonville Christian Spring$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Bonnie Strock
bstrock@lcs.org
OUTDOORS, move indoors if bad weather per Bonnie ckg
4/28 Bonnie chged to 8am start ckg; 4/27 Bonnie chged to an 8:45am start ckg; 4/20/26 Bonnie confirmed 9am start time; emailed Bonnie cc Andrew to confirm ckg
Set-up: 8am, to start at 8:30am$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3hgsosikqfv1s701h23b9o0ijt@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_60f1c60a3fad18ce$cid$, $src$google_calendar_import$src$, $uid$2dqt24ps0hti5aqgt93f90ldkj@google.com$uid$, $title$Ronald McDonald House Dinner Board Headshots$title$, $d$2025-06-25$d$::date, $d$2025-06-25$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$GRAY BACKDROP
Hi Stephanie! I also wanted to confirm if you have a certain backdrop planned so we can prep our staff and board for what they should wear. Thanks so much!
Rachel Hayner
Office Manager 
RMHC of the Capital Region  |  
http://rmhcofalbany.org/

ph:  518-438-2655  |  
rhayner@rmhcofalbany.org
Mailing Address:  139 S. Lake Avenue, Albany, NY 12208 
From:
 Justin Arundell (RMHCofAlbany) <
jarundell@rmhcofalbany.org
>
Sent:
 Friday, May 16, 2025 9:53 AM
To:
 Stephanie McCauley <
stephanie@ismilestudios.com
>
Cc:
 Beth Hazelton (RMHCofAlbany) <
bhazelton@rmhcofalbany.org
>; Kimmy Venter (RMHCofAlbany) <
kventer@rmhcofalbany.org
>; Rachel Hayner (RMHCofAlbany) <
rhayner@rmhcofalbany.org
>
Subject:
 Re: Request to Schedule Headshot Session for Board Dinner on June 25

Hello Stephanie,
I promise I did not forget about you! We have confirmed our location for the June 25
th
 Board Dinner.
We will be at the Hilton Garden Inn, 62 New Scotland Ave. Albany, NY 12208.
We look forward to seeing you there. If there is anything you may need, please do not hesitate to contact me.
Justin Arundell
Marketing Coordinator
RMHC of the Capital Region  |  
http://rmhcofalbany.org/

Phone:  518-871-3525  | 
jarundell@rmhcofalbany.org
Mailing Address:  139 S. Lake Avenue, Albany, NY 12208 
From:
 Stephanie McCauley <
stephanie@ismilestudios.com
>
Sent:
 Monday, March 24, 2025 12:49 PM
To:
 Justin Arundell (RMHCofAlbany) <
jarundell@rmhcofalbany.org
>
Cc:
 Beth Hazelton (RMHCofAlbany) <
bhazelton@rmhcofalbany.org
>; Kimmy Venter (RMHCofAlbany) <
kventer@rmhcofalbany.org
>
Subject:
 Re: Request to Schedule Headshot Session for Board Dinner on June 25

You are reserved!  Standing by!    THANK YOU! 
:)
Steph
Stephanie McCauley
iSmile Studios
On Mar 24, 2025, at 12:47 PM, Justin Arundell (RMHCofAlbany) <
jarundell@rmhcofalbany.org
> wrote:
Hi Stephanie,
No worries at all—I completely understand how hectic a move can be! I really appreciate you holding the date for us. We do still need your services and would love to have you photograph our staff & board members at the dinner.
I’ll follow up soon with additional location details, but please keep us on your schedule. Thanks again, and we’re looking forward to working with you!
Justin Arundell
Marketing Coordinator
RMHC of the Capital Region  |  
http://rmhcofalbany.org/

Phone:  518-871-3525  | 
jarundell@rmhcofalbany.org
Mailing Address:  139 S. Lake Avenue, Albany, NY 12208 

From:
 Stephanie McCauley <
stephanie@ismilestudios.com
>
Sent:
 Monday, March 24, 2025 12:21 PM
To:
 Justin Arundell (RMHCofAlbany) <
jarundell@rmhcofalbany.org
>
Cc:
 Beth Hazelton (RMHCofAlbany) <
bhazelton@rmhcofalbany.org
>; Kimmy Venter (RMHCofAlbany) <
kventer@rmhcofalbany.org
>
Subject:
 Fwd: Request to Schedule Headshot Session for Board Dinner on June 25

Hi Justin!
Please forgive my delayed response to your inquiry!  We recently moved locations and I’ve never done that before and had NO IDEA how far it would set me back ha ha!
Anyway, we would be glad to photograph your board members at the dinner!  I’ve blocked the date for you pending your confirmation and any location details.  And, if you gave up on us for the delayed reply and already secured another photographer I would totally understand  :(  - just let me know so I can release the date - but I hope you still need me!
:)
Sincerely,
Stephanie McCauley
iSmile Studios
---------- Forwarded message ---------
From: 
Justin Arundell (RMHCofAlbany)

<
jarundell@rmhcofalbany.org
>
Date: Fri, Mar 14, 2025 at 1:26 PM
Subject: Request to Schedule Headshot Session for Board Dinner on June 25
To: 
iSmileStudios@gmail.com
 <
iSmileStudios@gmail.com
>
Cc: Beth Hazelton (RMHCofAlbany) <
bhazelton@rmhcofalbany.org
>, Kimmy Venter (RMHCofAlbany) <
kventer@rmhcofalbany.org
>$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2dqt24ps0hti5aqgt93f90ldkj@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c571c4d70e43b0f4$cid$, $src$google_calendar_import$src$, $uid$308cjvf0d9jq10lhcdvv1lgofg@google.com$uid$, $title$RPI Career Fair (11a-3pm)$title$, $d$2026-02-11$d$::date, $d$2026-02-11$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Matt iSmile Studios

6:37 PM (0 minutes ago)
to 
Stephanie
, 
Erika
Hi Erika!
Yes, we're available and can be there! Please share any other details you have for us once they're ready :)
Thank you for thinking of us. I hope you have a great evening!
Best,
Matt
On Tue, Jan 13, 2026 at 1:07 PM Cary, Erika <
carye@rpi.edu
> wrote:
Hi there! 
You all have come to our career fair each year to do headshots for our students – we were hopeful you all would be free again this year? Our event is Wednesday February 11
th
from 11am-3pm – thank you!
Erika 

Erika Cary
(she.her)
Developer-Empathy-Maximizer-
Relator-Futuristic
Associate Director, Career Development 
Rensselaer Polytechnic Institute, Center for Career and Professional Development (CCPD)
Connect with me on LinkedIn 
|

Schedule an Appointment with a Career Counselor

|

Invite the CCPD to a Club or Class

|

Follow CCPD Discord Server
P: (518)262-8233
E: 
carye@rpi.edu$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$308cjvf0d9jq10lhcdvv1lgofg@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ad771b1ab53c4b72$cid$, $src$google_calendar_import$src$, $uid$6gikafgtk6537jkg4gkoghpj55@google.com$uid$, $title$HOLD Waterford-Halfmoon Elementary (2 teams)$title$, $d$2026-09-18$d$::date, $d$2026-09-18$d$::date, $tm$8:45am$tm$, NULL, $sch$HOLD Waterford-Halfmoon Elementary$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jessica Rice, PTO President
waterfordhalfmoonpto@gmail.com
8:15am set-up to start at 8:45am
Check in main office upon arrival with photo ID; need masks
415+ students
Indoor, multipurpose room
Collages, work with Annemarie Strife, yearbook editor on these (
astrife@whufsd.org
)
All faculty for yearbook
All service items
Full yearbook support$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6gikafgtk6537jkg4gkoghpj55@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b396b48f307d05cf$cid$, $src$google_calendar_import$src$, $uid$7hvus34nibs6iv7vcd6gcklsgi@google.com$uid$, $title$Hoosic MS/HS Makeups (1 team)$title$, $d$2025-10-16$d$::date, $d$2025-10-16$d$::date, NULL, $arr$9:00am$arr$, $sch$Hoosic Middle School/High School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Rochelle Dinallo, new yearbook editor
rdinallo@hoosicvalley.org
Amy Vautrin, main office admin
avautrin@hoosicvalley.org
CONFIRM!
8:30am arrrive to setup
9am-10am: Underclass Retakes
10am-1pm: Senior Retakes (as scheduled by Rochelle in 10 minute increments)
Individuals of all students and faculty
SENIORS - retakes and scheduled seniors now just being photographed. Rochelle to schedule them.
IDs for all, yearbook in late fall$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7hvus34nibs6iv7vcd6gcklsgi@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_95e74cc12f6a797d$cid$, $src$google_calendar_import$src$, $uid$7bk152shgaqusiurf77qa5reof@google.com$uid$, $title$Studio Staff Quarterly Meeting (SENIOR TRAINING)$title$, $d$2026-04-01$d$::date, $d$2026-04-01$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7bk152shgaqusiurf77qa5reof@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2a35cbb9fdb20507$cid$, $src$google_calendar_import$src$, $uid$5a9hctcpcslc5jf0dup83gh5m7@google.com$uid$, $title$LCS Bacc Evening (Matt)$title$, $d$2027-06-11$d$::date, $d$2027-06-11$d$::date, $tm$3:00$tm$, NULL, NULL, $typ$graduation/pano$typ$, ARRAY[$a$Matt$a$]::text[], ARRAY[]::text[], false, $info$Amy Thiel
Librarian/Lower School Tech Teacher/Graduation Coordinator
Loudonville Christian School
374 Loudon Rd. 
Loudonville, NY 12211
518.434.6051 x335
lcs.org
7pm start
3/25/26 booked with Bonnie ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5a9hctcpcslc5jf0dup83gh5m7@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b86ab7c04d43b5d4$cid$, $src$google_calendar_import$src$, $uid$0vmi2dv3b4n6m26mourqhcl0gl@google.com$uid$, $title$Wood Road 5th Grade PANO RAIN DATE (1 photog)$title$, $d$2027-05-14$d$::date, $d$2027-05-14$d$::date, NULL, NULL, $sch$Wood Road$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$WILL BE NEW (MaryBeth retired), admin
Email: 

Only 5th grade pano on this date if not done on spring pic date because of rain. This is at the school's request.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0vmi2dv3b4n6m26mourqhcl0gl@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9f89b967557c4a79$cid$, $src$google_calendar_import$src$, $uid$4i9d261gbl9ntlm1a5g9o75qo2@google.com$uid$, $title$Academy Winter Sports Day 1$title$, $d$2025-11-14$d$::date, $d$2025-11-14$d$::date, $tm$2:30$tm$, $arr$2:00$arr$, $sch$Academy Day$sch$, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Basketball
Swim
Prep Hockey
Stephanie McCauley
3:00 PM (1 hour ago)
to Paul, Michael, Beth, me, Matthew
Thank you! 
2:30 start is great in the pizza box.  I will need 30 minutes for basketball, 20 for boys swim, 20 for girls swim, and 30 for prep hockey - any way you want to set that up!)    I will arrive at 2:00 to set up and have a colleague coming to assist me with individuals and take the team pictures.   
Basketball team picture in the gym, swim in pool, and hockey on ice?  For hockey, we cannot walk out on the ice, if someone could put a rug or carpet out for us to stand on just outside of the box, we can do the picture with the boys on center ice facing the box?
Thank you both SO MUCH!  See you guys next week!
:)
Steph
On Nov 7, 2025, at 2:01 PM, Paul Gallucci <
galluccp@albanyacademy.org
> wrote:
Hi Stef:
Thanks for connecting. We will try our best to get those rosters to you soon. On Friday 11/14, you will be taking B Basketball, Prep Hockey and B/G Swimming.
We can set up the photo shoot in the Field house conference room, "old pizza box"
Start at 2:30?
Thanks,
Paul
PAUL L. GALLUCCI
DIRECTOR OF ATHLETICS

135 Academy Rd
Albany, NY 12208
518.429.2377

From:
 Stephanie McCauley <
stephanie@ismilestudios.com
>
Sent:
 Friday, November 7, 2025 1:55 PM
To:
 Michael Murray <
MurrayM@albanyacademy.org
>; Paul Gallucci <
galluccp@albanyacademy.org
>
Subject:
 Prep Hockey/Basketball

Hi Paul and Mike!
Just checking in to see if you guys have rosters (even partial) for these teams for our media day on 11/14?   I am not trying to rush you but we need a couple days to load all the data in our systems and print out the paperwork we need.
Also please make sure your rosters include the correct spellings of names as we use what you send us to make banners and this is an easy way to prevent errors in proofing … less work for all of us   :)
I will follow up next week to find out where you want me to set up this day!
Thank you!
Steph$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4i9d261gbl9ntlm1a5g9o75qo2@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2d9afda3fcc5008e$cid$, $src$google_calendar_import$src$, $uid$2kamhpsk2au178j37ttdsrso3a@google.com$uid$, $title$Shatekon Elementary (2 teams)$title$, $d$2025-10-14$d$::date, $d$2025-10-14$d$::date, $tm$7:45am$tm$, $arr$7:15am$arr$, $sch$Shatekon Elementary$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Erica Ryan, principal
ryaneric@shenschools.org
set up: 7:15am
start: 7:45am staff, classes at 8:15am
Indoor 
**Pictures will take place in the ELA room. Room 351***
Individuals of all students and faculty
Collages
Service strips
Full yearbook support, Treering$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2kamhpsk2au178j37ttdsrso3a@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_dda1677f91666465$cid$, $src$google_calendar_import$src$, $uid$5pl2vur9bdljjtcpufo7eu958r@google.com$uid$, $title$DCS 6th Grade Family Photo Day (Steph)$title$, $d$2025-11-30$d$::date, $d$2025-11-30$d$::date, NULL, NULL, $sch$DCS 6th Grade Family$sch$, $typ$graduation/pano$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$Haley Duffy Wanser
hduffy@duanesburg.org
Colleen Nieminski
cnieminski@duanesburg.org
Looking for a fundraiser for the 6th grade class. Offered 9-1pm, and adding more slots if needed. Steph suggested this date on 9/9/25 ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5pl2vur9bdljjtcpufo7eu958r@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ff09d6c484e91ef7$cid$, $src$google_calendar_import$src$, $uid$016is8e71ubb7iavg78a517tt9@google.com$uid$, $title$TSL Kid's Crew, Scotia (1 team)$title$, $d$2025-11-24$d$::date, $d$2025-11-24$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$TSL Kid s Crew Scotia$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Latizza Douglas, director
latizzahartfield89.tsl@gmail.com

Arrive: 8:30am
Start: 9am

33 students, ages 6 weeks to 5 yrs old.

Indoor on blue
Pics of all students and faculty
Collages
ID Cards needed
Makeups in studio$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$016is8e71ubb7iavg78a517tt9@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_5194f3bdf7780cb7$cid$, $src$google_calendar_import$src$, $uid$3jmp572ilu8hevdck4n021cbc6@google.com$uid$, $title$Cohoes Senior Makeups (1 team)$title$, $d$2025-10-07$d$::date, $d$2025-10-07$d$::date, NULL, NULL, $sch$Cohoes Senior$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Caryn Dollard
cdollard@cohoes.org

Makeups for seniors - last chance
(during breaks from underclass photos and after school)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3jmp572ilu8hevdck4n021cbc6@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_056fa3fc5e10fb2b$cid$, $src$google_calendar_import$src$, $uid$614ju8ciuvfvvc6o1a4eput1jk@google.com$uid$, $title$Saint Madeleine's Fall Photos (1 team)$title$, $d$2025-10-07$d$::date, $d$2025-10-07$d$::date, NULL, $arr$7:30am$arr$, $sch$Saint Madeleine s Fall$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kelly Sloan, Principal
ksloan1@smsschool.org
Setup: 7:30am (school opens at 7:10am) 
Start pics at 8:20am
Steph arriving early for staff pics
Indoor traditional photos ( UPSTAIRS in the Parish Hall (old church))
Individuals of students & faculty
Group class photos
Yearbook, all service items, attendance files, etc.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$614ju8ciuvfvvc6o1a4eput1jk@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_04738593e49f6166$cid$, $src$google_calendar_import$src$, $uid$13b53n9tp3l5gc8bgbrvka68f4@google.com$uid$, $title$Waterford-Halfmoon Prom & Photobooth (1 Photog)$title$, $d$2025-06-07$d$::date, $d$2025-06-07$d$::date, NULL, NULL, $sch$Waterford-Halfmoon Prom & Photobooth$sch$, $typ$photo booth$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Contact:
Name: Kristina Oliver 
Email: 
koliver@whufsd.org

Confirmed -MM 11/26/24
**HOLDING DATE until prom committee confirms ckg**
Matt iSmile Studios
Wed, May 15, 9:19 AM (23 hours ago)
to 
koliver
, me
Hi Kristina,
Thanks for reaching out! I've been photographing the Waterford Prom for the last several years. We provide the photo booth during prom, as well as couple/group photos, and candids, at no cost to the school. Parents/students can then order the images online. 
Since we've been providing photography services for such a long time with you all at Waterford, we're happy to continue to provide this same prom package to you :) I will block off 6/7/2025. 
Please let me know if you have any questions! I hope you have a great day.
Best,
Matt
Carrie Graziano
 <
carrie@ismilestudios.com
>
7:11 AM (0 minutes ago)
to koliver
Hello Kristina,
Thank you for reaching out about our photobooth for your 2025 prom. We have revised our prom packages and I think you'll be pleasantly surprised. We changed things up significantly to include ALL photos to the kids, so no one has to pay for anything once you book us - all photos are included. The easiest way to do this is to just divide the cost by the number of tickets and work it into the price - should end up being less than $10 a ticket and that’s way less than having to buy photo packages. You'll see that the photo booth can be added to our packages, and can be personalized with the prom date, school name, etc.
iSmile Prom Pricing 2024.jpeg
We do have June 7, 2025 available and because we love your school community, I can hold the date until a decision is made. 
Let me know what you think, and if your prom committee has any questions.
Have the BEST day,
Carrie
Carrie Graziano
Chief Operations Officer
Office・Schools ・HR ・Accounting
iSmile Studios
Join the conversation online at 
www.facebook.com/
ismilestudios
www.ismilestudios.com
Share your great experience on Google
---------- Forwarded message ---------
From: 
GotPhoto Online System

<
no-reply@gotphoto.com
>
Date: Sun, Apr 21, 2024 at 6:19 PM
Subject: Contact request via your 
ismilestudios.gotphoto.
com
 website (Kristina Oliver)
To: <
schoolpics@ismilestudios.com
>
GotPhoto
Name: Kristina Oliver 
Email: 
koliver@whufsd.org

Telephone: +51 88 583668 
Hi! I am the class of 2025 advisor at Waterford Halfmoon high school. I k know you do the photo booth for the class of 2024 and our school pictures. I was hoping to book June 7, 2025 for out class of 2025 prom. It will be held at the Birch hill catering company. Please let me know how to proceed with this and thank you. Kristina Oliver$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$13b53n9tp3l5gc8bgbrvka68f4@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_310603409a130902$cid$, $src$google_calendar_import$src$, $uid$1t11dfm81aiu22k5oglg03cetm@google.com$uid$, $title$Milton Terrace Spring Photos + 5th Grade Pano (2 teams)$title$, $d$2026-05-11$d$::date, $d$2026-05-11$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, $sch$Milton Terrace Spring$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$4/2/26 NYS Science test was just scheduled for orig date, moved to May 11 ckg

Sarah Kinney, school admin asst
skinney@bscsd.org

Setup: 9am
Start: 9:30am

QUICK TURNAROUND FOR YEARBOOK

Outdoor, PUSH INDOORS TO STAGE IF BAD WEATHER, pano will be moved to rain date
450 students
5th grade group photo OUTDOOR ONLY$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1t11dfm81aiu22k5oglg03cetm@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_654b227d5c0dbaf8$cid$, $src$google_calendar_import$src$, $uid$04m10rcp5ps8n534b62vs478qn@google.com$uid$, $title$NEW Tech Valley HS (1 team)$title$, $d$2026-10-07$d$::date, $d$2026-10-07$d$::date, NULL, NULL, $sch$NEW Tech Valley High School$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Lana Hower, yearbook editor
lana.hower@techvalleyhigh.org

Grades 9-11 ()IS card photos to be done with senior portraits per SM)
Indoor
Individuals of all students and staff
160 students, 33 seniors
Need info on service items
Treeing yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$04m10rcp5ps8n534b62vs478qn@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_10c2c9df231bf92d$cid$, $src$google_calendar_import$src$, $uid$36gki70ia5vvl72s96f8dglsga@google.com$uid$, $title$HOLD Chango 5th grade photo RAIN (10;15a 1 photog)$title$, $d$2027-05-07$d$::date, $d$2027-05-07$d$::date, NULL, NULL, $sch$HOLD Chango 5th grade photo RAIN$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Cindy Barbagelata, 5th grade teacher/advisor

barbcynt@shenschools.org

10:15am start
Outdoors, rain date for bad weather
8x24 pano size confirmed by Cindy ckg

$6 per pano charged to the PTO. Include a framed pano for their office at no charge per SM ckg Send invoice to Cindy.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$36gki70ia5vvl72s96f8dglsga@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ffd1f677a79b5cf9$cid$, $src$google_calendar_import$src$, $uid$7rpi1v6b5ovto8qmchnonmto4u@google.com$uid$, $title$Women's Summit LAUREN$title$, $d$2026-03-31$d$::date, $d$2026-03-31$d$::date, NULL, $arr$8:00am$arr$, $sch$Women s Summit$sch$, $typ$review$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, $info$Cassandra Booth
cbooth@bizjournals.com
Albany Marriott
Set up 8:00 am
The event is 9am-3pm. Is it possible to have them available during all breaks highlighted? They can join us for lunch to eat and then head back out for the rest of that time block for photos? If they're interested, they can attend all sessions too! Agenda below. 
9:00-9:30am Registration & Networking
9:30-9:45am Welcome Remarks
9:45-10:15am Fireside Chat
10:15-11:00am Breakout Sessions
11:00-11:15am Break
11:15-12:00pm Breakout Sessions
12:00-1:15pm Lunch
1:15-2:00pm Breakout Sessions
2:00-2:15pm Break
2:15-3:00pm Breakout Sessions$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7rpi1v6b5ovto8qmchnonmto4u@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_51b13d2270ac0301$cid$, $src$google_calendar_import$src$, $uid$6itukigf92t0a8gsglcsut0o1b@google.com$uid$, $title$Pleasant Valley Elem Makeups (1 team)$title$, $d$2025-11-05$d$::date, $d$2025-11-05$d$::date, NULL, $arr$8:30$arr$, $sch$Pleasant Valley Elementary School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$ANISSA RAMDASS, School Secretary
ramdassa@schenectadyschools.org
1 team for makeups to be done by noon
350 students PK-5 (21 classes)
The school sets schedule
Indoor
All service items
Yearbook -Treering
10/24/25 proposed this schedule: 
8:15 set up
8:30 Prek
8:45 K
9:00 1st
9:15 2nd
9:30 3rd
9:45 4th
10:00 5th
10:15 latecomers and faculty
10:30 breakdown equipment$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6itukigf92t0a8gsglcsut0o1b@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_8324e97d0a8fdd73$cid$, $src$google_calendar_import$src$, $uid$7326p9sidavkop0td8so4kdc12@google.com$uid$, $title$Maple Leaf Burnt Hills/Glenville (2 teams)$title$, $d$2026-05-14$d$::date, $d$2026-05-14$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$Maple Leaf Burnt Hills/Glenville$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Tori, Center Director as of Spring 2026
Kerry Butler, Asst Director
MLCC Burnt Hills/Glenville
P: 518-384-1710
glenville@mapleleafchildcare.
com
Hope to be done by 11am
4/23/26 emailed Danielle & Kerry to confirm ckg
Outdoors Setup: 7:30am
Outdoors Start: 8am
**will be a slightly later start if we need to be inside - work with Danielle on weather forecast and exact start time***
Outdoor, okay to push in on picture day, but really prefer outdoors.
Individuals of about 65 students plus 35 faculty/staff
ALSO GRAD PHOTOS - BRING OUR COBALT BLUE CAP/GOWNS
Regarding a schedule:
glenville glenville
Attachments
May 5, 2025, 3:31 PM (18 hours ago)
to me
Hi Carrie,
 We usually start with infants and go up from there age wise regarding a schedule.
Thanks,
Danielle Dicaprio
Center Director
MLCC - Glenville$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7326p9sidavkop0td8so4kdc12@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c197c92fcec037cc$cid$, $src$google_calendar_import$src$, $uid$5nc8mdqnsaafvcjf0kak3mqgps@google.com$uid$, $title$Northville Makeup Day (1 team)$title$, $d$2025-10-20$d$::date, $d$2025-10-20$d$::date, $tm$11:30am$tm$, $arr$11:00am$arr$, $sch$Northville$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Sue Schmitt, new yearbook editor
sschmitt@northvillecsd.org
10/17/25 updated by Sue; 
10/15/25 updated by Sue at 4:45pm ckg (Kindly asked her not to change it again.)
Arrive: 11:00am
Start: 11:30am makeups, then 12:15pm with the Senior, then makeups again at 12:30 until they end. Told school you have to be gone by 3-3:15pm, no later (had already stated that in an earlier email). ckg
Indoor - regular school photo makeups - 10/14 Sue is now asking for the afternoon. 
Rylan Czadzeck - Will need makeups done, is missing senior portrait days Hoping to do this at 12:15pm on 10/20
10/15/25 NO SPORTS PICS TODAY! Doing all sports on Dec 1. ckg
10/14/25 Per Steph, we can shoot winter senior-athletes this time, but we need to encourage them to either not request this, or charge for an extra sports photo session, before all of the other athletes are photographed. ckg
Schmitt, Susan
8:51 AM (37 minutes ago)
to me, Stephanie
Good morning,
I hate to ask this at the 11th hour...I'm putting together a schedule for teachers to send their students on Monday for pictures & I'm trying to work around their lunch & recess times.  Could we possibly start at 11:30?  You should be finished by 12:45.  You will be able to set up in the Library area .  
I can send you what I have in place as far as a schedule when I finalize it.
Thank you,
Sue  
CONFIDENTIALITY NOTICE:
 The contents of this email message and any attachments or enclosures are intended solely for the addressee(s) and may contain confidential and/or privileged information and may be legally protected from disclosure. If you are not an intended recipient of this message or this message has been sent to you in error, please immediately notify this sender and delete this message and any attachments or enclosures.
Stephanie McCauley
8:54 AM (34 minutes ago)
to Susan, me
Hi Sue!  Sure, I can be ready for 11:30 - I will plan to arrive at 11 to set up if someone can let me in the library doors?
:)
Steph$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5nc8mdqnsaafvcjf0kak3mqgps@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c1b15c9cb7ff6782$cid$, $src$google_calendar_import$src$, $uid$1fhohvp5pln8sqcmb4o3qjmbog@google.com$uid$, $title$AW Becker Elem Spring Photos (2 teams)$title$, $d$2026-05-27$d$::date, $d$2026-05-27$d$::date, $tm$9:15am$tm$, $arr$8:45am$arr$, $sch$AW Becker Elementary School Spring$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$5/7/26 5th grade group being done on 5/12/26 ckg
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
Individuals of all students$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1fhohvp5pln8sqcmb4o3qjmbog@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_99e1d829830bef86$cid$, $src$google_calendar_import$src$, $uid$3jlsh4vtdqpi8tg7fkernh550a@google.com$uid$, $title$HOLD Cohoes HS Makeups ALL (1 team)$title$, $d$2026-11-04$d$::date, $d$2026-11-04$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$HOLD Cohoes High School ALL$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Caryn Dollard
cdollard@cohoes.org
DONE IN 2025 --> Tentative plan is to do Underclass Retakes from 10:15-12:15 and then do senior retakes around that. -MM 

Set-up: 7:30am
Start: 8:00am
Senior Makeups planned to be AFTER underclass are done. ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3jlsh4vtdqpi8tg7fkernh550a@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d418c6947126a79b$cid$, $src$google_calendar_import$src$, $uid$18ljms0s90vdqce69gnfhtf71a@google.com$uid$, $title$Duanesburg Elementary (2 teams+1)$title$, $d$2026-09-18$d$::date, $d$2026-09-18$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$Duanesburg Elementary$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Leah Simpson, secretary to the principal
lsimpson@duanesburg.org
Please check in at the main office upon arrival. Need a photo ID. 
Set-up: 7:30am
Staff start at 8am; Students start time: 8:20am 
Indoor in GYM (confirm with Leah)
Individuals of all students and faculty/staff
All service items
Group class photos
Treering Yearbook - we upload all$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$18ljms0s90vdqce69gnfhtf71a@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_49174667c735af89$cid$, $src$google_calendar_import$src$, $uid$37fom7v356lectj2n4migck9fr@google.com$uid$, $title$Eagle Point Elementary (2 teams)$title$, $d$2025-10-14$d$::date, $d$2025-10-14$d$::date, $tm$7:30am$tm$, $arr$7:00am$arr$, $sch$Eagle Point Elementary$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Chris Wood, main office admin
cwood@albany.k12.ny.us
Jared Fox, Principal
jfox1@albany.k12.ny.us
2 teams so we get done by lunch!
Setup: 7am
Start: 7:30am - Staff
             8am - students
1st and 2nd floor landings
Indoor
Collages
All service items
Treering Yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$37fom7v356lectj2n4migck9fr@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9c144ade5f88270a$cid$, $src$google_calendar_import$src$, $uid$5q9gm12u3978hpqil3gjsg8s8e@google.com$uid$, $title$Cohoes HS Winter Sports (1 team)$title$, $d$2025-12-10$d$::date, $d$2025-12-10$d$::date, NULL, NULL, $sch$Cohoes High School$sch$, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Caryn Dollard
cdollard@cohoes.org
after school - need times and rosters
(as of 11/24/25 no games scheduled for this day ckg)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5q9gm12u3978hpqil3gjsg8s8e@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_861f25ca7928d4ab$cid$, $src$google_calendar_import$src$, $uid$097nkn0k5s3bn4bc20dckjscnq@google.com$uid$, $title$Siena Headshots 12;30-3 (1 photog)$title$, $d$2026-09-18$d$::date, $d$2026-09-18$d$::date, NULL, NULL, NULL, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$12:30 - 3:00 at the MAC

I TOLD DEB PASQUARELLA THAT THIS IS TENTATIVE DEPENDING ON OUR FALL SCHEDULE   SM 5/11/26$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$097nkn0k5s3bn4bc20dckjscnq@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7d395aeadb5663d6$cid$, $src$google_calendar_import$src$, $uid$2lrbsaa9gi3cru3131j6a6ck24@google.com$uid$, $title$Cairo-Durham Graduation (2 photogs)$title$, $d$2025-06-27$d$::date, $d$2025-06-27$d$::date, NULL, NULL, $sch$Cairo-Durham Graduation$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Alyssa Bratton abratton@cairodurham.org

OUTDOOR, starts at 7:30pm
Rain date next day, June 28, time TBD

2 photogs to shoot grads as they cross stage from left and right
Will ask for a group senior photo$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2lrbsaa9gi3cru3131j6a6ck24@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a52140f1a08ec317$cid$, $src$google_calendar_import$src$, $uid$76das33q9ak7gm8d97a9d253a7@google.com$uid$, $title$HOLD Craig Elementary (2 teams)$title$, $d$2026-09-24$d$::date, $d$2026-09-24$d$::date, NULL, $arr$7:30am$arr$, $sch$HOLD Craig Elementary$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Amy Wickham awickham23@gmail.com
Erin Perry ebeland20@gmail.com

Arrive: 7:30am
Start: students at 8am
End: by 1:45pm

Nisky school district
NEW Fall 2025
Indoor in gym *makeups will be elsewhere)
420 students and staff
Collages
Service strips
Talking to Treering for the yearbook

???? Did not do at 5/20/25 for 25-26 school year:
All-School composite - Carrie has example. PLEASE MEASURE THIS WHEN YOU'RE AT CRAIG FOR PIC DAY!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$76das33q9ak7gm8d97a9d253a7@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_dc646958c4cd649b$cid$, $src$google_calendar_import$src$, $uid$53a0sbft6luppa15t75ohh3loo@google.com$uid$, $title$Alloya Headshot 9am (Matt)$title$, $d$2025-10-30$d$::date, $d$2025-10-30$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Matt$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$53a0sbft6luppa15t75ohh3loo@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_68e1f2104a6f6d1c$cid$, $src$google_calendar_import$src$, $uid$0hmo6r5e32e779vqs5s11dkku4@google.com$uid$, $title$Berne-Knox-Westerlo Secondary Makeups (1 team)$title$, $d$2025-10-24$d$::date, $d$2025-10-24$d$::date, NULL, NULL, $sch$Berne-Knox-Westerlo Secondary$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Laurie Hilton
laurie.hilton@bkwschools.org
Indoors, in AUDITORIUM
Senior makeups on same day? YES! 9/24 confirmed. Michelle Van Pattern (yearbook editor) will schedule 9 remaining seniors. ckg
TRANSPORTATION PHOTO - no. Taking during yearbook photo day ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0hmo6r5e32e779vqs5s11dkku4@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_8fce0427c6a65240$cid$, $src$google_calendar_import$src$, $uid$5emu3pfbtkcdmc6c7jkq49pl9f@google.com$uid$, $title$BKW Fall Sports (1 team)$title$, $d$2025-09-09$d$::date, $d$2025-09-09$d$::date, $tm$2:30pm$tm$, $arr$2:00pm$arr$, $sch$BKW$sch$, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Tom Galvin, AD
Tom.galvin@bkwschools.org
518-364-0744
Arrive: 2:00pm
Start: 2:30pm
1738 Helderberg Trail
Berne, NY 12023
Indoors - Location in hallway outside of gym near the elevator.
Individual and group team photos of JV and Varsity teams. Mod to be done on a diff date, maybe when we're there for school pics?
2:30 PM - Girls Golf and JV/Varsity Boys Soccer (Small numbers for each team)
2:45 PM -  JV Volleyball/Varsity Volleyball
3:00 PM - Boys Golf and Mod Golf
3:15 PM -  Mod Boys Soccer and Mod Girls Soccer (Only 3 boys soccer players from BKW)
3:30 PM   JV Football
3:45 PM    Mod Football
4:00 PM     Varsity and Mod Cross Country 
4:15 PM    Cheer and Mod Volleyball (Small numbers for each team)
4:30 PM   Varsity Girls Soccer 
4:45 PM    JV Girls Soccer$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5emu3pfbtkcdmc6c7jkq49pl9f@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ca325b4653c087fa$cid$, $src$google_calendar_import$src$, $uid$55thbrafdvf7g4f4q8ii63csps@google.com$uid$, $title$KinderCare Niskayuna (2 teams)$title$, $d$2026-04-14$d$::date, $d$2026-04-14$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$KinderCare Niskayuna$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jessica Ribner, New Director
jessica.ribner@kindercare.com
Mercedes, Asst Director
mercedes.fillmore@kindercare.com
KinderCare Learning Centers
1440 Balltown Road
Niskayuna, NY 12309

Arrive: 7:30am
Start: 8am
110-ish students
Indoor with spring backdrop
Individuals of all students AND new teachers
50% staff discount for their kid's photos$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$55thbrafdvf7g4f4q8ii63csps@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_1c3d021ee5893393$cid$, $src$google_calendar_import$src$, $uid$59aka7ecvv75hqfc3h2m24cuoh@google.com$uid$, $title$Academy Gala 1 Photog$title$, $d$2026-04-11$d$::date, $d$2026-04-11$d$::date, NULL, NULL, $sch$Academy Gala Photog$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$59aka7ecvv75hqfc3h2m24cuoh@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_758f631fb97615e3$cid$, $src$google_calendar_import$src$, $uid$3vjlefvk1v8gll2blamnca1a0v@google.com$uid$, $title$(Mini) Studio Easter Bunny Robert confirmed for bunny$title$, $d$2026-03-29$d$::date, $d$2026-03-29$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3vjlefvk1v8gll2blamnca1a0v@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3fecdbf4899686d8$cid$, $src$google_calendar_import$src$, $uid$64kgvejmprcs7b0q565q989hve@google.com$uid$, $title$Malta Ave Elementary Picture Day (2 teams)$title$, $d$2025-10-08$d$::date, $d$2025-10-08$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Malta Ave Elementary$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jenny Bottisti
(518) 884-7250 ext 1380
JBottisti@bscsd.org
9.22 emailed Jenny to confirm ckg
Set-up: 8am - check in at main office with photo ID upon arrival
Start: 8:30am, starting with faculty/staff. Students start at 9:30am.
Indoor photos - auditorium
Individuals of students and faculty
Composites
Service strips - yes
Yearbook supports - probably
Attendance files - yes$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$64kgvejmprcs7b0q565q989hve@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c553343c8fd62802$cid$, $src$google_calendar_import$src$, $uid$740vk63823df9ol0rs9rmqod8r@google.com$uid$, $title$Sigma Headshot and Awards Party 2 Photog NEED GP PREP$title$, $d$2026-09-15$d$::date, $d$2026-09-15$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Good morning Stephanie,

We confirmed that we will definitely need you on the 15
th
!

A few questions:
Can we send individual links to people for headshots (so it doesn’t get shared with others?)
Can we have you do more group shots after the headshots at the start of the gala?
How long can you stay for the gala taking photos?

Thank you,
image008.jpg
Facebook
image010.png
LinkedIn
image010.png
Instagram
Erica Davison
Corporate Rehabilitation Educator and Reimbursement Specialist
1413 38th Street, Brooklyn, NY 11218
EDavison@sigmahealthrehab.com
 | 
631-335-3913
SigmaHealthRehab.com

image013.png
Hi Stephanie!

Hope you’re doing well. It’s that time again — we’re starting to prepare for our rehab retreat in September. This year we’ll be hosting at Resort World Catskills, and I wasn’t sure if you service that area, so I wanted to reach out.

We’d love to get a quote for headshots again for 
September 15th
 if that’s a region and date you’re able to accommodate.

Let me know — thank you!
image002.jpg
Facebook
image006.png
LinkedIn
image006.png
Instagram
Erica Davison
Corporate Rehabilitation Educator and Reimbursement Specialist
1413 38th Street, Brooklyn, NY 11218
EDavison@sigmahealthrehab.com
 | 
631-335-3913
SigmaHealthRehab.com

image012.png$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$740vk63823df9ol0rs9rmqod8r@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_dbd6fbcb0708df00$cid$, $src$google_calendar_import$src$, $uid$1rf053ig5po3mip7a4mfqro7e3@google.com$uid$, $title$LCS Senior Portraits (2 photogs) 9-3pm$title$, $d$2025-08-20$d$::date, $d$2025-08-20$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$LCS$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$10 Seniors
Indoors in Ministry Center in Tux and Maroon Cap/Gown
Outdoors around campus in casual clothing (good places to photograph: Flower beds outside ministry center, LCS Sign at Entrance, Pavilion, Prayer Bench area in woods, Playground, Soccer fields)
Gym can generally be accessed for photos too
Enter through Church entrance in back of building, Ministry Center has exterior door to bring in equipment

 Bonnie Strock
bstrock@lcs.org
Arrive: 8:30am
Start: 9am
Indoor/Outdoor
$150 price profile$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1rf053ig5po3mip7a4mfqro7e3@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_40a65bf1693f0857$cid$, $src$google_calendar_import$src$, $uid$5sf2t0ug9gq5r44htrpofaplaf@google.com$uid$, $title$HOLD Waterford-Halfmoon Fall Sports (1 team)$title$, $d$2026-09-01$d$::date, $d$2026-09-01$d$::date, $tm$2:00pm$tm$, $arr$1:30pm$arr$, $sch$HOLD Waterford-Halfmoon$sch$, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kyle Williams
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
ONLY V and JV TEAMS. No modified per Kyle.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5sf2t0ug9gq5r44htrpofaplaf@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_25cce125ed7f5b09$cid$, $src$google_calendar_import$src$, $uid$0g6kplhrk3o9rcop7a16hm61rk@google.com$uid$, $title$Gordon Creek Yearbook Clubs (1 photog)$title$, $d$2027-03-23$d$::date, $d$2027-03-23$d$::date, $tm$9:30am$tm$, $arr$9:15am$arr$, $sch$Gordon Creek Yearbook Clubs$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Katie Bennice
Administrative Assistant
Gordon Creek Elementary School
(518) 884-7270 ext.3368
kbennice@bscsd.org
arrive at 9:15am
start at 9:30am
in lobby, no backdrop per Katie
Katie will call groups down to be photographed
7 groups
*Please name the files the GROUP name so the yearbook crew knows what's what. Thank you!
club photos for yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0g6kplhrk3o9rcop7a16hm61rk@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2a5398522945ca82$cid$, $src$google_calendar_import$src$, $uid$203ov0udusbh8bcgsjrmdegjhf@google.com$uid$, $title$September Scheduling Call 3:30pm$title$, $d$2025-08-19$d$::date, $d$2025-08-19$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$meet.google.com/yyd-aknx-zkq
Dial-in: 
(US)
+1 401-589-1690 
PIN: 
256 262 513#$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$203ov0udusbh8bcgsjrmdegjhf@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3ad216fec1d91e84$cid$, $src$google_calendar_import$src$, $uid$24q732gfuvu82b8nv84ret0bva@google.com$uid$, $title$NEW Tech Valley HS Makeup Day for all (1 team)$title$, $d$2026-11-09$d$::date, $d$2026-11-09$d$::date, NULL, NULL, $sch$NEW Tech Valley High School for all$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Lana Hower, yearbook editor
lana.hower@techvalleyhigh.org

Indoor
Individuals of all students and staff
160 students
Need info on service items
Treeing yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$24q732gfuvu82b8nv84ret0bva@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d88c134c06f9a040$cid$, $src$google_calendar_import$src$, $uid$8B1B758F-3353-489A-9D28-E3E04F8EEB4B$uid$, $title$Interview w/ Bri (School Hybrid) 1pm$title$, $d$2025-08-08$d$::date, $d$2025-08-08$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$8B1B758F-3353-489A-9D28-E3E04F8EEB4B$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ac6467fe5f8f6285$cid$, $src$google_calendar_import$src$, $uid$426dl286a586nfha1pq1f6offn@google.com$uid$, $title$Central Park Middle MAKEUPS (1 team)$title$, $d$2025-12-09$d$::date, $d$2025-12-09$d$::date, NULL, NULL, $sch$Central Park Middle$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$*NEW THIS FALL*

Kate Pieronek, NEW asst principal (came from Hamilton Elementary)

pieronekk@schenectadyschools.org

Indoor
580 students grades 6-8
Faculty as well
photos taken during PE classes
Yearbook support$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$426dl286a586nfha1pq1f6offn@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_71a8c9f6a111e08d$cid$, $src$google_calendar_import$src$, $uid$6q2fs64ej897doucefaacgdvrs@google.com$uid$, $title$BKW Winter Sports (2 photogs)$title$, $d$2025-12-11$d$::date, $d$2025-12-11$d$::date, NULL, NULL, $sch$BKW$sch$, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Tom Galvin, Athletic Director
tom.galvin@bkwschools.org
10/24/25 booked ckg
Schedule and rosters will be available after winter sports start in mid-Nov
12/9 recd from Tom:
1:30 PM Mod and Varsity Cheer Team
1:45 PM JV Boys Basketball
2 PM Bowling
2:15 PM JV Girls Basketball
2:30 PM Varsity Girls Basketball
2:45 PM Modified Girls Basketball
3:00 PM Wrestling
3:15 PM Track (let Tom know that this may run into the next slot with a 32 person track team)
3:30 PM Mod Boys Basketball
3:45 PM Varsity Boys Basketball$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6q2fs64ej897doucefaacgdvrs@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_dddbf042b16d2217$cid$, $src$google_calendar_import$src$, $uid$6ialsdkbj8t3j8gbig2rsphaqg@google.com$uid$, $title$Bill Schenck - Lee's Park On Location (Lauren - Surprise Engagement)$title$, $d$2026-05-23$d$::date, $d$2026-05-23$d$::date, NULL, NULL, $sch$Bill Schenck - Lee s Park On Location$sch$, $typ$spring picture day$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, $info$23rd 6:30 PM 
Rain Date: May 30th 
1HR - Lee's Park, Saratoga Springs
--
518 7648435
schenkbill0@gmail.com$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6ialsdkbj8t3j8gbig2rsphaqg@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_04393436e985d3d1$cid$, $src$google_calendar_import$src$, $uid$7t9q1hg49ugq0tlb00p4ku2jgl@google.com$uid$, $title$Duanesburg Graduation$title$, $d$2026-06-26$d$::date, $d$2026-06-26$d$::date, NULL, NULL, $sch$Duanesburg Graduation$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$5/1/26 confirmed by the senior class advisors via Liz ckg; 4/30/26 emailed Liz DeMarco to confirm ckg
Senior Class Advisors to Contact to Confirm Details (and let them know what we'll do for them) ckg
The class advisors are Melissa Gregory (
mgregory@duanesburg.org
), Teresa Crasto (
tcrastodonnelly@duanesburg.
org
) and Laura Hopkins (
lhopkins@duanesburg.org
)
MM added per the school's website$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7t9q1hg49ugq0tlb00p4ku2jgl@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7b8f405904a1230d$cid$, $src$google_calendar_import$src$, $uid$D1F5D002-67EA-4931-925F-8DB0469B1D96$uid$, $title$Last Chapel/Final Assembly STEPH$title$, $d$2025-06-04$d$::date, $d$2025-06-04$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$D1F5D002-67EA-4931-925F-8DB0469B1D96$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_871c6941499813ca$cid$, $src$google_calendar_import$src$, $uid$6oq7d6lp4u7q802suol55hn438@google.com$uid$, $title$TSL UPK Bethlehem (Delmar) (1 photog)$title$, $d$2025-11-18$d$::date, $d$2025-11-18$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Debbie Styles, NEW director
dks1198@yahoo.com

339 Delaware Avenue
Delmar, NY 12054

11/4 emailed Debbie to confirm timing ckg
Arrive: 9am
Start: 9:30am

Indoor with WINTER backdrop 10/29/25 confirmed ckg
36-40 students and faculty (affiliated with the Bethlehem school district!)
collages

no commission$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6oq7d6lp4u7q802suol55hn438@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_1394d5e7b9fe032b$cid$, $src$google_calendar_import$src$, $uid$3htrgiumcmqn2ru1fel2nobh56@google.com$uid$, $title$Infinite Care (1 team)$title$, $d$2025-12-05$d$::date, $d$2025-12-05$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Infinite Care$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Demetris Fullard, Director
infinitecare0043@gmail.com
321 Northern Blvd, Albany, NY 12210
(in a small trailer in the middle school parking lot.)
12/3 Demetris updated times ckg; 12/1 confirmed times ckg
Setup: 8:30am
Start: 9am
Indoor school blue backdropped images of ALL students and faculty on blue
14 students, infants & toddlers
**TAKE MORE THAN ONE SHOT FOR TEACHERS PLEASE! thank you. :)
Collages
IDs for faculty$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3htrgiumcmqn2ru1fel2nobh56@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_fa596af3fac93a8e$cid$, $src$google_calendar_import$src$, $uid$55nbmk4kiq0uu1m8s9pis78gb7@google.com$uid$, $title$AW Becker 5th Grade Group (Lauren)$title$, $d$2026-05-12$d$::date, $d$2026-05-12$d$::date, $tm$10:00am$tm$, $arr$9:30am$arr$, $sch$AW Becker 5th Grade Group$sch$, $typ$graduation/pano$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, $info$Morgan Zinzow, school admin
mzinzow@rcscsd.org
(518) 7565200 ext 5002 
*NEED SUPER QUICK TURNAROUND FOR 5/14 yearbook deadline!*

Arrive: 9:30am check in at main office
Start: 10am

Group 5th grade photo with teachers outdoors, use rain date or if bad weather schedule a new date. OUTDOOR ON PLAYGROUND
free 8x24 pano print for all 5th graders and their teachers, and a free framed print for school$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$55nbmk4kiq0uu1m8s9pis78gb7@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_6320b9b8d230fff2$cid$, $src$google_calendar_import$src$, $uid$03f1v4v64n4qlc2oplrmvf63m0@google.com$uid$, $title$HOLD Waterford-Halfmoon Elem MAKEUP DAY$title$, $d$2026-10-16$d$::date, $d$2026-10-16$d$::date, NULL, $arr$8:30$arr$, $sch$HOLD Waterford-Halfmoon Elementary School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jessica Rice, PTO President
waterfordhalfmoonpto@gmail.com
Multipurpose room
*Tentative - need to confirm
8:00 am - set up
8:30   K
8:45  1-2
9:00  3-4
9:30  5-6
9:45  latecomers
Staff can come anytime$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$03f1v4v64n4qlc2oplrmvf63m0@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_06277d98d8d11e6c$cid$, $src$google_calendar_import$src$, $uid$5li2d4qfg85bhc16ovmu8kas95@google.com$uid$, $title$Keane Elementary Picture Day (1 team)$title$, $d$2025-10-29$d$::date, $d$2025-10-29$d$::date, $tm$8:15am$tm$, $arr$7:30am$arr$, $sch$Keane Elementary$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Karen Williams, main office
williamsk@schenectadyschools.org
Ailene Cavaliere, Vice Principal
cavalierea@schenectadyschools.org
Setup: 7:30am
Start: 8:15am 
approx 300 students
Indoor in GYM
Individuals of students and faculty
Collages
District needs attendance files
2025 pic day note per Molly : non classroom staff came during classes today and was challenging with timing - I talked to Nicole about photographing staff before we start students in the future and she said that would work for 7:45am-8am!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5li2d4qfg85bhc16ovmu8kas95@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_6402b91c390327e6$cid$, $src$google_calendar_import$src$, $uid$1k53n4li9s2mclkr31v48502o4@google.com$uid$, $title$Academy (US Campus) Senior Photos (2 photogs)$title$, $d$2025-08-25$d$::date, $d$2025-08-29$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$Academy Senior$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Rebecca Trainor
TrainorR@albanyacademy.org
Arrive: 7:30am to start at 8am
Upper School campus (old AA) Indoor/Outdoor in CHAPEL$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1k53n4li9s2mclkr31v48502o4@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_aac751074e7419e1$cid$, $src$google_calendar_import$src$, $uid$4c25uhpel75t9oa8o0cu1n6src@google.com$uid$, $title$MLK Jr. Elementary (NEW) (2 teams)$title$, $d$2025-12-03$d$::date, $d$2025-12-03$d$::date, NULL, $arr$6:45am$arr$, $sch$MLK Jr. Elementary NEW$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jasmine Santiago, MLK secretary/PTO president
santiagoj@schenectadyschools.org
518-881-3680
10/10 booked; 10/6/25 ckg offered dates
Schenectady School District
11/20 emailed again about timing and schedule and Jasmine gave me what's below. She is workin gon the schedule; ; 11/18/25 emailed Jasmine to get timing and explain process. VERY NEEDY and a bit uncooperative with the transition. Wants printed flyers, Steph declined as we're not expecting great sales to cover expenses here. ckg
Setup: 6:45am (asked about a customidan letting us in)
Start: Staff at 7:15am, Students about 8am
Indoor
individuals of students and all staff (360 students PK-5, SPED)
collages
commission
service strips
no yearbook
Schedule link: 
https://docs.google.com/
spreadsheets/d/
1H1FYa7K3wGoZJ5H3gsMLT-
Mjy2N0Y8ayG6P5AsFTtdQ/edit?
usp=sharing
JASMINE SANTIAGO
12/1/25
1:40 PM (11 minutes ago)
to me, Molly, Beth
Good afternoon.
I am terribly sorry I did not see the previous email. The best place to park would be on Stanley street, which is where our main entrance is located. We will be utilizing the stage for picture day. I will be at the building by 630am on Wednesday. We will have a table and a couple of chairs available for use as well as an extension for power. We are still working on the schedule. I will email a copy once it is complete. We also have 2 parent volunteers that will be there to assist with the students. 
JASMINE SANTIAGO
11/20/25 9:33 AM (10 minutes ago)
to me
6:45am is good. Our custodian will be here to let you in and show you where the setup will be. I will be in by 7am as well and can touch base with whomever for the day. We have 2 parent volunteers to assist with the students as well.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4c25uhpel75t9oa8o0cu1n6src@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2f546a4814cfac72$cid$, $src$google_calendar_import$src$, $uid$28t0pn9n5sp5d9isaj2ifjdvkc@google.com$uid$, $title$NEW Hillside Elementary (Nisky) (2 teams)$title$, $d$2026-09-30$d$::date, $d$2026-09-30$d$::date, NULL, NULL, $sch$NEW Hillside Elementary Nisky$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Tracy Oakland
Parent Coordinator
tracyaoakland@gmail.com
school phone: 518-377-1856

Indoor
400 students grades K-5
Collages
all service items
Offer Treering!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$28t0pn9n5sp5d9isaj2ifjdvkc@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e612446fc43181b9$cid$, $src$google_calendar_import$src$, $uid$6n9o64707gq21uc6ic6do5guct@google.com$uid$, $title$Mackenzie Diamond Senior Pics (Steph) PM$title$, $d$2025-09-16$d$::date, $d$2025-09-16$d$::date, NULL, NULL, $sch$Mackenzie Diamond Senior PM$sch$, $typ$senior portraits$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6n9o64707gq21uc6ic6do5guct@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_0e3545abbaa6e5a9$cid$, $src$google_calendar_import$src$, $uid$1t5ndvtlqnopacnd0rrpuajjfi@google.com$uid$, $title$Pleasant Valley Elem (2 teams)$title$, $d$2025-10-02$d$::date, $d$2025-10-02$d$::date, $tm$8:15am$tm$, $arr$7:45am$arr$, $sch$Pleasant Valley Elementary School$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$ANISA RAMDASS, School Secretary
ramdassa@schenectadyschools.org

Arrive: 7:45am (park in the back parking lot)
Start:  8:15am

2 teams
Indoor in MUSIC ROOM
350 students PK-5 (21 classes)
School sets schedule
Collages
Indoor
All service items
Yearbook - Treering!$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1t5ndvtlqnopacnd0rrpuajjfi@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ae96a247e0051520$cid$, $src$google_calendar_import$src$, $uid$AFDD1979-C0C6-427B-B363-5D400418927F$uid$, $title$Photo Booth Saint Madeleine’s$title$, $d$2026-03-21$d$::date, $d$2026-03-21$d$::date, NULL, NULL, NULL, $typ$photo booth$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Yay!!!! You are the best!!! 
Saturday, March 21 doors open at 5:30pm and it starts at 6:00pm
in the St. Madeleine Sophie School Parish Center.

This is just a photo booth drop and pickup.  Can be done anytime on Saturday and does not need to be picked up the same night, we can grab it Sunday or Monday.   Also no candid photography at the gala.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$AFDD1979-C0C6-427B-B363-5D400418927F$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_194384d0d67d0e86$cid$, $src$google_calendar_import$src$, $uid$11B70526-EEEB-46B5-95C3-A37B71C4EBE5$uid$, $title$Steph out of town$title$, $d$2026-11-15$d$::date, $d$2026-11-21$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$11B70526-EEEB-46B5-95C3-A37B71C4EBE5$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_82c92b24330733cf$cid$, $src$google_calendar_import$src$, $uid$1lc01qs3htm3729umvjucj7hri@google.com$uid$, $title$Eagle Point 5th Grade Grad Photos (1 team)$title$, $d$2026-03-12$d$::date, $d$2026-03-12$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$Eagle Point 5th Grade$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Chris Wood, main office admin
cwood@albany.k12.ny.us
Emily King, PTA contact
eaglepointpta@gmail.com
5th grade spring photos
grad photos in cap & gown (PTA has these)
Carrie requested PTA helpers for the cap & gowns - Emily will provide 2-3 like last year as she felt it went well and kept things moving.
Arrive: 7:30am
Start: 8am$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1lc01qs3htm3729umvjucj7hri@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_49ef672e7fd2990a$cid$, $src$google_calendar_import$src$, $uid$0uaqef5rumddq98alqmlfu5afn@google.com$uid$, $title$Shatekon PANO RAIN DATE (1 photog)$title$, $d$2026-04-27$d$::date, $d$2026-04-27$d$::date, NULL, NULL, $sch$Shatekon$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Rain date for PANO only per school$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0uaqef5rumddq98alqmlfu5afn@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3b72a94a3a79e9bf$cid$, $src$google_calendar_import$src$, $uid$6ojhqbm68ggv52gmn9t0ra67vl@google.com$uid$, $title$Wonderland Co-op Nursery RAIN DATES (REQ Lauren)$title$, $d$2025-10-08$d$::date, $d$2025-10-09$d$::date, NULL, NULL, $sch$Wonderland Co-op Nursery RAIN DATES$sch$, $typ$review$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, $info$See 10/1-2 for details

They need two dates for rain dates as different students attend on different days.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6ojhqbm68ggv52gmn9t0ra67vl@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_6a5cb9ba121c2b1f$cid$, $src$google_calendar_import$src$, $uid$7a9m52v4460tiespjkh3ub3hr0@google.com$uid$, $title$HOLD Albany Academy Makeup Day (1 photog)$title$, $d$2026-10-14$d$::date, $d$2026-10-14$d$::date, NULL, NULL, $sch$HOLD Albany Academy$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Rebecca Trainor
TrainorR@albanyacademy.org
HOW IT WORKED FOR 25-26...
8:00 set up at 140 Academy
8:30am-10:30am take makeups & retakes. Is it possible to break this time into 15 minute increments by grade so our photographer (Molly) knows who to expect?
11:00am set up at 135 Academy
11:30am-2:30pm take makeups & retakes - same as above - break this into 15 minutes grade increments? Just so it's not a free-for-all.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7a9m52v4460tiespjkh3ub3hr0@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_368a057192ccc4aa$cid$, $src$google_calendar_import$src$, $uid$7mumpj0ga9ur94olin650rm45o@google.com$uid$, $title$GotPhoto Debrief 1;00$title$, $d$2025-06-12$d$::date, $d$2025-06-12$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$meet.google.com/fij-kuwz-vaj$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7mumpj0ga9ur94olin650rm45o@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4c0f24dd620d8d2d$cid$, $src$google_calendar_import$src$, $uid$2ilpmv83s36tthl5ja5jssmpea@google.com$uid$, $title$Rivers Finest Gala 2 Photogs$title$, $d$2026-03-04$d$::date, $d$2026-03-04$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$2/10/26 no prep per Steph ckg
Contact Sean Wyse at Rivers
Requested gray backdrop 
Also, we would love to have iSmile provide photos at our annual Rivers Finest Gala again. The date is March 4, 2026. Let me know if this works for your schedule.
Thanks, Stephanie!
Sean-- 
Sean Wyse 
| Engagement Manager
Rivers Casino & Resort
1 Rush Street Schenectady, NY 12305
518-579-8503 (w)
838-202-7467 (c)
swyse@rushst.com$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2ilpmv83s36tthl5ja5jssmpea@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_311a90f14debd87b$cid$, $src$google_calendar_import$src$, $uid$4ao2j3cngfgnti2aonhokc6v29@google.com$uid$, $title$LCS Grad Rehearsal Morning (Matt)$title$, $d$2027-06-11$d$::date, $d$2027-06-11$d$::date, $tm$3:00$tm$, NULL, $sch$LCS Grad Rehearsal$sch$, $typ$graduation/pano$typ$, ARRAY[$a$Matt$a$]::text[], ARRAY[]::text[], false, $info$Amy Thiel
Librarian/Lower School Tech Teacher/Graduation Coordinator
Loudonville Christian School
374 Loudon Rd. 
Loudonville, NY 12211
518.434.6051 x335
lcs.org
9:30am start
3/25/26 booked with Bonnie ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4ao2j3cngfgnti2aonhokc6v29@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_85350245eae3c9c9$cid$, $src$google_calendar_import$src$, $uid$77h7dqpr596js9f9thbd2b0na7@google.com$uid$, $title$Blessed Sacrament Makeups (1 photog)$title$, $d$2025-11-17$d$::date, $d$2025-11-17$d$::date, NULL, $arr$10:00$arr$, $sch$Blessed Sacrament$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mike O'Kane, Principal (NEW)
principal@blessedsacramentschool.net
p: 
(518) 438-5854
11/6/25 proposed this schedule:
9:30 set up
10:00 PreK, K and 1st
10:15 2nd, 3rd and 4th
10:30 5th and 6th
11:00 latecomers and staff
11:15 breakdown our equipment$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$77h7dqpr596js9f9thbd2b0na7@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ae97ab633757153b$cid$, $src$google_calendar_import$src$, $uid$3f4pietfjmhfq42qvsobpungo7@google.com$uid$, $title$Hudson Valley Consortium Day 2 (1 team)$title$, $d$2025-10-02$d$::date, $d$2025-10-02$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$Hudson Valley Consortium Day$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Teresa Rieder - LOCAL PHOTOGRAPHER! Has a lot of her own ideas!
hvcteresarieder@gmail.com
9/24 Emily confirmed timing with Teresa
Arrive: 7:30am
Start: 8:00am to 12pm
Indoor
Home school basis with 216 students, grades Infants -12
Did not photograph senior for 24-25
Meets on Tuesdays and Thursdays 
We'll be there both day as all students do not attend both days
Individuals of students only, no faculty
NO Class Pictures
Yearbook support - PSPA to Teresa$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3f4pietfjmhfq42qvsobpungo7@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c9cef57b26bcdfb9$cid$, $src$google_calendar_import$src$, $uid$1hi6tj3ms1siidrdc8ekrc32ic@google.com$uid$, $title$Milton Terrace Spring Photos + 5th Grade Pano (2 teams)$title$, $d$2027-05-06$d$::date, $d$2027-05-06$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, $sch$Milton Terrace Spring$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Sarah Kinney, school admin asst
skinney@bscsd.org

Setup: 9am
Start: 9:30am

QUICK TURNAROUND FOR YEARBOOK

Outdoor, PUSH INDOORS TO STAGE IF BAD WEATHER, pano will be moved to rain date
450 students
5th grade group photo OUTDOOR ONLY$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1hi6tj3ms1siidrdc8ekrc32ic@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_58a2d8cda742a073$cid$, $src$google_calendar_import$src$, $uid$96DEEF32-94EC-4AFC-9513-ED33D2C57DDF$uid$, $title$Kara - Ava senior girl  lasalle STEPH$title$, $d$2025-08-27$d$::date, $d$2025-08-27$d$::date, NULL, NULL, $sch$Kara - Ava senior girl lasalle$sch$, $typ$senior portraits$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$96DEEF32-94EC-4AFC-9513-ED33D2C57DDF$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_22fe923d19fed394$cid$, $src$google_calendar_import$src$, $uid$0orb3a2be5qo1ntp3c2qundnmd@google.com$uid$, $title$Eagle Point 5th Grade Group Photo (1 photog)$title$, $d$2026-05-11$d$::date, $d$2026-05-11$d$::date, NULL, NULL, $sch$Eagle Point 5th Grade Group Photo$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Chris Wood, main office admin
cwood@albany.k12.ny.us
Emily King, PTA contact
eaglepointpta@gmail.com
4/27/26 emailed Chris, Mr. Fox and cc Matt to confirm ckg
9am START
- outdoor group photo
Stand on school balcony looking down on students posed on front lawn.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0orb3a2be5qo1ntp3c2qundnmd@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_8574aad1a16a3ff9$cid$, $src$google_calendar_import$src$, $uid$09ek74v14h6d8f5otp7ut9t9p2@google.com$uid$, $title$Okte Spring Pics & 5th grade pano (2 teams)$title$, $d$2026-04-23$d$::date, $d$2026-04-23$d$::date, $tm$9:15am$tm$, $arr$8:45am$arr$, $sch$Okte &$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Colleen Awa
colleen.awa@gmail.com
4/10/26 emailed Colleen to confirm cc Beth and Molly ckg
Arrival: 8:45am
Start: 9:15am
OUTDOOR photos - will not push in for bad weather, rain date scheduled for all
Individual photos of students
5th grade group pano$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$09ek74v14h6d8f5otp7ut9t9p2@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4ddf705303697c24$cid$, $src$google_calendar_import$src$, $uid$5qg702nal65lta3iefufmr0c0m@google.com$uid$, $title$Heatly Field Day (1 photog)$title$, $d$2026-06-16$d$::date, $d$2026-06-16$d$::date, $tm$10:00am$tm$, $arr$9:30am$arr$, $sch$Heatly Field Day$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jodi Fowler, field day coordinator
jfowler@greenisland.org
Jodi Mazzeo, yearbook editor (new pic day contact as of S26)
jmazzeo@greenisland.org
Stephanie Bouchey, principal
sbouchey@greenisland.org
NOTES BELOW! 5/20/26 emailed Jodi F, Stephanie B cc EL, MM ckg
Arrive:  9:30am
Start:  10am until noon
2nd free event for school
Event goes most of the day so school said they see when we were available and pick a window of time for us to be there.
Jodi Fowler
12:20 PM (6 minutes ago)
to Stephanie, me
Thank you so much, Steph!
Carrie, thank you very much for this information, and Erin, thank you for coming to our Field Day! The sessions this year will run as follows:
*pre-kindergarten through second grade (primary): 9:15-10:45 outside stations as well as two stations in gymnasium
*third through fifth grade (intermediate): 11:15-12:45 outside stations as well as two stations in gymnasium
We have 6/17 as our rain date. Is there a chance that you can make that this late in planning? 
I will be watching the weather with fingers and toes crossed!
Thank you again, everyone.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5qg702nal65lta3iefufmr0c0m@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_258d5cec4517459e$cid$, $src$google_calendar_import$src$, $uid$5me343va4tte1r6l2bgcpadvhe@google.com$uid$, $title$Schenectady JCC Spring Photos 2 days (1 team)$title$, $d$2026-02-25$d$::date, $d$2026-02-26$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Schenectady JCC Spring days$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Remy Cohen, director (new)
518-377-8803
remyc@schenectadyjcc.org
Sarah Mandel. asst director (PICTURE DAY CONTACT)
sarahm@schenectadyjcc.org
1/15/26 emailed Sarah and Remy to confirm times, get rosters & schedule and confirm backdrop. Told them we need 20 min increments.  ckg
Arrive: 8am
Start: 8:30am
Indoor, backdropped photos on BLUE with floor drop b/c infants (no cuts)
Students and faculty
Collages
Sibling photos
est 140 students
We pay them commission$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5me343va4tte1r6l2bgcpadvhe@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_04ccfccd8b5e092e$cid$, $src$google_calendar_import$src$, $uid$2msmf0a8hqpbrnvccsdjomb1hg@google.com$uid$, $title$Rosendale Elementary MAKEUP DAY NEW 2025$title$, $d$2025-10-15$d$::date, $d$2025-10-15$d$::date, $tm$8:15am$tm$, $arr$7:45am$arr$, $sch$Rosendale Elementary NEW$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Ashley Feldman 
ashleyfeldman929@gmail.com
10/7/25 confirmed with Ashley ckg
Arrive: 7:45am
Start: 8:15am per below
Ashley Feldman
Tue, Oct 7, 4:49 PM (15 hours ago)
to me

For retakes can we start around 8:15AM?  And we usually have less than 2 dozen retakes so we call down all K-2 retakes and then all 3-5 retakes and are in and out pretty quickly.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2msmf0a8hqpbrnvccsdjomb1hg@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_90cfa696ce963f7c$cid$, $src$google_calendar_import$src$, $uid$1clpfg4lgdg6m2knl49nv48op2@google.com$uid$, $title$Studio Staff Quarterly Meeting$title$, $d$2026-12-07$d$::date, $d$2026-12-07$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1clpfg4lgdg6m2knl49nv48op2@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_512ab92cb90d315f$cid$, $src$google_calendar_import$src$, $uid$6qm4k3ebasspfe6pdksgac736r@google.com$uid$, $title$HOLD Northville SENIORS (2 photogs)$title$, $d$2026-08-25$d$::date, $d$2026-08-26$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$HOLD Northville$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Sue Schmitt, yearbook advisor
sschmitt@northvillecsd.org
Arrive: 8:30am
Start: 9:00am
Indoor in library, outdoors around campus
We photograph the seniors in street clothes (generally something dressy) and then in suit/tie (we provide) or drape (we provide) and cap and gown (we provide).  We shoot both indoors (formal) and outdoors (casual) and our outdoor portraits incorporate different spots around school to give it a school spirit feel.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6qm4k3ebasspfe6pdksgac736r@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d974ed9aca7c3daa$cid$, $src$google_calendar_import$src$, $uid$3ngbq1s4orev74n0tk0t24sevk@google.com$uid$, $title$Chango 5th grade photo (10;15a 1 photog)$title$, $d$2026-05-08$d$::date, $d$2026-05-08$d$::date, NULL, NULL, $sch$Chango 5th grade photo$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Cindy Barbagelata, 5th grade teacher/advisor
barbcynt@shenschools.org

5/1/26 confirmed ckg; 4/27/26 emailed Cindy and Emily (PTO) cc Molly to confirm ckg
10:15am start
Outdoors, move indoors for bad weather
8x24 pano size confirmed by Cindy ckg

$6 per pano charged to the PTO. Include a framed pano for their office at no charge per SM ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3ngbq1s4orev74n0tk0t24sevk@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2ad9bc040ee52005$cid$, $src$google_calendar_import$src$, $uid$23e9jorb0c3b0fmh6j44q2b76j@google.com$uid$, $title$New Dreams Nursery 2 Mornings (1 photog)$title$, $d$2026-04-21$d$::date, $d$2026-04-22$d$::date, $tm$9:30am$tm$, $arr$9:15am$arr$, $sch$New Dreams Nursery Mornings$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Robin Cobb, Director
rmdc315@nycap.rr.com
Both days: arrive at 9:15am, to start at 9:30am
Outdoor
PUSH UNDER THE PORCH to the left of the parking lot if rainy weather.
Individuals of all students and teachers
School loves portrait images, but do some of each (Superhero pose is a fave)
Class COLLAGES (need quick turnaround)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$23e9jorb0c3b0fmh6j44q2b76j@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b6eafc1b1b082255$cid$, $src$google_calendar_import$src$, $uid$35gqat76sd7maiser2g9dprad0@google.com$uid$, $title$Myers MS Makeup Day (1 team)$title$, $d$2025-11-20$d$::date, $d$2025-11-20$d$::date, NULL, NULL, $sch$Myers Middle School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$William Rivers, Principal
Donna Lounello, Principal's SST
Myers Middle School
dlounello@albany.k12.ny.us
518-475-6425 phone
518 475-6427 fax
11/13/25 Donna suggested this schedule based on lunch times:
8:20 set up in the lobby
9:10 start with grade 7
9:30 grade 8
10:00 grade 6
10:00 latecomers and staff (although staff can pop by anytime we're there)
10:30am pack up :)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$35gqat76sd7maiser2g9dprad0@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d89ff710857ce253$cid$, $src$google_calendar_import$src$, $uid$42oo4am9ofjg3n6a66u8fpiuj4@google.com$uid$, $title$Jaguars Volleyball Club (Molly, Andrew +1 for team photos)$title$, $d$2025-12-07$d$::date, $d$2025-12-07$d$::date, $tm$12:30pm$tm$, $arr$12:00pm$arr$, $sch$Jaguars Volleyball Club$sch$, $typ$sports$typ$, ARRAY[$a$Molly$a$, $a$Andrew$a$]::text[], ARRAY[]::text[], false, $info$Danielle Hunt
jagsvbc@gmail.com
12/1 confirmed and sent schedule; 11/17/25 emailed to confirm ckg
Albany Leadership Charter School for Girls gym
Arrive: 12PM
Start: 12:30PM (Schedule BELOW and in binder)
Indoor in Gym where they practice - paying FLAT FEE for all digital files. Upload to both GotPhoto AND Smugmug, including pngs. Share digital files via Smugmug link. 
GP galleries DO NOT SELL. Coaches can download their images at no charge. See GP job here for set-up: 
https://app.gotphoto.com/config_jobs_photos/index/578381318
Look at 24-25 images: 
https://ismile.smugmug.com/2024-Purchased-Digitals/Jaguar-Volleyball-Club-December-2024/n-JbPZww
And from 23-24: 
https://ismile.smugmug.com/2024-Purchased-Digitals/Jaguar-Volleyball-Club-January-2024/n-NB3VKP
Jaguars Volleyball Club
6:32 PM (29 minutes ago)
to Molly, me, Matthew, Andrew
Sure,
Does this work?  Yes at Albany Leadership Charter School for Girls again.
12:00 - 12:30 set up
12:30 - 12:50 - 16 Purple
12:50 - 1:10 - 16 Black
1:10 - 1:30 - 12u
1:30 - 1:50 - 11u
1:50 - Coaches Pictures
1:50 - 2:10 - 14u
2:10 - 2:30 - 15u
2:30 - 2:50 - 13u
2:50 - 3:10 - 17u
3:10 - 3:30 - 18u
3:30 - 17u/18u Senior Photo
Info from club director:
I am hoping to give each team a time interval to be there so it is not too crowded and parking spaces are limited.  Do 20 minutes intervals work for 10-14 players per team? 
With the photos of the girls I was hoping to create images such as these below for social media posts. Can we have some pictures taken in front of a blank backdrop so I can change the background and also some at the net like the samples you sent?
I am hoping for each player to have at least:
1. Photo with no ball - arms crossed or on hips (white background so I can change the back)
2. Photo holding ball around stomach, on hip, on shoulder, tossing the ball, holding the ball out, holding ball on hip and pointing straight out (white background so I can change the back)
3. Photo with the ball at the net like the samples you sent.
4 "Action" photo with their particular skill. Setter will set the ball, defense will pass the ball, and hitters can toss the ball like they are serving. This can be at the net.
5. Team photo$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$42oo4am9ofjg3n6a66u8fpiuj4@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_96787ed60bb352ed$cid$, $src$google_calendar_import$src$, $uid$132b01otshhlncure900rantpq@google.com$uid$, $title$NO STEPH$title$, $d$2025-11-06$d$::date, $d$2025-11-06$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$132b01otshhlncure900rantpq@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_75b2638cf67ac321$cid$, $src$google_calendar_import$src$, $uid$52ie7e4g5i9mqgvp9peafc6vmg@google.com$uid$, $title$SCAP Early Learning x2 (2 teams, 2 locations)$title$, $d$2026-03-26$d$::date, $d$2026-03-26$d$::date, NULL, $arr$8:30am$arr$, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Erin Baker
ebaker@scapny.org
518.377.8539
3 centers in total, shooting 2 today
Bellevue
: 
approx 64 children ages 3-4 yrs in 4 classrooms
Opens at 8am, arrive at 8:30am, start photos at 9am
2000 Broadway
Schenectady, NY 12306
Contact there: Kathleen Pincher <
kpincher@scapny.org
>
Northside
: 
approx 32 children ages 3-4 yrs in 2 classrooms
Opens at 8am, arrive at 8:30am, start photos at 9am
They have lunch at noon. School closed at 3pm
2450 Van Vranken Avenue
Schenectady, NY 12308
Contact there: Athena Hernandez <
AHernandez@scapny.org
>
Indoor with spring background
Photograph all children and faculty
Collage class photos$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$52ie7e4g5i9mqgvp9peafc6vmg@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_cac863765be2d5f5$cid$, $src$google_calendar_import$src$, $uid$ADE9A764-EFD9-40BB-A5E9-8B708A4C3606$uid$, $title$Brad Rose Landscaping branding and headshots$title$, $d$2026-04-09$d$::date, $d$2026-04-09$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$9:00 am headshots$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$ADE9A764-EFD9-40BB-A5E9-8B708A4C3606$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_9bc4c5c729bc7d4f$cid$, $src$google_calendar_import$src$, $uid$6osmc1qr7d3sqou2c7g09f6vnn@google.com$uid$, $title$Pieter B Coeymans Spring Pic Day (2 teams+1)$title$, $d$2026-05-05$d$::date, $d$2026-05-05$d$::date, $tm$9:15am$tm$, $arr$8:45am$arr$, $sch$Pieter B Coeymans Spring Pic Day$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Alex Hilker, teacher, picture day contact, yrbk editor
ahilker@rcscsd.org
additional contacts
Hakim Jones, Principal
hjones@rcscsd.org
Sandra Krein, Bldg Secretary
skrein@rcscsd.org
4/20/26 emailed Alex and Sandra cc Andrew & Erin to confirm ckg
setup: 8:45am 
start: 9:15am
Outdoor, move indoors for individuals if bad weather, pano will push to rain date
Individuals of all students
5th grade group photo (not on playground - see note below schedule)
In 2024 we swapped BACKGROUNDS ON TO BLUE FOR NEW STUDENTS
NOTE ON PANO PRINTS: (1 free to all students and a framed one for school as we are photographing entire school)
Received 4/24/25 from Alex: PICTURE DAY  - Spring 2025 (Thursday, May 1st)
TEACHER
CAMERA 1
TEACHER
CAMERA 2
Kratochwill
9:15-9:35
Mackey
9:15-9:35
Villa
9:35-9:55
Jones
9:35-9:55
King
9:55-10:15
Wright
9:55-10:15
Biel (K)
10:15-10:35
Engel
10:15-10:35
Travis
10:35-10:55
Roger
10:35-10:55
Boehm
10:55-11:15
Lambert
10:55-11:15
Wood
11:15-11:35
O’Keefe
11:15-11:35
Chromczak
11:35-11:55
Biel (4th)
11:35-11:55
Bridegroom
11:55-12:15
Zeininger
11:55-12:15
Sollien
12:15-12:35
Maroney
12:15-12:35
Blair
12:35-12:55
Crown
12:35-12:55
Koblenzer
12:55-1:15
Stott
12:55-1:15
Emerick
1:15-1:35
Grogan
1:15-1:35
5th Grade Pano 1:45$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6osmc1qr7d3sqou2c7g09f6vnn@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_62b6d7f19e0ab128$cid$, $src$google_calendar_import$src$, $uid$4547tl42p1o34sqc20r11i6d5e@google.com$uid$, $title$Erin Lefebvre interview 2;00$title$, $d$2026-01-27$d$::date, $d$2026-01-27$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$meet.google.com/iqi-mgjs-nty$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4547tl42p1o34sqc20r11i6d5e@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_4f2cccefa4156290$cid$, $src$google_calendar_import$src$, $uid$6pv8ceg8k5p182j3l1v2m56ed2@google.com$uid$, $title$(Quick) Easter Bunny Quicks (Steph) Robert is EB$title$, $d$2026-04-03$d$::date, $d$2026-04-03$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6pv8ceg8k5p182j3l1v2m56ed2@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c4e4fe1f5521bc63$cid$, $src$google_calendar_import$src$, $uid$1qmdvmpi7ojd3085p4eb0d1p60@google.com$uid$, $title$Wood Road Elem Fall Photos (2 teams)$title$, $d$2026-10-06$d$::date, $d$2026-10-06$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Wood Road Elementary School Fall$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$WILL BE NEW (MaryBeth retired)
Administrative Aide
Wood Road Elementary School
518-884-7290 x3411
cell: (518-545-0593) call to be let into the bldg
Setup: 8:00am
Start: 8:30am faculty, 9:15am start students
Indoor
600 students, 200 staff
Collages
ALL service items
Yearbook (Treering)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1qmdvmpi7ojd3085p4eb0d1p60@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b575b5bacde5e4b5$cid$, $src$google_calendar_import$src$, $uid$5veteatc20o3q50f6se6bo3pgn@google.com$uid$, $title$Our Savior's Makeup Day (1 team)$title$, $d$2025-11-06$d$::date, $d$2025-11-06$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, $sch$Our Savior s$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$11/3/25 Update:
8:30am Arrival
9am start
All retakes from 9-10 

Sarah Alfons, main office (new contact)
salfons@oursaviors.com
Arrive: 9am
Start: 9:30am
10/27/25 proposed this schedule:
9:30 set up
10:00 AM K
10:15 PreK classes
10:30 grades 1-2
10:45 grades 3-4
11:00 grades 5-6
11:15 grades 7-8
11:30 latecomers
Indoor
Grades PK-8
Individuals of all students and faculty/staff
All service items
Collages$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5veteatc20o3q50f6se6bo3pgn@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_915d8a7115592c49$cid$, $src$google_calendar_import$src$, $uid$AB84430F-A5FB-4BA6-AFEB-2E6F661ABE2E$uid$, $title$April Scheduling Call 2:30pm$title$, $d$2026-03-09$d$::date, $d$2026-03-09$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$meet.google.com/fnb-eaks-ppk$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$AB84430F-A5FB-4BA6-AFEB-2E6F661ABE2E$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_5a17fceb7b472aea$cid$, $src$google_calendar_import$src$, $uid$55rtsmtpcik77iu3cpbbbsmgr1@google.com$uid$, $title$Green Tech Makeups (1 team)$title$, $d$2025-10-17$d$::date, $d$2025-10-17$d$::date, $tm$11:00am$tm$, $arr$10:30am$arr$, $sch$Green Tech$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Cedria Hood
chood@greentechhigh.org
Main Phone : (518) 396-5107
Setup: 10:30am
Start: 11:00am during lunch (HS Lunch 12-1, MS Lunch 1-2)
Indoor (in cafeteria)
Individuals of all students grades 6-12 (12 for ID cards)
Individuals of all faculty / staff
ID cards for all
See schedule for timing - Cedira will send over when ready
Yearbook and attendance files
Doing senior portraits in spring 2026$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$55rtsmtpcik77iu3cpbbbsmgr1@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_fa28904acd89f5af$cid$, $src$google_calendar_import$src$, $uid$141bm5hfi26e0a7jvkscsr2n2k@google.com$uid$, $title$Cairo-Durham Elementary Gr 3-5 (1 team)$title$, $d$2025-09-16$d$::date, $d$2025-09-16$d$::date, NULL, NULL, $sch$Cairo-Durham Elementary Gr$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Joanne Cleary, main office admin
jcleary@cairodurham.org
NEED A PHOTO ID WHEN ARRIVING TO SCHOOL
DAY 2
Group faculty photo at 8:40am in large gym
Start students at 9:30am in small gym
Individuals of all students and faculty/staff
INDOOR in small gym, check in with Joanne at the main office
Class COLLAGES with PRINCIPAL, ASST PRINCIPAL, TEACHER(S) & TA(S)
Sticker strips
Attendance files (SchoolTool)
Yearbook support
NO ID cards for Elementary School
Joanne Cleary
8:05 AM (1 hour ago)
to Molly, margaretmwalsh1996, me, Matthew
Good morning Molly,
Unfortunately, we are going through an unexpected construction project and we are limited in space. Pictures will be in our small gym and we will be combining our Gym classes those days. Having said that, there are after school programs as well as night use of the gym. So sorry, I know it's not ideal. I will remind the teachers how to line up their students for you and will share the schedule as soon as I finish it. Tal soon$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$141bm5hfi26e0a7jvkscsr2n2k@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_1c188cf27bd7d883$cid$, $src$google_calendar_import$src$, $uid$79DFD7C0-15FA-4327-B202-1ECD9E4C643D$uid$, $title$Senior Tea$title$, $d$2025-06-06$d$::date, $d$2025-06-06$d$::date, NULL, NULL, $sch$Senior Tea$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$79DFD7C0-15FA-4327-B202-1ECD9E4C643D$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f61f7b940def81e8$cid$, $src$google_calendar_import$src$, $uid$6c3jqvh843pngsvtbgkgau208d@google.com$uid$, $title$Siena Headshots 12;30-2;30 SSU$title$, $d$2027-02-10$d$::date, $d$2027-02-10$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6c3jqvh843pngsvtbgkgau208d@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_833f833896d4813f$cid$, $src$google_calendar_import$src$, $uid$5mdd19bfb6sssjsiqh0oiq654t@google.com$uid$, $title$Studio Staff Quarterly Meeting 8-9 AM$title$, $d$2026-03-17$d$::date, $d$2026-03-17$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Ask those attending to bring a topic of discussion they want to talk about. (Free for all) - LR

Discuss Latest Easter Mini - LR

Sale & Photo Room Training (Maybe) - LR$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5mdd19bfb6sssjsiqh0oiq654t@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_dd1ffd7f6d7f1e84$cid$, $src$google_calendar_import$src$, $uid$05p2ppks5c2qa5v34rggbk22qn@google.com$uid$, $title$Alb School of Humanities Picture Day (2 teams)$title$, $d$2025-10-17$d$::date, $d$2025-10-17$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Susannah (Sheehan) Doyle, Vice Principal 
sdoyle@albany.k12.ny.us
108 Whitehall Road
Albany, NY 12209
*off street parking only per Susannah Doyle Fall 2025*
Setup: 8:00am in the performance center, start at 8:30am. Check in at main office with photo ID!
Indoor of students and faculty for collages
Service Strips, PSPA and attendance files
Collages
NO IDs$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$05p2ppks5c2qa5v34rggbk22qn@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_fdbded31f6f4539d$cid$, $src$google_calendar_import$src$, $uid$59khhq686it17kvashkv7vifum@google.com$uid$, $title$Albany JCC (1 team)$title$, $d$2026-11-12$d$::date, $d$2026-11-13$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Albany JCC$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Nikki Mann, Early Childhood Program Coordinator
nikkim@albanyjcc.org
Sidney Albert Albany Jewish Community Center
340 Whitehall Rd
Albany, NY  12208
E.C Main Line 518-689-0039
Phone 518-438-6651 x118
Arrive: 8:30am
Start: 9am, need to end between 12-12:30 each day
About 160 students, infants to preschool age
Indoor on school blue background (Nikki is okay with the blue background even if babies cannot be cut out for background changes)
photos of all students and faculty
***GROUP class pics on a large backdrop$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$59khhq686it17kvashkv7vifum@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d94522d8332b28c6$cid$, $src$google_calendar_import$src$, $uid$36uvbeaelscontd7d0j3cqieus@google.com$uid$, $title$Duanesburg AYSO Soccer Rain Date (2 teams)$title$, $d$2025-08-07$d$::date, $d$2025-08-07$d$::date, NULL, $arr$5:30pm$arr$, $sch$Duanesburg AYSO Soccer$sch$, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Gus Geidel
518-339-6451 

hgeidel@gmail.com

Begin at 6pm - 8pm
Set-up at 5:30pm
Outdoor
Upper Field, and Lower Field @ Duanesburg High School fields on Alexander Road (across the street from Lady of Fatima Church at 1735 Alexander Rd, Delanson, NY 12053)

16 teams (estimated) and the Playground Group Team of about 24 players
Group team pictures$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$36uvbeaelscontd7d0j3cqieus@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_864e8637a0eda477$cid$, $src$google_calendar_import$src$, $uid$5at0g6cucfcq3hmled6opncdl9@google.com$uid$, $title$Rivers Casino Employee Party$title$, $d$2025-12-10$d$::date, $d$2025-12-10$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Contact Sean Wyse - paying us to be there!  Follow up with time, probably 6-10 pm$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5at0g6cucfcq3hmled6opncdl9@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_71d12f371e05b03c$cid$, $src$google_calendar_import$src$, $uid$1kpce6j23pkuf2utmh3qjh94oa@google.com$uid$, $title$Skano 5th grade group pic (1 photog)$title$, $d$2027-03-12$d$::date, $d$2027-03-12$d$::date, NULL, $arr$7:30a$arr$, $sch$Skano 5th grade group pic$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Erin Kisling, Admin
kislerin@shenschools.org
Arrive: 7:30a
Picture at 8:15am (kids have a program starting at 9am)
INDOOR on risers in cafeteria
INDOOR
5th graders on risers in cafeteria
NEED TURNED AROUND FAST FOR YEARBOOK - deadline is end of April.
PANO DETAILS $15 + tax for parents to purchase - school wants batch shipping thru GP, with a direct ship option for parents.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1kpce6j23pkuf2utmh3qjh94oa@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_384f03ab7c251369$cid$, $src$google_calendar_import$src$, $uid$1e5ohkeug5vc853qp8dpvkbdd5@google.com$uid$, $title$Big Bang: Building Our Future at miSci 6-9 pm 1 photog and photo booth$title$, $d$2026-05-07$d$::date, $d$2026-05-07$d$::date, NULL, $arr$5:00$arr$, NULL, $typ$photo booth$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$LAUREN - photo booth and candid photography
15 Museum Drive Schenectady
Arrive 5:00 to set up booth
THANK YOUUUU
Hi Mia!
How did I miss your previous email???  Thank you for following up and not giving up on me!
We can cover your event at a reduced rate of $500 … that would include three hours of coverage (6-9 pm, including candids, posed candids, and detail shots with attention to branding and usefulness for marketing) - all the full size digital files, edited, with an unlimited commercial copyright release.  We can also bring our photo booth for the entire event at no charge (it can email, text, or airdrop photos right after they are taken).
If this is a good fit budget-wise, let’s hop on a call to confirm everything!!  I’ve added your email as a “VIP” to ensure I do not miss any more messages from you 🤦‍♀️
Thank you so so much!
:)
StephOn Jan 5, 2026, at 9:25 AM, Mia Sherlock <
mia.sherlock@misci.org
> wrote:
Hi Stephanie,
My name is Mia; I’m spearheading this year’s Big Bang: Building Our Future at miSci, Museum of Innovation and Science on Thursday, May 7th from 6-9PM. Elizabeth Guerin is on our planning committee and gave me your information! 
I’d love to setup a time to chat further over the phone. Please let me know if you’re available! 
I look forward to hearing from you.
Happy New Year,
Mia Sherlock$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1e5ohkeug5vc853qp8dpvkbdd5@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_298f99c4b193eb7e$cid$, $src$google_calendar_import$src$, $uid$8467A12A-BC0F-4834-98AE-3976AE032E93$uid$, $title$Student government photos 8;15 AA Steph$title$, $d$2025-06-04$d$::date, $d$2025-06-04$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$8467A12A-BC0F-4834-98AE-3976AE032E93$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3f7ccebc4a39123c$cid$, $src$google_calendar_import$src$, $uid$4g4c1cfub3897gugbtjufsl8dt@google.com$uid$, $title$Shatekon Makeups (1 team)$title$, $d$2026-11-17$d$::date, $d$2026-11-17$d$::date, $tm$10:00am$tm$, $arr$9:30am$arr$, $sch$Shatekon$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Melissa O'Hara, main office admin
oharmeli@shenschools.org
set up: 9:30am
start: 10am
Indoor in CONFERENCE RM
Individuals of all students and faculty
Collages$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4g4c1cfub3897gugbtjufsl8dt@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_750ec53bca9981c2$cid$, $src$google_calendar_import$src$, $uid$4vak25p2bcp16hmi7m1jd86334@google.com$uid$, $title$HOLD Chango 5th grade photo (10;15a 1 photog)$title$, $d$2027-05-05$d$::date, $d$2027-05-05$d$::date, NULL, NULL, $sch$HOLD Chango 5th grade photo$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Cindy Barbagelata, 5th grade teacher/advisor
barbcynt@shenschools.org

10:15am start
Outdoors, rain date for bad weather
8x24 pano size confirmed by Cindy ckg

$6 per pano charged to the PTO. Include a framed pano for their office at no charge per SM ckg Send invoice to Cindy.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4vak25p2bcp16hmi7m1jd86334@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7d08b8dca2c56ba0$cid$, $src$google_calendar_import$src$, $uid$0u4mt1avmskv96fh3uis1397b9@google.com$uid$, $title$Waterford-Halfmoon RAIN PANO ONLY (1 photog)$title$, $d$2026-05-04$d$::date, $d$2026-05-04$d$::date, NULL, NULL, $sch$Waterford-Halfmoon RAIN ONLY$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$3/11/26 spring pics moved this date due to NYS testing on orig date. Rain date for pano will be decided ONLY IF it's needed. ckg
Jessica Rice, new PTA President
waterfordhalfmoonpto@gmail.com
Check in main office upon arrival with photo ID
NEED TIME FOR PANO!
6th grade group photo (on playground per Annemarie Stripe, 6th grade teacher)
Quick turnaround if possible -  needs to be added in yearbook.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0u4mt1avmskv96fh3uis1397b9@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_043a0840ed3ccb56$cid$, $src$google_calendar_import$src$, $uid$3re4d9bpph6leu1gf343mdupba@google.com$uid$, $title$HOLD Northville Picture Day (2 teams)$title$, $d$2026-09-23$d$::date, $d$2026-09-23$d$::date, $tm$8:15am$tm$, $arr$7:45am$arr$, $sch$HOLD Northville$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Tammy Reidell, Principal
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
GROUP class photos outdoors on steps$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3re4d9bpph6leu1gf343mdupba@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e4dddc0ed79fd780$cid$, $src$google_calendar_import$src$, $uid$0tpsc60o80pthuni7prtr33uac@google.com$uid$, $title$Saratoga Girls Varsity Basketball Media STEPH AM$title$, $d$2025-11-22$d$::date, $d$2025-11-22$d$::date, NULL, NULL, NULL, $typ$sports$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, $info$Contact Kathleen via Steph text thread

10 am$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0tpsc60o80pthuni7prtr33uac@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_8e3e1a705e02011f$cid$, $src$google_calendar_import$src$, $uid$0clpjbt071ir1obftc2jab5tfk@google.com$uid$, $title$Little Scholars Duanesburg Rd Spring & Grads (1 team)$title$, $d$2025-06-12$d$::date, $d$2025-06-12$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Little Scholars Duanesburg Rd Spring & Grads$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Nellie
Nelliedlslc@gmail.com

Rebecca Paludi: littlescholarslc10@gmail.com

6/12/25 per Molly, another new director:
"Before I forget - Nelly is the new director here at dburg road, Ariel is the temp director at viaport, and Emma is no longer employed. Not sure who Rebecca is, she’s not here, but Nelly said Andrew should email Rebecca to confirm next week! "

5/19/25 new date booked with Emma J. ckg
5/16/25 moving to June

5/20 all confirmed with Emma; 5/16 called; 5/14 emailed; 5/12 called; 5/5/25 emailed Ashley to confirm ckg
Arrive: 8:30am
Start: 9am

Duanesburg Road:
361 Duanesburg Road
Rotterdam NY 12306

Indoor with spring backdrop AND Grad photos - they have caps & gowns
Small, ~30 students 
Photos of all students and NEW faculty
no service items
no commission (under 100 students)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0clpjbt071ir1obftc2jab5tfk@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_79875438fe1adb1a$cid$, $src$google_calendar_import$src$, $uid$5dn6k63f0ci4ltlq6u3can4if8@google.com$uid$, $title$Orenda Elem Rain & Makeup Day (2 teams potentially)$title$, $d$2025-10-24$d$::date, $d$2025-10-24$d$::date, NULL, $arr$8:45am$arr$, $sch$Orenda Elementary School Rain &$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Becky Striker. PTA contact
rstrikes102@gmail.com
PTA email: orenda.pta.copresidents@gmail.com
Krissie Yacano, attend clerk (school contact for pic days)
yacakris@shenschools.org
8:15 set up
8:45 AM K
9:15 1st
9:30 3rd
10:00 4th
10:15 2nd
10:30 5th
10:45 latecomers and staff
11:15  PM K
** AFTERNOON PK DOESN'T ARRIVE UNTIL 11:45AM (MS 10/24/25)$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5dn6k63f0ci4ltlq6u3can4if8@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_02387b3ca26d7818$cid$, $src$google_calendar_import$src$, $uid$51m87b08en5lhdtum0ku17g7a4@google.com$uid$, $title$Milton and Lauren Monthly Meeting$title$, $d$2026-11-02$d$::date, $d$2026-11-02$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$51m87b08en5lhdtum0ku17g7a4@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c7e0430dbb6e4740$cid$, $src$google_calendar_import$src$, $uid$5hj4v9tdfsrtmorvto6s62hbnr@google.com$uid$, $title$Karigon 5th Grade Picnic (1 studio photog 11;45a)$title$, $d$2026-05-21$d$::date, $d$2026-05-21$d$::date, NULL, $arr$11:45am$arr$, $sch$Karigon 5th Grade Picnic$sch$, $typ$photo booth$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Nupoor Gordon, main office admin
gordnupo@shenschools.org
Sharon DeChiro
dechshar@shenschools.org
Steph okayed this being a free event - no charge for digitals. 
School to set up a backdrop and provide props, we are the live "photo booth" photographer.
Arrive: 11:45am stay about 1 hour
Location: Karigon playground
DeChiro, Sharon
10:07 AM (0 minutes ago)
to Beth, me
Perfect! We are looking forward to it too! You will need to check in to the main office before you go back to set up. My cell # is 518-312-3369$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5hj4v9tdfsrtmorvto6s62hbnr@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_030cbf5b5f372f53$cid$, $src$google_calendar_import$src$, $uid$2i8ljavb8g8atl93t273ilsnaf@google.com$uid$, $title$HOLD Craig Elementary 4th & 5th Grade Panos (1 photog)$title$, $d$2027-05-17$d$::date, $d$2027-05-17$d$::date, $tm$10:00am$tm$, $arr$9:45am$arr$, $sch$HOLD Craig Elementary 4th & 5th Grade Panos$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Shawna, PTO (main contact)
craigniskypto@gmail.com

Amy Wickham awickham23@gmail.com
Erin Perry ebeland20@gmail.com

Arrive:  9:45am
Start:  10am (start of their recess)

BOTH 4th and 5th grade need panos this year as district is moving 4th graders up to middle school too. ckg

Upload to GP to sell (like we do for Skano, same price list too) ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2i8ljavb8g8atl93t273ilsnaf@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_012f84d691ee15c8$cid$, $src$google_calendar_import$src$, $uid$6l5amj7rm2o64otmgprbtjogbo@google.com$uid$, $title$HOLD Chango Makeup Day (1 Team)$title$, $d$2026-11-04$d$::date, $d$2026-11-04$d$::date, $tm$11:00am$tm$, $arr$10:30am$arr$, $sch$HOLD Chango$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Emily Carter
mily.carter4191@gmail.com
Sandy Hess, main office
hesssand@shenschools.org
FOR 2026, TRY FOR EARLIER TIME, NO K PM TO WORRY ABOUT ckg
Arrive: 10:30am
Start 11am, end at 1pm$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6l5amj7rm2o64otmgprbtjogbo@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f2f4658985c73973$cid$, $src$google_calendar_import$src$, $uid$1b3205jc6ocbtp9df6r6j5dbjr@google.com$uid$, $title$Colonie Youth Ctr UPK (1 Photog)$title$, $d$2025-12-01$d$::date, $d$2025-12-01$d$::date, $tm$9:30am$tm$, $arr$9:00am$arr$, $sch$Colonie Youth Ctr UPK$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kaia Haskell
khaskell@colonieyouthcenter.
org
11/7/25 all confirmed with Kaia ckg
Arrive: 9am
Start: 9:30am
Indoor, blue background
18 Students, 1 Location (15 Avis Drive) Group class photo

Colonie UPK who we've photographed the past couple years, wants us again. Just one location. 18 students. I've booked them for December 1st!
Thanks!
MM
iSmile Studios School Team
84 Everett Road
Albany, NY 12205
www.ismilestudios.com
518-435-1146
Love your photos? Think our customer service was great?

Please give us a great Google Review!
---------- Forwarded message ---------
From: 
Kaia Haskell

<
khaskell@colonieyouthcenter.org
>
Date: Fri, Oct 10, 2025 at 12:37 PM
Subject: Re: School Pictures for CYC UPK
To: iSmile Studios Schools & Sports Team <
schoolpics@ismilestudios.com
>
Hello! 
Monday, December 1
st
 would be great. Thank you so much!
Best, 
Kaia Haskell 
UPK Teacher
CYC-North Colonie CSD
From:
iSmile Studios Schools & Sports Team <
schoolpics@ismilestudios.com
>
Sent:
Thursday, October 9, 2025 3:14 PM
To:
Kaia Haskell <
khaskell@colonieyouthcenter.
org
>
Subject:
Re: School Pictures for CYC UPK

Hi Kaia,
Sounds good! :) Would you be able to do Monday December 1st or Friday December 5th?
Best,
Matt
iSmile Studios School Team
84 Everett Road
Albany, NY 12205
www.ismilestudios.com
518-435-1146
Love your photos? Think our customer service was great?

Please give us a great Google Review!
On Thu, Oct 9, 2025 at 12:49 PM Kaia Haskell <
khaskell@colonieyouthcenter.
org
> wrote:
Hello! 
Thank you so much! That is totally fine. What days do you have available? Currently, Colonie Youth Center is only operating one location at 15 Avis Drive in Latham. We currently have 18 children. Thank you so much and I look forward to hearing from you!
Best, 
Kaia Haskell 
UPK Teacher
CYC-North Colonie CSD
From:
iSmile Studios Schools & Sports Team <
schoolpics@ismilestudios.com
>
Sent:
Wednesday, October 8, 2025 1:50 PM
To:
Kaia Haskell <
khaskell@colonieyouthcenter.
org
>
Subject:
Re: School Pictures for CYC UPK

Hi Kaia,
Thanks for reaching out. I think we should be able to get you in this Season again. How many students do you have, and are there 2 locations that need to be photographed?
We would be booking into December at the moment.
Best,
Matt
iSmile Studios School Team
84 Everett Road
Albany, NY 12205
www.ismilestudios.com
518-435-1146
Love your photos? Think our customer service was great?

Please give us a great Google Review!
On Wed, Oct 8, 2025 at 12:59 PM Kaia Haskell <
khaskell@colonieyouthcenter.
org
> wrote:
Hello! 
My name is a Kaia Haskell and I am the new teacher for Colonie Youth Center UPK with North Colonie School District. I just received your contact information and was wondering if you had any availability to take our photos. I was a Teacher's Assistant last year and absolutely loved our photos! I apologize for reaching out so late into the year as I just received your information.  I am completely flexible with availability. Thank you and I look forward to hearing from you! 
Best, 
Kaia Haskell
UPK Teacher 
CYC-North Colonie CSD$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1b3205jc6ocbtp9df6r6j5dbjr@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d30ab2031859b4de$cid$, $src$google_calendar_import$src$, $uid$4ikat3gbitinmmrta8bv13q7k2@google.com$uid$, $title$Heatly 8th Grade Grad Photos (1 photog + Asst)$title$, $d$2026-02-05$d$::date, $d$2026-02-05$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Heatly 8th Grade$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Stephanie Bouchey, principal
sbouchey@greenisland.org

1/12/26 yes to grad folders, forest-ish green gowns (not kelly green),  
1/8/26 emailed Stephanie about grad folders, timing, and location in school. ckg
6/20/25 scheduled, will let us know about folders ckg; 
6/18/25 reached out asking to schedule 8th-grade grad photos. Carrie offered grad folders at $4 each (because we photograph their students in both fall and spring). Shipping is included when ordered in a batch.

1/12/26 Stephanie B confirmed timing ckg
Arrive: 8:30am
Start: 9am

Indoor in gym (1/2)
Need a photog and assistant due to age of kids and cap/gown changes
About 22 - 8th graders
Cap & Gown are GREEN 1/19 sent photo to Matt with specific shade ckg
Photos in both regular clothing AND cap/gown$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4ikat3gbitinmmrta8bv13q7k2@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f29a70816fa6524e$cid$, $src$google_calendar_import$src$, $uid$41ishq7a53a4hl55mqu2a9tqpl@google.com$uid$, $title$Hamilton Elem Makeups (1 team)$title$, $d$2025-12-01$d$::date, $d$2025-12-01$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$Hamilton Elementary School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mrs. Jen Fox, new asst principal
foxj@schenectadyschools.org

Arrive: 8am
Start: 8:30am with grades every 20 minutes

Indoor
440 students
Individuals of all students and faculty
All the things - collages, yearbook, attendance files, service strips
Entourage yearbook

11/18/25 emailed Jen this schedule ckg:8:00 set up
8:30 K
8:50 1st
9:10 2nd
9:30 3rd
9:50 4th
10:10 5th
10:30 latecomers, staff, then breakdown equipment$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$41ishq7a53a4hl55mqu2a9tqpl@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_58c30093b5ef7e4a$cid$, $src$google_calendar_import$src$, $uid$7ocb7cp810k9jt608hm0v1t53i@google.com$uid$, $title$Academy Athletic Hall of Fame 6;00$title$, $d$2026-05-14$d$::date, $d$2026-05-14$d$::date, NULL, NULL, $sch$Academy Athletic Hall of Fame$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7ocb7cp810k9jt608hm0v1t53i@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_5e8453632df1009b$cid$, $src$google_calendar_import$src$, $uid$0f9j02cf2gs9n10nfie2gsolon@google.com$uid$, $title$Milton and Lauren Monthly Meeting$title$, $d$2026-03-02$d$::date, $d$2026-03-02$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0f9j02cf2gs9n10nfie2gsolon@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f5b9d2cd71e9ff40$cid$, $src$google_calendar_import$src$, $uid$2cq1d7i5hq81n5etobrltnqq6n@google.com$uid$, $title$Marketing Meeting Lawton Social (MT, LR, MM, SM?) 10am$title$, $d$2026-02-17$d$::date, $d$2026-02-17$d$::date, NULL, NULL, NULL, $typ$internal/non-shoot review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$meet.google.com/xou-tnok-eop$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2cq1d7i5hq81n5etobrltnqq6n@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_bf2fc216e3c1d940$cid$, $src$google_calendar_import$src$, $uid$7rqoh09bndimmj0lgushe0rd0r@google.com$uid$, $title$Hoosic MS/HS Makeups (1 team)$title$, $d$2026-10-15$d$::date, $d$2026-10-15$d$::date, NULL, $arr$9:00am$arr$, $sch$Hoosic Middle School/High School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Rochelle Dinallo, new yearbook editor
rdinallo@hoosicvalley.org
Amy Vautrin, main office admin
avautrin@hoosicvalley.org
8:30am arrrive to setup
9am-10am: Underclass Retakes
10am-1pm: Senior Retakes (as scheduled by Rochelle in 10-minute increments)
Individuals of all students and faculty
SENIORS - retakes and scheduled seniors now just being photographed. Rochelle to schedule them.
IDs for all, yearbook in late fall$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7rqoh09bndimmj0lgushe0rd0r@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b2822a848b8d284d$cid$, $src$google_calendar_import$src$, $uid$2q12qsh9hjluffmuv4c8qeitka@google.com$uid$, $title$Cairo-Durhams Seniors LAST CHANCE (1 team)$title$, $d$2026-01-13$d$::date, $d$2026-01-13$d$::date, $tm$11:00am$tm$, $arr$10:30am$arr$, $sch$Cairo-Durhams LAST CHANCE$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$9/25/25 - Dylan Bennett's Mom has reached out to us and he needs to get his photos taken on this day -MM 

Alyssa Bratton, HS Admin
abratton@cairodurham.org
Drew McCabe, yearbook editor
iSmile or school chedules these for the remianing seniors
Shortened senior sessions in formal wear and cap/gown. No outdoor, no extras. 10 minutes.
Arrive: 10:30am
Start  11am
End: 2pm for seniors$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2q12qsh9hjluffmuv4c8qeitka@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_d778b2f00e853930$cid$, $src$google_calendar_import$src$, $uid$47hu6g5hrkm595ga06abv9i9sl@google.com$uid$, $title$HOLD Northville Makeup Day (1 team)$title$, $d$2026-10-27$d$::date, $d$2026-10-27$d$::date, $tm$11:30am$tm$, $arr$11:00am$arr$, $sch$HOLD Northville$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Sue Schmitt, yearbook editor
sschmitt@northvillecsd.org

Arrive: 11:00am
Start: 11:30am makeups, then 12:15pm with the Senior, then makeups again at 12:30 until they end. Told school you have to be gone by 3-3:15pm, no later (had already stated that in an earlier email). ckg

Indoor - regular school photo makeups$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$47hu6g5hrkm595ga06abv9i9sl@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b8683cbd108d2071$cid$, $src$google_calendar_import$src$, $uid$0f6cer1tvmnii0tojmqsv30foc@google.com$uid$, $title$Tricia NBT Rain Date STEPH$title$, $d$2025-07-18$d$::date, $d$2025-07-18$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0f6cer1tvmnii0tojmqsv30foc@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b532401cfb77e31b$cid$, $src$google_calendar_import$src$, $uid$3m0dk2rr32n77e3sim1sp1hhiv@google.com$uid$, $title$Mother Teresa Academy RAIN GROUPS (1 team)$title$, $d$2026-04-01$d$::date, $d$2026-04-01$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Mother Teresa Academy RAIN GROUPS$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Holli Riviezzo 
mshollimta@gmail.com
msholli@motherteresaacademy.org

518-280-4227
Mother Teresa Academy
1 Executive Park Drive
Clifton Park, NY 12065
Arrival: 8:30am
Photo Start Time: 9am
OUTDOOR
GROUP PICS ONLY
every class and a big group of entire school (make sure background is clean - no cars, etc.)
Smug link for all group pics to be provided to Holli
Print group class pics as usual, and one framed (white) of the all-school.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3m0dk2rr32n77e3sim1sp1hhiv@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_eb6ef6adb6c17aad$cid$, $src$google_calendar_import$src$, $uid$6oveo8jqi72nkhvkth6nct7ubg@google.com$uid$, $title$NEW Widdle One’s Childcare & Grads (1 team)$title$, $d$2026-05-05$d$::date, $d$2026-05-05$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$NEW Widdle s Childcare & Grads$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kristyn Molis
Assistant Director
Widdle One’s Childcare Center
(518) 355-1334
Kristyn@widdleoneschildcare.org

first spring with us

4/21 timing confirmed and added grads ckg; 4/15/26 emailed Kristyn cc Molly to confirm ckg
Arrive: 7:30am
Start: 8:00am

Outdoor if possible, move inside for bad weather
50-60 daycare aged kids
GRAD PHOTOS - they have caps & gowns
New staff need photos
Guilderland school district$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6oveo8jqi72nkhvkth6nct7ubg@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_cdda2614cd86cdad$cid$, $src$google_calendar_import$src$, $uid$1tvik2qgk44o8n0e1rat9iava5@google.com$uid$, $title$NEW Little Journeys Daycare (1 team)$title$, $d$2025-12-01$d$::date, $d$2025-12-01$d$::date, $tm$8:30am$tm$, $arr$8:00am$arr$, $sch$NEW Little Journeys Daycare$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Ashley Stewart (formerly with Little Scholars)
(518) 218-6660 
stewart.ashley28@gmail.com

11/21 confirmed; 11/18/25 emailed to get timing and confirm background ckg
Arrive: 8am
Start: 8:30am

Indoor, winter theme background confirmed
30 kids, infants to preschool ages
students and staff pics$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1tvik2qgk44o8n0e1rat9iava5@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_1b2d0a443012fb13$cid$, $src$google_calendar_import$src$, $uid$7hku6tcnqfp3hvea2q7tsh33t3@google.com$uid$, $title$SUMC Preschool (1 team)$title$, $d$2026-09-28$d$::date, $d$2026-09-29$d$::date, NULL, NULL, $sch$SUMC Preschool$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Julie A. Bardin
Preschool Director
SUMC Preschool
preschooldirector@shenumc.org
518.383.2605

9/29/25 per Molly super slow paced, no asst needed going forward? ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7hku6tcnqfp3hvea2q7tsh33t3@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_77a67f80cda30873$cid$, $src$google_calendar_import$src$, $uid$4dd533efhnot8o7ao4ajeae4sa@google.com$uid$, $title$New Lebanon Jr/Sr High Makeups (1 team)$title$, $d$2025-11-21$d$::date, $d$2025-11-21$d$::date, NULL, NULL, $sch$New Lebanon Jr/Sr High$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Koni Kraft, main office admin
kkraft@newlebanoncsd.org

Michelle Bienes, yearbook editor 
michellebienes@newlebanoncsd.org$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4dd533efhnot8o7ao4ajeae4sa@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_436b4959f3812c85$cid$, $src$google_calendar_import$src$, $uid$6gup95u358bqgtbhqa0n816p8a@google.com$uid$, $title$Academy Theater Camp AM (ANDREW)$title$, $d$2025-07-22$d$::date, $d$2025-07-22$d$::date, $tm$9:15am$tm$, $arr$9:00am$arr$, $sch$Academy Theater Camp AM$sch$, $typ$review$typ$, ARRAY[$a$Andrew$a$]::text[], ARRAY[]::text[], false, $info$Jason Ford
FordJ@albanyacademies.org

Outdoor
VERTICAL
Session 2 headshots
upload to GP job already created. Name album by date
Please refer to GP job to see how first session's images were done
https://app.gotphoto.com/config_jobs_photos/index/1588891378

ALSO - digital images need to be turned around FAST and shared with Jason so he can print in show's playbill. 

PRINTS - WORK WITH MILTON ON THESE - print 1 8x10 and 1 5x7 of each cast member's headshot and a 5x7 group cast photo for everyone and 2 each cast group photo at 8x10. SCHOOL NEEDS THEM ASAP FOR THE SHOW. This show is Friday, August 1.

Arrive: 9am
Start: 9:15am

Morning
Lower School Campus auditorium (old AAG side) 140 Academy Rd$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6gup95u358bqgtbhqa0n816p8a@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_63e0494615825c64$cid$, $src$google_calendar_import$src$, $uid$1aam0ar7tiejs39e1kreig09t9@google.com$uid$, $title$Academy Secret Senior Makeup Day$title$, $d$2025-09-06$d$::date, $d$2025-09-06$d$::date, NULL, NULL, $sch$Academy Secret Senior$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1aam0ar7tiejs39e1kreig09t9@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3a7737f549d56544$cid$, $src$google_calendar_import$src$, $uid$30b88hbrgc4smmmr440i377d93@google.com$uid$, $title$Cairo-Durham SENIORS (2 photogs)$title$, $d$2025-09-03$d$::date, $d$2025-09-05$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$Cairo-Durham$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$SEPTEMBER 2025: Now seniors are photographed on a GRAY background -MM 

Alyssa Bratton
abratton@cairodurham.org

Arrive: 7:30am
Start 8am
End: 4pm

Portraits every 15 minutes
Indoors in the Media Center, with only a few outdoors

about 80 seniors$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$30b88hbrgc4smmmr440i377d93@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_07051c5660f6d7c2$cid$, $src$google_calendar_import$src$, $uid$2jrdfmui23bfplfntj73k92v1u@google.com$uid$, $title$Shatekon Elem Spring Pic Day (2 teams plus one extra photog)$title$, $d$2027-04-23$d$::date, $d$2027-04-23$d$::date, $tm$8:15am$tm$, $arr$7:45am$arr$, $sch$Shatekon Elementary School Spring Pic Day$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Melissa O'Hara, principal's aide
oharmeli@shenschools.org
Setup: 7:45am
Start: 8:15am
Outdoor, 5th grade group class photo on same day. 3/28/25 steph approved adding one teacher to pano)
PUSH INSIDE IF BAD WEATHER - RAIN DATE IS ONLY FOR PANO!
Individuals of all students and new staff
PANO is 8x24, one for each 5th grader and teacher AND 1 framed for school. Free because we are photographing their entire school this spring.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2jrdfmui23bfplfntj73k92v1u@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_b186649a1bccc571$cid$, $src$google_calendar_import$src$, $uid$6mnpsu7lqb9r7ch50koo2328g4@google.com$uid$, $title$Walter B Howard 6th Grade Full Body Shots (1 photog)$title$, $d$2026-03-05$d$::date, $d$2026-03-05$d$::date, $tm$9:25am$tm$, $arr$8:55am$arr$, $sch$Walter B Howard 6th Grade Full Body Shots$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Beth LaGrange, PTO and Main Office
blagrange@newlebanoncsd.org
USE QRS TO PHOTOGRAPH STUDENTS BUT DO NOT HAND OUT! BRING THEM ALL BACK TO THE STUDIO.
Setup: 8:55am - in school lobby
Start: 9:25am or so
# of 6th graders: about 35 over 2 classes
Indoor full body poses of each 6th grader for the yearbook (and for sale on GP). Provide cut-outs to the yearbook (with no background) to highlight students moving to middle school. NEED SUPER QUICK TURNAROUND FOR YEARBOOK.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6mnpsu7lqb9r7ch50koo2328g4@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_01fd7491f8aadbbe$cid$, $src$google_calendar_import$src$, $uid$893B8ABC-558C-4294-9C81-6048E9A4652E$uid$, $title$Steph out (parent weekend)$title$, $d$2026-10-09$d$::date, $d$2026-10-12$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$893B8ABC-558C-4294-9C81-6048E9A4652E$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_e964f6d0defd1b05$cid$, $src$google_calendar_import$src$, $uid$6go9lsvd9j2ajk87nc4fqk6eb6@google.com$uid$, $title$Little Achiever's Preschool (1 team)$title$, $d$2026-05-04$d$::date, $d$2026-05-05$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Little Achiever s Preschool$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$MAIN CONTACT:
Alexandria Tanski
ATanski@littleachievers.education
Roxeanne Lansing, Director
RLansing@littleachievers.education
https://littleachievers.education
Has MWF and TTh classes therefore we are there two days
4/27 CONFIRMED ckg; 4/20/26 emailed to confirm cc Beth ckg
Arrive: 8:30am
Start: 9:00am
OUTDOOR, push in for rain
Pics of all students (approx 100 children, Infants, 
toddlers, and preschoolers)
Photographed in the fall, so no teacher's pics needed nor class collages.
No commission$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6go9lsvd9j2ajk87nc4fqk6eb6@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_eca2a11a0e40a9c7$cid$, $src$google_calendar_import$src$, $uid$1vfe3ts3r4ij93np4ahpkvv0ro@google.com$uid$, $title$Tesago Elementary (2 teams)$title$, $d$2026-09-28$d$::date, $d$2026-09-28$d$::date, $tm$8:00am$tm$, $arr$7:30am$arr$, $sch$Tesago Elementary$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$FALL PHOTOS:
Caroline Moore camoore004@gmail.com
Tesago PTA: 
tesagopta@gmail.com
**different people handle fall (PTA) and spring (main office) pics**
Setup: 7:30am
Start: 8am; faculty first, then students begin at 9am, schedule in binder - classes are sorted per the schedule.
INDOOR in lobby
Individuals of all students and faculty/staff
All service items
Yearbook support 
Attendance files
Collages$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1vfe3ts3r4ij93np4ahpkvv0ro@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_61eed6c69f38134d$cid$, $src$google_calendar_import$src$, $uid$297543bdjo99r4ahcap98m3nu4@google.com$uid$, $title$Duanesburg SENIORS (1 team)$title$, $d$2026-09-19$d$::date, $d$2026-09-20$d$::date, NULL, NULL, $sch$Duanesburg$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Liz DeMarco
edemarco@duanesburg.org

4/21/26 BOOKED AND REQUESTED WEEKEND DAYS. ckg$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$297543bdjo99r4ahcap98m3nu4@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_29b4520768370abc$cid$, $src$google_calendar_import$src$, $uid$5drj47jm7f9ikli05teliisqtp@google.com$uid$, $title$Waterford-Halfmoon MS/HS & Senior Afterschool (1 team)$title$, $d$2025-09-22$d$::date, $d$2025-09-23$d$::date, NULL, $arr$7:00am$arr$, $sch$Waterford-Halfmoon Middle School/High School & Senior Afterschool$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kayla Ramundo
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
Senior Portrait Makeups - 2:30-4pm each day - opened up bookings in Acuity for these ckg
no group pics or collages
ID cards for students (none for faculty)
Yearbook PSPA$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5drj47jm7f9ikli05teliisqtp@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_0e4f2e18bf0532f0$cid$, $src$google_calendar_import$src$, $uid$2805o7fes0a5q045f3hjj8kvqc@google.com$uid$, $title$Holden Rivera Senior Portraits 9; STEPH$title$, $d$2025-09-13$d$::date, $d$2025-09-13$d$::date, NULL, NULL, $sch$Holden Rivera$sch$, $typ$senior portraits$typ$, ARRAY[$a$Steph$a$]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2805o7fes0a5q045f3hjj8kvqc@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2555e938db452fb4$cid$, $src$google_calendar_import$src$, $uid$1vnnbb1juhpdmfp725llca7trf@google.com$uid$, $title$CX Maple Leaf MALTA NORTH Spring & Grads (2 teams)$title$, $d$2026-04-27$d$::date, $d$2026-04-27$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Maple Leaf MALTA NORTH Spring & Grads$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$4/20/26 Ashlyn CX with no explanation ckg
Katie Dobbs, Executive Director
Ashlyn Krzyzak, Center Director
Maple Leaf Childcare -Malta North
2737 Rt 9 Malta, NY 12020
rt9malta@mapleleafchildcare.com
(518) 889-5045
4/7/26 emailed Ashlyn cc Beth & Andrew to confirm ckg
setup at 8:30am
start at 9am
Outdoor (push indoor with spring backdrop if it rains)
13 classes - 3 infants, 4 toddlers, 4 preschool, 2 prek
150 students
Grad photos using our cobalt blue kid caps/gowns.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1vnnbb1juhpdmfp725llca7trf@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ee2b5dabd5f3148e$cid$, $src$google_calendar_import$src$, $uid$5f7ieqa3n3nr7jbteqsl5rqgdd@google.com$uid$, $title$Karigon Elementary School (2 teams)$title$, $d$2025-09-25$d$::date, $d$2025-09-25$d$::date, $tm$8:20am$tm$, $arr$7:40am$arr$, $sch$Karigon Elementary School$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Nupoor Gordon (NEW picture day contact)
gordnupo@shenschools.org
Set-up at 7:40am; start at 8:20am, school days ends at 2pm.
Indoor - both teams in the gym.
All students and faculty
All service items
Full yearbook support (Treering)
Collages
Directories (student & Principal)
Planners$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5f7ieqa3n3nr7jbteqsl5rqgdd@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_3d4ab7163177f5d1$cid$, $src$google_calendar_import$src$, $uid$6F87D8A1-C3D1-420F-A6DD-D4E3CC3129C4$uid$, $title$Robert Senior Photos RAIN$title$, $d$2026-04-08$d$::date, $d$2026-04-08$d$::date, NULL, NULL, $sch$Robert Senior RAIN$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, NULL, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$6F87D8A1-C3D1-420F-A6DD-D4E3CC3129C4$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_c5646ef7ea894d3e$cid$, $src$google_calendar_import$src$, $uid$2469bhju591quj5q5l0gkaod2u@google.com$uid$, $title$W-H Spring Sports (2 photogs)$title$, $d$2026-03-26$d$::date, $d$2026-03-26$d$::date, $tm$2:45pm$tm$, $arr$2:15pm$arr$, $sch$W-H$sch$, $typ$senior portraits$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Kyle Williams
kywilliams@whufsd.org
(518)237-0800 ext. 1311
125 Middletown Road
Waterford, NY 12188
ONLY JV & Varsity teams
Arrive: 2:15pm
Start: 2:45pm
Location: Auditorium Lobby
2:45 Tennis
(Bocce and unified bowling seniors-2:55)
3:00 Varsity Track and Field
3:30 Varsity Softball
3:50- Varsity Baseball
4:10- JV Baseball
Williams, Kyle
7:34 AM (15 minutes ago)
to me
Carrie,
Thursday the 26th would work for us! We will have JV/varsity baseball, varsity softball, Tennis, and varsity track. We may have JV softball, but it's up in the air right now. 
Start shooting at 2:45?
Thanks,
Kyle$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$2469bhju591quj5q5l0gkaod2u@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_f96c0e5935d41ccd$cid$, $src$google_calendar_import$src$, $uid$4k3kq5p1sjtmimd8tvcpk149e0@google.com$uid$, $title$Cohoes HS Fall Sports (1 team)$title$, $d$2025-10-08$d$::date, $d$2025-10-08$d$::date, NULL, NULL, $sch$Cohoes High School$sch$, $typ$sports$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Caryn Dollard, picture day contact
cdollard@cohoes.org
Jeff Huneau, AD 
jhuneau@cohoes.org
4th year doing sports at this school - arrange with Caryn, and AD$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4k3kq5p1sjtmimd8tvcpk149e0@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_850a1a365f8ab92d$cid$, $src$google_calendar_import$src$, $uid$A89DDE2D-C104-4855-82E0-8F8875CDCD46$uid$, $title$Lower School Closings  2 PHOTOGS$title$, $d$2025-06-06$d$::date, $d$2025-06-06$d$::date, NULL, NULL, $sch$Lower School Closings PHOTOGS$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$30 kindergarteners - cap and gown before ceremony and then candids of ceremony and family pics after.  

Set up 745 am
Shooting kids 830-900
Ceremony 9-?$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$A89DDE2D-C104-4855-82E0-8F8875CDCD46$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_aafca9c9e74b312a$cid$, $src$google_calendar_import$src$, $uid$5re438e6fg2k9ovjd7hlua3g2s@google.com$uid$, $title$Photo Booth - Albany Academy$title$, $d$2026-02-07$d$::date, $d$2026-02-07$d$::date, NULL, NULL, $sch$Albany Academy$sch$, $typ$photo booth$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Carnivale
Contact Emily Casale
Steph can do it$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$5re438e6fg2k9ovjd7hlua3g2s@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a5f1f5fc69460180$cid$, $src$google_calendar_import$src$, $uid$1k5li36utlv022bsnmbnk1r1q8@google.com$uid$, $title$NYS Defenders Assn Headshots$title$, $d$2026-06-10$d$::date, $d$2026-06-10$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Skidmore College
50 people starting at 5:30 and during dinner (we are invited to eat)
I think 5:30-7:30 is plenty of time for 50 people?
Hi Stephanie,

The schedule has been shifting back and forth for our June program, but we are finally ready to commit to it – are you still available in the evening of Wednesday, June 10
th
 to set up a headshot station for about 50 participants? We’re thinking 5:30 start time, and the ending when it would make sense for you. This would be during dinner and of course you’d be welcome to join us for the dinner!
Thank you for your patience as we figure this out! Looking forward to working with you again 😊

Kind regards,
Tess Malova
Legal Training Manager
New York State Defenders Association
40 Beaver St, 4
th
 Floor
Albany, NY 12207
tmalova@nysda.org
 | 
training@nysda.org
Office: 518-465-3524 x28
Cell: 518-807-2433
Pronouns: 
she/her/hers

Hi Stephanie,

I’m so sorry for the delay! I am still not sure about the schedule for the June program, but for the days you are available (June 10 or 11), would you be able to come in the evening? There are only 50 participants in this training, so much smaller volume than the conference. How long would you need for 50-55 people? One thought we had was having the station available during and/or after dinner, since the schedule is so packed before that time. 

Thank you for your patience! Looking forward to hearing from you.

Kind regards,
Tess Malova
Legal Training Manager
New York State Defenders Association
40 Beaver St, 4
th
 Floor
Albany, NY 12207
tmalova@nysda.org
 | 
training@nysda.org
518-465-3524 x 28$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1k5li36utlv022bsnmbnk1r1q8@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_8d0c4bff4a103f2c$cid$, $src$google_calendar_import$src$, $uid$0oimlnd9eai4jdbadu3ut0f7j4@google.com$uid$, $title$Rivers Casino Employee Party$title$, $d$2025-12-17$d$::date, $d$2025-12-17$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Contact Sean Wyse - paying us this year!  Probably 6-10 pm double check on time$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0oimlnd9eai4jdbadu3ut0f7j4@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_7165cc51712f6a51$cid$, $src$google_calendar_import$src$, $uid$3ie1v81r5jvoimj148cihmi6p8@google.com$uid$, $title$Skano Elem Makeup Day (1 team)$title$, $d$2026-10-21$d$::date, $d$2026-10-21$d$::date, NULL, NULL, $sch$Skano Elementary School$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$See Sept 21, 2026 for contact and location info

Look to see if picture day was outdoor or indoor and match.$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3ie1v81r5jvoimj148cihmi6p8@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_10879e76bc2f0fb2$cid$, $src$google_calendar_import$src$, $uid$59cnff92bd3idbaqhlml8upi4c@google.com$uid$, $title$Learning Garden Childcare SLINGERLANDS (2 teams)$title$, $d$2026-10-20$d$::date, $d$2026-10-20$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$Learning Garden Childcare SLINGERLANDS$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Jennifer Hogan
jennifer@learninggarden.kids

Shavonne Diaz, director
director@learninggarden.kids

392 Maple Road
Slingerlands, NY 12159

Arrive: 8:30am
Start: 9am

Indoor - morning 10/10 school blue background ckg
125 students
Collages$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$59cnff92bd3idbaqhlml8upi4c@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_503ed218d0e31f33$cid$, $src$google_calendar_import$src$, $uid$3m5ao0oaubovj1gaoj2ocp0vn6@google.com$uid$, $title$TSL New Karner Spring Photos (1 team)$title$, $d$2026-04-15$d$::date, $d$2026-04-15$d$::date, $tm$9:00am$tm$, $arr$8:30am$arr$, $sch$TSL New Karner Spring$sch$, $typ$spring picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Rhonda Haynes, Director
tslnewkarnerdaycare@gmail.com
518-608-0011
Wendy, office mgr (she is usually the one who checks the email)
WAS PUMPKIN PATCH, NOW RUN BY TSL
3rd year with us (Rhonda carried over from Pumpkin Patch)
3/27/26 confirmed with Wendy cc Andrew ckg
Setup: 8:30am
Start: 9am
finish by 11am (lunch)
INDOOR with spring backdrop
Individuals of all students and staff for collages
Collages$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$3m5ao0oaubovj1gaoj2ocp0vn6@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_a5353eb99f2fc093$cid$, $src$google_calendar_import$src$, $uid$4u5slnnjarrqjah6j2k8ng8m69@google.com$uid$, $title$NEW DATE Zoller Elementary (2 teams)$title$, $d$2025-12-08$d$::date, $d$2025-12-08$d$::date, $tm$8:15am$tm$, $arr$7:45am$arr$, $sch$NEW DATE Zoller Elementary$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Tanekia Matthews, school secretary
matthewst@schenectadyschools.org
10/6/25 Tanekia moved date to 12/2/25 ckg
11/18/25 emailed confirming all info ckg
Setup:7:45am confirmed, custodians notified
Start: 8:15am
Location: Gym C (indoor) need to confirm
*Schedule all classes before noon*
Individuals of students and teachers for colleges
Collages
Attendance files$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$4u5slnnjarrqjah6j2k8ng8m69@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_05a9a160a97b191b$cid$, $src$google_calendar_import$src$, $uid$7c4c8qgtbs2b76jh7qdo1ahlei@google.com$uid$, $title$Lizzy Wyld Party LAUREN$title$, $d$2025-07-26$d$::date, $d$2025-07-26$d$::date, NULL, NULL, NULL, $typ$review$typ$, ARRAY[$a$Lauren$a$]::text[], ARRAY[]::text[], false, $info$I am not ignoring you!! Sorry it took me so long!  There will be somewhere between 60-70 people. Address is 39 Colonial Ave, Albany (it is literally around the corner from my parents house). As far as timing, let me check in with my brother one more time just to see when specifically we want you to start. We may stay with two hours, but if need be, would you be able to stay for three? And if so, what would the amount be for that amount of time?$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$7c4c8qgtbs2b76jh7qdo1ahlei@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_1b559bebae2ea89f$cid$, $src$google_calendar_import$src$, $uid$1gms60c2mteptb5bec9k1lj2hu@google.com$uid$, $title$Loudonville Christian Fall Photos (1 team)$title$, $d$2026-09-24$d$::date, $d$2026-09-24$d$::date, NULL, NULL, $sch$Loudonville Christian Fall$sch$, $typ$picture day$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Bonnie Strock
bstrock@lcs.org
Set-up: 745am in the Ministry Center
All service items and yearbook
group class pictures$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$1gms60c2mteptb5bec9k1lj2hu@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_2ccb7c063f7730e9$cid$, $src$google_calendar_import$src$, $uid$01okbkbbfjo6e6tuni82r2mgjh@google.com$uid$, $title$New Lebanon SENIORS Day 3 PM (1 team)$title$, $d$2025-10-21$d$::date, $d$2025-10-21$d$::date, NULL, NULL, $sch$New Lebanon Day$sch$, $typ$makeup/retake$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Michelle Bienes, yearbook editor 
michellebienes@newlebanoncsd.org
Koni Kraft, main office
kkraft@newlebanoncsd.org

USING ACUITY FOR APPOINTMENTS ckg

proposed after school like we do at Hoosic Valley - 3-6pm. Day 2 is on Makeup Day after makeups.

3rd time doing senior portraits (currently they have no organized program before us)
We use their black caps/gowns and orange stoles for portraits

Steph proposed indoor and outdoor photos
With 20-25 min sessions we can do the est. 30 seniors over 2 days from 8am-4pm with a 30 lunch break.

Indoors - in gym on the stage
Boys - asked to wear own button-down shirt, give option of a tie and/or jacket
Girls - asked to wear their own favorite blouse or dress, give drape option
ALL - photograph in cap and gown

Yearbook - they choose one formal and one casual image for their yearbook$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$01okbkbbfjo6e6tuni82r2mgjh@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_97cae0b1cf64b78a$cid$, $src$google_calendar_import$src$, $uid$0q3jb5clsmqllhmvj6tg2k2878@google.com$uid$, $title$Eagle Point 5th Grade Graduation (1 photog)$title$, $d$2025-06-25$d$::date, $d$2025-06-25$d$::date, $tm$9:00am$tm$, $arr$8:30$arr$, $sch$Eagle Point 5th Grade Graduation$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Danielle Slater
danielle.unser@gmail.com
518 322-2276
Christine Wood, main office
cwood@albany.k12.ny.us
Emily King, PTO
estaats10@gmail.com
Arrive: 8:30-8:45am
Start 9am - goes for one hour
Danielle Unser
11:35 AM (1 hour ago)
to 
Emily
, me, Christine
Hi Carrie,
We were hoping you could do 5th grade graduation instead of Kindergarten this year if that is possible. Fifth grade graduation is Wednesday, June 25th at 9am at Eagle Point. The flyer looks great if you could just swap out Kindergarten for Fifth Grade, I will have them printed and ready to go. I have also cc'd Emily King on this email. She is on the PTA and graduation committee.
Thanks again,
Danielle$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$0q3jb5clsmqllhmvj6tg2k2878@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_ac04476f3b59fe14$cid$, $src$google_calendar_import$src$, $uid$06cr3lqhdfpk7nk7hpipbqogie@google.com$uid$, $title$Duanesburg MS/HS (1 team)$title$, $d$2026-09-16$d$::date, $d$2026-09-17$d$::date, $tm$7:50am$tm$, $arr$7:20am$arr$, $sch$Duanesburg Middle School/High School$sch$, $typ$review$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Andrea Hunter, Main Office
ahunter@duanesburg.org
Set-up: 7:20am
Start time: 7:50am
Indoor pics of all students and faculty
In auditorium on STAGE
During gym periods
All service items
Student and Faculty ID with bar codes
Yearbook support - Treering we flow$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$06cr3lqhdfpk7nk7hpipbqogie@google.com$uidw$);

INSERT INTO public.events (client_event_id, source, source_event_id, title, date, end_date, time, arrival_time, canonical_school, event_type, photographers, assistants, no_assistant, picture_day_info, active)
SELECT $cid$ics_050287c9adfba704$cid$, $src$google_calendar_import$src$, $uid$76n4nqrm848d052ipm6hpmdo3b@google.com$uid$, $title$Blessed Sacrament School (1 team)$title$, $d$2025-10-17$d$::date, $d$2025-10-17$d$::date, $tm$8:20am$tm$, $arr$7:50am$arr$, $sch$Blessed Sacrament School$sch$, $typ$graduation/pano$typ$, ARRAY[]::text[], ARRAY[]::text[], false, $info$Mike O'Kane, Principal (NEW)
principal@blessedsacramentschool.net
p: 
(518) 438-5854
10/6 confirmed; 9/29 emailed to confirm timing and to get schedule ckg
Arrive: 7:50am
Start: 8:20am
Indoor in the Gym
Individuals students (grades prek3 to 6 in 2025-26) and faculty
COMPOSITE class pictures 10/6 chose composites; 9/29 asking to covert to collages ckg
Faculty IDs$info$, true
WHERE NOT EXISTS (SELECT 1 FROM public.events WHERE source = 'google_calendar_import' AND source_event_id = $uidw$76n4nqrm848d052ipm6hpmdo3b@google.com$uidw$);

COMMIT;
