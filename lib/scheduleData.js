export const PHOTOGRAPHERS = ['Stephanie', 'Matt', 'Molly', 'Beth', 'Andrew', 'Lauren', 'Emily', 'Erin', 'Milton', 'Emmett Robichard'];
export const ASSISTANTS = ['Victoria', 'Siena', 'Meg', 'Carmen', 'Margaret', 'Simone', 'Colleen', 'Kristen', 'Jaime', 'Sam', 'Cori', 'Marianna', 'Lauren', 'Erin', 'Milton'];
export const ADMINS = ['Matt', 'Stephanie', 'Carrie'];

export const STATUSES = ['Needs Photographers Scheduled', 'Scheduled', 'Rain Watch', 'Completed'];

export const TYPE_COLORS = {
  'Fall Picture Day': 'bg-[#DDE8D2] text-zinc-800 border-[#AEBB9E]',
  'Spring Picture Day': 'bg-emerald-50 text-emerald-900 border-emerald-200',
  Seniors: 'bg-violet-50 text-violet-900 border-violet-200',
  Sports: 'bg-amber-50 text-amber-900 border-amber-200',
  'Rain Date': 'bg-sky-50 text-sky-900 border-sky-200',
  'Makeup Day': 'bg-rose-50 text-rose-900 border-rose-200',
  'Call or Meeting': 'bg-zinc-100 text-zinc-800 border-zinc-200',
  'Photo Booth': 'bg-pink-50 text-pink-900 border-pink-200',
  Headshots: 'bg-orange-50 text-orange-900 border-orange-200',
  'Family Photos': 'bg-lime-50 text-lime-900 border-lime-200',
  'Special Event': 'bg-indigo-50 text-indigo-900 border-indigo-200',
  'Edit Day': 'bg-teal-50 text-teal-900 border-teal-200'
};

export const SCHOOL_ALIASES = {
  'Nisky - Craig Elem': ['Craig Elementary', 'Nisky Craig', 'Craig Elem'],
  'Shen - Skano': ['Skano', 'Skano Elementary'],
  'The Academies (AA/G)': ['Academy', 'Albany Academy', 'The Academies'],
  'Cairo-Durham MS/HS': ['Cairo Middle School', 'Cairo High School'],
  'Cairo-Durham Elem': ['Cairo Elementary'],
  'Kid\'s Express': ['Kids Express', "Kid's Express"],
  'Nisky - Rosendale Elem': ['Rosendale', 'Rosendale Elementary']
};

export const historicalScheduleEvents = [
  // ------------------------------------------------------------
  // SEPTEMBER 2025
  // ------------------------------------------------------------
  {
    id: "2025-09-01-labor-day",
    date: "2025-09-01",
    sourceTitle: "LABOR DAY",
    canonicalSchoolName: null,
    eventType: "Special Event",
    status: "Completed",
    photographers: [],
    assistants: [],
    features: [],
    notes: "Holiday / no school scheduling.",
  },
  {
    id: "2025-09-02-academy-seniors",
    date: "2025-09-02",
    sourceTitle: "Academy Seniors",
    canonicalSchoolName: "The Academies Seniors",
    eventType: "Seniors",
    status: "Completed",
    photographers: ["Stephanie", "Matt", "Emily"],
    assistants: [],
    features: [],
    notes: "Beth dentist 3-4. Beth edit day / Emily 8 hours edit.",
  },
  {
    id: "2025-09-02-waterford-fall-sports",
    date: "2025-09-02",
    sourceTitle: "Waterford Halfmoon Fall Sports",
    canonicalSchoolName: null,
    eventType: "Sports",
    status: "Completed",
    photographers: ["Andrew", "Molly"],
    assistants: [],
    features: [],
    notes: "Sports account; not linked to school seed by default.",
  },
  {
    id: "2025-09-03-cairo-seniors",
    date: "2025-09-03",
    sourceTitle: "Cairo Seniors",
    canonicalSchoolName: "Cairo-Durham Seniors",
    eventType: "Seniors",
    status: "Completed",
    photographers: ["Molly", "Andrew"],
    assistants: [],
    features: [],
    notes: "Senior portraits.",
  },
  {
    id: "2025-09-03-academy-seniors",
    date: "2025-09-03",
    sourceTitle: "Academy Seniors",
    canonicalSchoolName: "The Academies Seniors",
    eventType: "Seniors",
    status: "Completed",
    photographers: ["Stephanie", "Matt", "Emily"],
    assistants: [],
    features: [],
    notes: "Emily morning. Emily 8 hours.",
  },
  {
    id: "2025-09-03-academy-fall-sports",
    date: "2025-09-03",
    sourceTitle: "Academy Fall Sports AFTERNOON 2-4pm",
    canonicalSchoolName: null,
    eventType: "Sports",
    status: "Completed",
    photographers: ["Lauren"],
    assistants: ["Emily"],
    features: [],
    notes: "Afternoon 2-4pm. Sports account.",
  },
  {
    id: "2025-09-03-latham-christian-first-day",
    date: "2025-09-03",
    sourceTitle: "Latham Christian Academy First Day",
    canonicalSchoolName: "Latham Christian Academy",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Beth"],
    assistants: [],
    features: [],
    notes: "First day photos.",
  },
  {
    id: "2025-09-03-lcs-makeup-laila",
    date: "2025-09-03",
    sourceTitle: "Laila Fowler LCS Make Up 4:30",
    canonicalSchoolName: "Latham Christian Academy",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Laila Fowler makeup at 4:30. Contact details preserved in source PDF only.",
  },
  {
    id: "2025-09-03-lcs-makeup-miarh",
    date: "2025-09-03",
    sourceTitle: "Miarh LCS Make Up 4:45",
    canonicalSchoolName: "Latham Christian Academy",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Miarh makeup at 4:45. Contact details preserved in source PDF only.",
  },
  {
    id: "2025-09-03-kids-express-first-day",
    date: "2025-09-03",
    sourceTitle: "Kids Express First Day AM",
    canonicalSchoolName: "Kid's Express",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Matt"],
    assistants: [],
    features: [],
    notes: "First day AM. Liz called Carrie and confirmed correct date of 9/3.",
  },
  {
    id: "2025-09-04-cairo-seniors",
    date: "2025-09-04",
    sourceTitle: "Cairo Seniors",
    canonicalSchoolName: "Cairo-Durham Seniors",
    eventType: "Seniors",
    status: "Completed",
    photographers: ["Molly", "Andrew", "Emily"],
    assistants: [],
    features: [],
    notes: "Emily 8 hour day.",
  },
  {
    id: "2025-09-04-academy-upper-school-pictures",
    date: "2025-09-04",
    sourceTitle: "Academy Upper School Pictures (New/Mentor/Upper School)",
    canonicalSchoolName: "The Academies (AA/G)",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Stephanie", "Beth"],
    assistants: [],
    features: [],
    notes: "New/Mentor/Upper School pictures.",
  },
  {
    id: "2025-09-04-kids-express-first-day",
    date: "2025-09-04",
    sourceTitle: "Kids Express First Day",
    canonicalSchoolName: "Kid's Express",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Matt"],
    assistants: [],
    features: [],
    notes: "Source note repeats that Liz called Carrie confirming 9/3 date.",
  },
  {
    id: "2025-09-04-ls-veneer-training",
    date: "2025-09-04",
    sourceTitle: "Important Computer Training for L&S Veneer",
    canonicalSchoolName: null,
    eventType: "Call or Meeting",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Meeting link in source PDF.",
  },
  {
    id: "2025-09-04-qr-assistant-interview",
    date: "2025-09-04",
    sourceTitle: "Samantha Pugliese Interview QR Assistant 7:00 PM",
    canonicalSchoolName: null,
    eventType: "Call or Meeting",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "QR Assistant interview at 7:00 PM. Source says Steph + ?.",
  },
  {
    id: "2025-09-05-academy-first-day-stock",
    date: "2025-09-05",
    sourceTitle: "Academy First Day Stock Photos",
    canonicalSchoolName: "The Academies (AA/G)",
    eventType: "Special Event",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "First day stock photos.",
  },
  {
    id: "2025-09-05-northville-fall-sports",
    date: "2025-09-05",
    sourceTitle: "Northville Fall Sports",
    canonicalSchoolName: null,
    eventType: "Sports",
    status: "Completed",
    photographers: ["Beth"],
    assistants: ["Emily"],
    features: [],
    notes: "Emily 3 hour shoot / 5 hour edit time.",
  },
  {
    id: "2025-09-05-cairo-seniors",
    date: "2025-09-05",
    sourceTitle: "Cairo Seniors",
    canonicalSchoolName: "Cairo-Durham Seniors",
    eventType: "Seniors",
    status: "Completed",
    photographers: ["Molly", "Andrew"],
    assistants: [],
    features: [],
    notes: "Senior portraits.",
  },
  {
    id: "2025-09-05-siena-photo-booth-dropoff",
    date: "2025-09-05",
    sourceTitle: "DROP OFF: Photo Booth at Siena at NOON",
    canonicalSchoolName: null,
    eventType: "Photo Booth",
    status: "Completed",
    photographers: ["Matt"],
    assistants: [],
    features: ["Photo Booth Add-On"],
    notes: "Drop off at noon.",
  },
  {
    id: "2025-09-06-duanesburg-seniors",
    date: "2025-09-06",
    sourceTitle: "Duanesburg Seniors",
    canonicalSchoolName: "Duanesburg Seniors",
    eventType: "Seniors",
    status: "Completed",
    photographers: ["Stephanie", "Beth"],
    assistants: [],
    features: [],
    notes: "Published note in source PDF.",
  },
  {
    id: "2025-09-07-duanesburg-seniors",
    date: "2025-09-07",
    sourceTitle: "Duanesburg Seniors",
    canonicalSchoolName: "Duanesburg Seniors",
    eventType: "Seniors",
    status: "Completed",
    photographers: ["Stephanie", "Andrew", "Emily"],
    assistants: [],
    features: [],
    notes: "Emily 8 hour shoot.",
  },
  {
    id: "2025-09-08-duanesburg-fall-sports",
    date: "2025-09-08",
    sourceTitle: "Duanesburg Fall Sports 7IRM",
    canonicalSchoolName: null,
    eventType: "Sports",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: ["Emily"],
    features: [],
    notes: "Beth / Andrew / Molly edit day.",
  },
  {
    id: "2025-09-08-cha-consulting-meeting",
    date: "2025-09-08",
    sourceTitle: "CHA Consulting Marketing director meeting MS Teams",
    canonicalSchoolName: null,
    eventType: "Call or Meeting",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "11:30. Meeting details in source PDF.",
  },
  {
    id: "2025-09-08-school-team-huddle",
    date: "2025-09-08",
    sourceTitle: "School Team Huddle 11am",
    canonicalSchoolName: null,
    eventType: "Call or Meeting",
    status: "Completed",
    photographers: [],
    assistants: [],
    features: [],
    notes: "11am Google Meet in source PDF.",
  },
  {
    id: "2025-09-09-bkw-fall-sports",
    date: "2025-09-09",
    sourceTitle: "BKW Fall Sports 9IRM",
    canonicalSchoolName: null,
    eventType: "Sports",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: ["Emily"],
    features: [],
    notes: "Beth not available before 9am.",
  },
  {
    id: "2025-09-09-capital-region-boces-schoharie",
    date: "2025-09-09",
    sourceTitle: "Capital Region BOCES Schoharie (1 Team)",
    canonicalSchoolName: null,
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Beth"],
    assistants: [],
    features: [],
    notes: "BOCES account not currently in school seed list.",
  },
  {
    id: "2025-09-09-kindercare-nisky",
    date: "2025-09-09",
    sourceTitle: "Kindercare Nisky (2 Teams) 18IRM",
    canonicalSchoolName: "Kindercare Clifton Park",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly", "Andrew", "Emily"],
    assistants: ["Victoria"],
    features: [],
    notes: "Source says Kindercare Nisky; school seed currently has Kindercare Clifton Park. Needs canonical review.",
  },
  {
    id: "2025-09-09-siena-photo-booth-pickup",
    date: "2025-09-09",
    sourceTitle: "PICK UP: Photo Booth at Siena MORNING",
    canonicalSchoolName: null,
    eventType: "Photo Booth",
    status: "Completed",
    photographers: ["Matt"],
    assistants: [],
    features: ["Photo Booth Add-On"],
    notes: "Picked up Monday per source note.",
  },
  {
    id: "2025-09-10-green-tech",
    date: "2025-09-10",
    sourceTitle: "Green Tech MS/HS (1 Team) 10IRM",
    canonicalSchoolName: "Green Tech MS/HS",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Beth"],
    assistants: ["Margaret", "Simone"],
    features: [],
    notes: "Added 08/21. Switched to MW on 09/01.",
  },
  {
    id: "2025-09-10-albany-academy-upper",
    date: "2025-09-10",
    sourceTitle: "Albany Academy Upper School 110IRM",
    canonicalSchoolName: "The Academies (AA/G)",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "1 at upper school, 2 at lower school.",
  },
  {
    id: "2025-09-10-albany-academy-lower",
    date: "2025-09-10",
    sourceTitle: "Albany Academy Lower School",
    canonicalSchoolName: "The Academies (AA/G)",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Andrew", "Molly", "Matt"],
    assistants: ["Emily"],
    features: ["Group Photos"],
    notes: "Class pics. Emily 8 hour.",
  },
  {
    id: "2025-09-10-senior-makeups",
    date: "2025-09-10",
    sourceTitle: "Herba Senior Makeup / Eva Lu / Koral Hernandez Senior Makeup",
    canonicalSchoolName: null,
    eventType: "Seniors",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Multiple senior makeup appointments; contact details kept in source PDF.",
  },
  {
    id: "2025-09-11-green-tech",
    date: "2025-09-11",
    sourceTitle: "Green Tech MS/HS (1 Team) 10IRM",
    canonicalSchoolName: "Green Tech MS/HS",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Beth"],
    assistants: ["Simone"],
    features: [],
    notes: "Steph edit day. Assistant preference notes in source.",
  },
  {
    id: "2025-09-11-tsl-guilderland",
    date: "2025-09-11",
    sourceTitle: "TSL Daycare Guilderland (1 Team)",
    canonicalSchoolName: "TSL Guilderland",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Emily", "Lauren"],
    assistants: ["Victoria"],
    features: [],
    notes: "Shoot 4 hours / edit 4 hours.",
  },
  {
    id: "2025-09-11-cairo-middle",
    date: "2025-09-11",
    sourceTitle: "Cairo Middle School (1 Photog) 37IRM",
    canonicalSchoolName: "Cairo-Durham MS/HS",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly"],
    assistants: [],
    features: [],
    notes: "Middle school portion.",
  },
  {
    id: "2025-09-11-cairo-high",
    date: "2025-09-11",
    sourceTitle: "Cairo High School (1 Photog) 37IRM",
    canonicalSchoolName: "Cairo-Durham MS/HS",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: [],
    features: [],
    notes: "High school portion.",
  },
  {
    id: "2025-09-11-reviews",
    date: "2025-09-11",
    sourceTitle: "REVIEWS",
    canonicalSchoolName: null,
    eventType: "Call or Meeting",
    status: "Completed",
    photographers: ["Andrew", "Molly", "Matt", "Stephanie"],
    assistants: [],
    features: [],
    notes: "Internal reviews.",
  },
  {
    id: "2025-09-12-cairo-middle",
    date: "2025-09-12",
    sourceTitle: "Cairo Middle School (1 Photog) 37IRM",
    canonicalSchoolName: "Cairo-Durham MS/HS",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly"],
    assistants: [],
    features: [],
    notes: "Middle school portion.",
  },
  {
    id: "2025-09-12-cairo-high",
    date: "2025-09-12",
    sourceTitle: "Cairo High School (1 Photog) 37IRM",
    canonicalSchoolName: "Cairo-Durham MS/HS",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: [],
    features: [],
    notes: "High school portion.",
  },
  {
    id: "2025-09-12-cairo-fall-sports",
    date: "2025-09-12",
    sourceTitle: "Cairo Fall Sports 19IRM",
    canonicalSchoolName: null,
    eventType: "Sports",
    status: "Completed",
    photographers: ["Andrew", "Molly"],
    assistants: [],
    features: [],
    notes: "Sports account.",
  },
  {
    id: "2025-09-12-okte",
    date: "2025-09-12",
    sourceTitle: "Okte Elementary (2 Teams) 99IRM",
    canonicalSchoolName: "Shen - Okte",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Beth", "Stephanie"],
    assistants: ["Emily", "Marianna"],
    features: ["Outdoor"],
    notes: "Emily 6 hour shoot / 2 hours edit.",
  },
  {
    id: "2025-09-13-holden-rivera-senior",
    date: "2025-09-13",
    sourceTitle: "Holden Rivera Senior Portraits",
    canonicalSchoolName: null,
    eventType: "Seniors",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Senior portrait session.",
  },
  {
    id: "2025-09-15-cairo-elementary-pk2",
    date: "2025-09-15",
    sourceTitle: "Cairo Elementary PK-2 (1 Team) 80IRM",
    canonicalSchoolName: "Cairo-Durham Elem",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly"],
    assistants: ["Margaret"],
    features: [],
    notes: "PK-2 portion. Added 08/21; switched to MW on 09/01.",
  },
  {
    id: "2025-09-15-boces-albany-cte-main",
    date: "2025-09-15",
    sourceTitle: "Capital Region BOCES Albany CTE Main (2 Teams)",
    canonicalSchoolName: null,
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Emily", "Matt"],
    assistants: [],
    features: [],
    notes: "Emily 6 hours shoot / 2 hours edit. BOCES account not in seed list.",
  },
  {
    id: "2025-09-15-boces-albany-extension",
    date: "2025-09-15",
    sourceTitle: "Capital Region BOCES Albany Extension (1 Team)",
    canonicalSchoolName: null,
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: [],
    features: [],
    notes: "BOCES account not in seed list.",
  },
  {
    id: "2025-09-15-northville-picture-day",
    date: "2025-09-15",
    sourceTitle: "Northville Picture Day (2 Teams & Class Pics) 84IRM",
    canonicalSchoolName: "Northville",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Stephanie", "Beth"],
    assistants: ["Lauren"],
    features: ["Group Photos"],
    notes: "Class pics. Assistant VD removed 09/07 per source.",
  },
  {
    id: "2025-09-15-october-scheduling-call",
    date: "2025-09-15",
    sourceTitle: "OCTOBER SCHEDULING CALL 7:30PM",
    canonicalSchoolName: null,
    eventType: "Call or Meeting",
    status: "Completed",
    photographers: [],
    assistants: [],
    features: [],
    notes: "Google Meet link in source PDF.",
  },
  {
    id: "2025-09-15-qr-candidate-interview",
    date: "2025-09-15",
    sourceTitle: "Jaime King QR Candidate interview 7:00 pm",
    canonicalSchoolName: null,
    eventType: "Call or Meeting",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "QR candidate interview.",
  },
  {
    id: "2025-09-16-hoosic-seniors",
    date: "2025-09-16",
    sourceTitle: "Hoosic Valley Seniors Afternoon",
    canonicalSchoolName: "Hoosic Seniors",
    eventType: "Seniors",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: [],
    features: [],
    notes: "Andrew appointment noted.",
  },
  {
    id: "2025-09-16-hoosic-underclass",
    date: "2025-09-16",
    sourceTitle: "Hoosic Valley Underclass (1 Photog) 43IRM",
    canonicalSchoolName: "Hoosic Valley MS/HS",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Emily", "Matt"],
    assistants: [],
    features: [],
    notes: "No WiFi in Hoosic. Switched to LR then MM per source notes.",
  },
  {
    id: "2025-09-16-cairo-elementary-35",
    date: "2025-09-16",
    sourceTitle: "Cairo Elementary 3-5 (1 Team) 80IRM",
    canonicalSchoolName: "Cairo-Durham Elem",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly"],
    assistants: ["Margaret"],
    features: [],
    notes: "3-5 portion. Added 08/21; switched to MW on 09/01.",
  },
  {
    id: "2025-09-16-okte-rain-date",
    date: "2025-09-16",
    sourceTitle: "Okte Rain Date (2 Teams)",
    canonicalSchoolName: "Shen - Okte",
    eventType: "Rain Date",
    status: "Completed",
    photographers: ["Stephanie", "Beth"],
    assistants: ["Carmen", "Victoria"],
    features: [],
    notes: "Rain date. Beth edit day also noted.",
  },
  {
    id: "2025-09-17-hoosic-seniors",
    date: "2025-09-17",
    sourceTitle: "Hoosic Valley Seniors Afternoon",
    canonicalSchoolName: "Hoosic Seniors",
    eventType: "Seniors",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: [],
    features: [],
    notes: "Senior portraits.",
  },
  {
    id: "2025-09-17-hoosic-underclass",
    date: "2025-09-17",
    sourceTitle: "Hoosic Valley Underclass (1 Photog) 43IRM",
    canonicalSchoolName: "Hoosic Valley MS/HS",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Emily"],
    assistants: [],
    features: [],
    notes: "Underclass photos.",
  },
  {
    id: "2025-09-17-duanesburg-mshs-day1",
    date: "2025-09-17",
    sourceTitle: "Duanesburg MS/HS Day 1 (1 Photog) 37IRM",
    canonicalSchoolName: "D'burg MS/HS",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Day 1.",
  },
  {
    id: "2025-09-17-rosendale",
    date: "2025-09-17",
    sourceTitle: "NEW Rosendale Elementary [Nisky] (2 Teams) ~75IRM",
    canonicalSchoolName: "Nisky - Rosendale Elem",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly", "Beth"],
    assistants: ["Margaret", "Victoria", "Lauren"],
    features: ["Group Photos"],
    notes: "School requested group class photos; photographer added for class photos.",
  },
  {
    id: "2025-09-18-hoosic-seniors-day",
    date: "2025-09-18",
    sourceTitle: "Hoosic Valley Seniors Day",
    canonicalSchoolName: "Hoosic Seniors",
    eventType: "Seniors",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: ["Carmen"],
    features: [],
    notes: "Helper needs camera. Added by MT/source notes.",
  },
  {
    id: "2025-09-18-waterford-halfmoon-elementary",
    date: "2025-09-18",
    sourceTitle: "Waterford-Halfmoon Elementary (2 Teams) 40IRM",
    canonicalSchoolName: "Waterford Halfmoon Elem",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Matt", "Beth"],
    assistants: ["Margaret", "Victoria"],
    features: [],
    notes: "Molly edit day / Emily edit day 8 hours.",
  },
  {
    id: "2025-09-18-siena-photo-booth-dropoff",
    date: "2025-09-18",
    sourceTitle: "Siena Photo Booth Drop Off EVENING",
    canonicalSchoolName: null,
    eventType: "Photo Booth",
    status: "Completed",
    photographers: ["Lauren"],
    assistants: [],
    features: ["Photo Booth Add-On"],
    notes: "Evening drop off.",
  },
  {
    id: "2025-09-18-duanesburg-mshs-day2",
    date: "2025-09-18",
    sourceTitle: "Duanesburg MS/HS Day 2 (1 Photog) 37IRM",
    canonicalSchoolName: "D'burg MS/HS",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Lauren"],
    assistants: [],
    features: [],
    notes: "Day 2.",
  },
  {
    id: "2025-09-19-duanesburg-elementary",
    date: "2025-09-19",
    sourceTitle: "Duanesburg Elementary (2 Teams) 98IRM",
    canonicalSchoolName: "D'burg Elementary",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly", "Beth"],
    assistants: ["Emily"],
    features: ["Group Photos"],
    notes: "Class pics. Steph Binghamton. Emily 5 hours shoot / 3 hours edit.",
  },
  {
    id: "2025-09-19-siena-career-fair",
    date: "2025-09-19",
    sourceTitle: "Siena Career Fair 12:30-3 (1 Photog)",
    canonicalSchoolName: null,
    eventType: "Special Event",
    status: "Completed",
    photographers: ["Matt"],
    assistants: [],
    features: [],
    notes: "Andrew edit day.",
  },
  {
    id: "2025-09-20-lodge-fest",
    date: "2025-09-20",
    sourceTitle: "Lodge Fest",
    canonicalSchoolName: null,
    eventType: "Special Event",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Special event.",
  },
  {
    id: "2025-09-20-abby-russo-senior",
    date: "2025-09-20",
    sourceTitle: "Abby Russo Senior Portraits Nisky then Congress Park 8:30",
    canonicalSchoolName: null,
    eventType: "Seniors",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Senior portraits at Nisky then Congress Park.",
  },
  {
    id: "2025-09-22-waterford-mshs-seniors",
    date: "2025-09-22",
    sourceTitle: "Waterford-Halfmoon MS/HS & Seniors Afterschool (1 Team?) 21IRM",
    canonicalSchoolName: "Waterford MS/HS",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly", "Emily"],
    assistants: [],
    features: [],
    notes: "Afterschool. Beth not available after 3pm.",
  },
  {
    id: "2025-09-22-walter-b-howard",
    date: "2025-09-22",
    sourceTitle: "Walter B. Howard Elementary (1 Team) 47IRM",
    canonicalSchoolName: "Walter B Howard",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Beth"],
    assistants: ["Meg"],
    features: ["Outdoor"],
    notes: "Andrew edit day / Steph edit day.",
  },
  {
    id: "2025-09-22-sicilia-delorenzo-senior",
    date: "2025-09-22",
    sourceTitle: "Sicilia Delorenzo Senior Photos after school",
    canonicalSchoolName: null,
    eventType: "Seniors",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Senior photos after school.",
  },
  {
    id: "2025-09-23-waterford-mshs-seniors",
    date: "2025-09-23",
    sourceTitle: "Waterford-Halfmoon MS/HS & Seniors Afterschool (1 Team?) 21IRM",
    canonicalSchoolName: "Waterford MS/HS",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly", "Emily"],
    assistants: [],
    features: [],
    notes: "Afterschool. Hold Kid's Express Day 1 also listed.",
  },
  {
    id: "2025-09-23-kids-express-day1",
    date: "2025-09-23",
    sourceTitle: "HOLD Kid's Express Day 1 38IRM",
    canonicalSchoolName: "Kid's Express",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Matt"],
    assistants: ["Meg"],
    features: [],
    notes: "Beth edit day. Meg added 09/21.",
  },
  {
    id: "2025-09-23-gardner-dickinson",
    date: "2025-09-23",
    sourceTitle: "Gardner Dickinson Elementary/Middle (2 Photogs + 1 Asst) 57IRM",
    canonicalSchoolName: "Gardner Dickinson",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Stephanie", "Andrew"],
    assistants: ["Sam"],
    features: [],
    notes: "Source note: We don't need an assistant! SM.",
  },
  {
    id: "2025-09-23-walter-b-howard-rain",
    date: "2025-09-23",
    sourceTitle: "Walter B. Howard Elementary RAIN",
    canonicalSchoolName: "Walter B Howard",
    eventType: "Rain Date",
    status: "Completed",
    photographers: ["Beth"],
    assistants: ["Carmen"],
    features: [],
    notes: "Rain date.",
  },
  {
    id: "2025-09-24-glencliff",
    date: "2025-09-24",
    sourceTitle: "Glencliff Elementary (2 Teams) 76IRM",
    canonicalSchoolName: "Glencliff Elementary",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Stephanie", "Beth"],
    assistants: [],
    features: [],
    notes: "Two-team day.",
  },
  {
    id: "2025-09-24-kids-express-day2",
    date: "2025-09-24",
    sourceTitle: "HOLD Kid's Express Day 2 38IRM",
    canonicalSchoolName: "Kid's Express",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Matt"],
    assistants: ["Meg", "Sam"],
    features: [],
    notes: "Molly edit day. Sam added 09/09, Meg added 09/21.",
  },
  {
    id: "2025-09-24-loudonville-christian",
    date: "2025-09-24",
    sourceTitle: "Loudonville Christian School (1 Team) 30IRM",
    canonicalSchoolName: "Loudonville Christian",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: ["Lauren"],
    features: ["Group Photos"],
    notes: "Emily edit day. Lauren send edits to Matt.",
  },
  {
    id: "2025-09-24-cha-headshot",
    date: "2025-09-24",
    sourceTitle: "CHA Headshot Sahin Studio 3:30",
    canonicalSchoolName: null,
    eventType: "Headshots",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Studio headshot at 3:30.",
  },
  {
    id: "2025-09-25-karigon",
    date: "2025-09-25",
    sourceTitle: "Karigon Elementary (2 Teams) 88IRM",
    canonicalSchoolName: "Shen - Karigon",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly", "Andrew"],
    assistants: ["Meg", "Colleen"],
    features: [],
    notes: "Switched SS with CH on 09/11.",
  },
  {
    id: "2025-09-25-skano",
    date: "2025-09-25",
    sourceTitle: "Skano Elementary (3! Teams) 94IRM",
    canonicalSchoolName: "Shen - Skano",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Beth", "Stephanie", "Emily"],
    assistants: ["Lauren", "Victoria", "Cori"],
    features: ["Outdoor"],
    notes: "Changed to indoor on 9/23; Matt texted photographers. Might have Cori be assistant.",
  },
  {
    id: "2025-09-26-bkw-secondary",
    date: "2025-09-26",
    sourceTitle: "BKW Secondary (1 Team) 33IRM",
    canonicalSchoolName: "BKW Secondary",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Lauren"],
    assistants: ["Matt"],
    features: [],
    notes: "Matt 2nd shooter if needed.",
  },
  {
    id: "2025-09-26-craig",
    date: "2025-09-26",
    sourceTitle: "NEW Craig Elementary School [Nisky] (2 Teams) ~75IRM",
    canonicalSchoolName: "Nisky - Craig Elem",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly", "Stephanie"],
    assistants: ["Carmen", "Victoria"],
    features: [],
    notes: "Emily edit day. Expect Craig to end at 1PM latest per Google Calendar.",
  },
  {
    id: "2025-09-26-orenda",
    date: "2025-09-26",
    sourceTitle: "Orenda Elementary (2 Teams) 85IRM",
    canonicalSchoolName: "Shen - Orenda",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Beth", "Andrew"],
    assistants: ["Margaret", "Simone"],
    features: ["Outdoor"],
    notes: "Simone assisting.",
  },
  {
    id: "2025-09-27-schalmont-soccer",
    date: "2025-09-27",
    sourceTitle: "Schalmont Soccer - 30 teams - new league",
    canonicalSchoolName: null,
    eventType: "Sports",
    status: "Completed",
    photographers: ["Stephanie", "Molly", "Andrew"],
    assistants: [],
    features: [],
    notes: "No Lauren on location.",
  },
  {
    id: "2025-09-28-ohanlon-family",
    date: "2025-09-28",
    sourceTitle: "O'Hanlon Family Portraits 3:00 Schoharie",
    canonicalSchoolName: null,
    eventType: "Family Photos",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "No Lauren on location.",
  },
  {
    id: "2025-09-28-nys-shrm",
    date: "2025-09-28",
    sourceTitle: "NYS SHRM Conference 7:00-1:00",
    canonicalSchoolName: null,
    eventType: "Special Event",
    status: "Completed",
    photographers: ["Lauren"],
    assistants: [],
    features: [],
    notes: "Scheduled by Studio.",
  },
  {
    id: "2025-09-29-shen-united-methodist-day1",
    date: "2025-09-29",
    sourceTitle: "NEW Shen United Methodist Preschool Day 1 (1 Team)",
    canonicalSchoolName: "Shen United Methodist PK",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly"],
    assistants: ["Colleen"],
    features: [],
    notes: "Colleen added per Homebase.",
  },
  {
    id: "2025-09-29-chango",
    date: "2025-09-29",
    sourceTitle: "NEW Chango Elementary [Shen] (2 Teams) ~80IRM",
    canonicalSchoolName: "Shen - Chango (NEW)",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Beth", "Stephanie"],
    assistants: ["Kristen", "Jaime"],
    features: ["Composite"],
    notes: "Collages at Chango, NOT group class pictures.",
  },
  {
    id: "2025-09-29-tesago",
    date: "2025-09-29",
    sourceTitle: "Tesago Elementary (2 Teams) 67IRM",
    canonicalSchoolName: "Shen - Tesago",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Andrew", "Emily"],
    assistants: ["Simone", "Meg"],
    features: [],
    notes: "Two-team day.",
  },
  {
    id: "2025-09-29-nys-shrm",
    date: "2025-09-29",
    sourceTitle: "NYS SHRM Conference 7:00-5:00",
    canonicalSchoolName: null,
    eventType: "Special Event",
    status: "Completed",
    photographers: ["Lauren"],
    assistants: [],
    features: [],
    notes: "Scheduled by Studio.",
  },
  {
    id: "2025-09-29-school-team-huddle",
    date: "2025-09-29",
    sourceTitle: "SCHOOL TEAM HUDDLE CALL 8PM",
    canonicalSchoolName: null,
    eventType: "Call or Meeting",
    status: "Completed",
    photographers: [],
    assistants: [],
    features: [],
    notes: "Google Meet link in source PDF.",
  },
  {
    id: "2025-09-30-shen-united-methodist-day2",
    date: "2025-09-30",
    sourceTitle: "NEW Shen United Methodist Preschool Day 2 (1 Team)",
    canonicalSchoolName: "Shen United Methodist PK",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly"],
    assistants: [],
    features: [],
    notes: "Jaime cut 9/29. Source assistant N/A.",
  },
  {
    id: "2025-09-30-hudson-valley-consortium-day1",
    date: "2025-09-30",
    sourceTitle: "Hudson Valley Consortium Day 1 (1 Team) 21IRM",
    canonicalSchoolName: "Hudson Valley Consortium",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Emily"],
    assistants: [],
    features: [],
    notes: "Emily shoot 4 hours / edit 4 hours.",
  },
  {
    id: "2025-09-30-skano-rain-date",
    date: "2025-09-30",
    sourceTitle: "Skano Rain Date",
    canonicalSchoolName: "Shen - Skano",
    eventType: "Rain Date",
    status: "Completed",
    photographers: ["Beth", "Stephanie"],
    assistants: [],
    features: [],
    notes: "Beth edit day / Steph edit day also noted.",
  },
  {
    id: "2025-09-30-union-career-fair",
    date: "2025-09-30",
    sourceTitle: "Union College Career Fair EVENING",
    canonicalSchoolName: null,
    eventType: "Special Event",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: [],
    features: [],
    notes: "Evening event.",
  },

  // ------------------------------------------------------------
  // OCTOBER 2025
  // Source: School Schedule MASTER COPY - October 2025.pdf
  // ------------------------------------------------------------
  {
    id: "2025-10-01-our-saviors-day-1-1-team-30irm",
    date: "2025-10-01",
    sourceTitle: "Our Saviors Day 1 (1 Team) 30IRM",
    canonicalSchoolName: "Our Saviors",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Beth"],
    assistants: [],
    features: [],
    notes: "Emily edit day.",
  },
  {
    id: "2025-10-01-wonderland-day-1-req-lauren-20irm",
    date: "2025-10-01",
    sourceTitle: "Wonderland Day 1 (Req Lauren) 20IRM",
    canonicalSchoolName: "Wonderland",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Lauren"],
    assistants: [],
    features: [],
    notes: "Requested Lauren.",
  },
  {
    id: "2025-10-01-arongen-elementary-2-teams-87irm",
    date: "2025-10-01",
    sourceTitle: "Arongen Elementary (2 Teams) 87IRM",
    canonicalSchoolName: "Shen - Arongen",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Stephanie", "Andrew"],
    assistants: ["Victoria", "Meg"],
    features: [],
    notes: "Two-team day.",
  },
  {
    id: "2025-10-01-latham-christian-academy-1-team-8irm",
    date: "2025-10-01",
    sourceTitle: "Latham Christian Academy (1 Team) 8IRM",
    canonicalSchoolName: "Latham Christian Academy",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly"],
    assistants: [],
    features: [],
    notes: "One-team day.",
  },
  {
    id: "2025-10-01-alloya-headshot-studio-joey-giarmo-9am",
    date: "2025-10-01",
    sourceTitle: "Alloya Headshot Studio Joey Giarmo 9am",
    canonicalSchoolName: null,
    eventType: "Headshots",
    status: "Completed",
    photographers: ["Matt"],
    assistants: [],
    features: [],
    notes: "Studio headshot at 9am.",
  },
  {
    id: "2025-10-02-our-saviors-day-2-1-photog-30irm",
    date: "2025-10-02",
    sourceTitle: "Our Saviors Day 2 (1 Photog) 30IRM",
    canonicalSchoolName: "Our Saviors",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Beth"],
    assistants: [],
    features: [],
    notes: "Day 2.",
  },
  {
    id: "2025-10-02-wonderland-day-2-req-lauren-20-irm",
    date: "2025-10-02",
    sourceTitle: "Wonderland Day 2 (Req Lauren) 20 IRM",
    canonicalSchoolName: "Wonderland",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Lauren"],
    assistants: [],
    features: [],
    notes: "Requested Lauren. Andrew edit day.",
  },
  {
    id: "2025-10-02-hudson-valley-consortium-day-2-1-team-21irm",
    date: "2025-10-02",
    sourceTitle: "Hudson Valley Consortium Day 2 (1 Team) 21IRM",
    canonicalSchoolName: "Hudson Valley Consortium",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Emily"],
    assistants: [],
    features: [],
    notes: "Emily shoot 4 hours / edit 4 hours.",
  },
  {
    id: "2025-10-02-pleasant-valley-elementary-2-teams-27irm",
    date: "2025-10-02",
    sourceTitle: "Pleasant Valley Elementary (2 Teams) 27IRM",
    canonicalSchoolName: "Sch'tady - Pleasant Valley",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly", "Stephanie"],
    assistants: ["Victoria", "Jaime"],
    features: [],
    notes: "Two-team day.",
  },
  {
    id: "2025-10-03-heatly-school-1-team-34irm",
    date: "2025-10-03",
    sourceTitle: "Heatly School (1 Team) 34IRM",
    canonicalSchoolName: "Heatly School",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Beth"],
    assistants: ["Colleen"],
    features: ["Group Photos"],
    notes: "Colleen added per Homebase. No high school this year.",
  },
  {
    id: "2025-10-03-lincoln-elementary-2-teams-24irm",
    date: "2025-10-03",
    sourceTitle: "Lincoln Elementary (2 Teams?) 24IRM",
    canonicalSchoolName: "Sch'tady - Lincoln",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly"],
    assistants: ["Carmen", "Meg"],
    features: [],
    notes: "Steph anniversary.",
  },
  {
    id: "2025-10-03-jefferson-elementary-3-teams-204irm",
    date: "2025-10-03",
    sourceTitle: "Jefferson Elementary (3 Teams) 204IRM",
    canonicalSchoolName: "Schalmont - Jefferson Elem",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Stephanie", "Matt", "Andrew"],
    assistants: ["Simone", "Jaime"],
    features: [],
    notes: "Emily edit day. Large 3-team school day.",
  },
  {
    id: "2025-10-06-mother-teresa-academy-2-teams-42irm",
    date: "2025-10-06",
    sourceTitle: "Mother Teresa Academy (2 Teams) 42IRM",
    canonicalSchoolName: "Mother Theresa Academy",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Beth", "Andrew"],
    assistants: ["Emma"],
    features: [],
    notes: "No group photos until spring. Molly edit day. Added SP ES on 09/13. Normally 1 team; moved to two teams in Spring 2024.",
  },
  {
    id: "2025-10-06-van-corlaer-elementary-2-teams-51irm",
    date: "2025-10-06",
    sourceTitle: "Van Corlaer Elementary (2 Teams) 51IRM",
    canonicalSchoolName: "Sch'tady - Van Corlaer",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Stephanie", "Emily"],
    assistants: ["Victoria", "Meg"],
    features: [],
    notes: "Added VED MW on 09/13.",
  },
  {
    id: "2025-10-07-cohoes-high-school-day-1-1-team-20irm",
    date: "2025-10-07",
    sourceTitle: "Cohoes High School Day 1 (1 Team) 20IRM",
    canonicalSchoolName: "Cohoes High School",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: [],
    features: [],
    notes: "Day 1.",
  },
  {
    id: "2025-10-07-cohoes-senior-makeups",
    date: "2025-10-07",
    sourceTitle: "Cohoes Senior Makeups",
    canonicalSchoolName: "Cohoes Seniors",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Andrew", "Matt"],
    assistants: [],
    features: [],
    notes: "Emily and Beth edit day.",
  },
  {
    id: "2025-10-07-milton-terrace-elementary-2-teams-73irm",
    date: "2025-10-07",
    sourceTitle: "Milton Terrace Elementary (2 Teams) 73IRM",
    canonicalSchoolName: "B. Spa - Milton Terrace",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly", "Matt"],
    assistants: ["Meg", "Emma"],
    features: [],
    notes: "Added MW ES on 09/13.",
  },
  {
    id: "2025-10-07-sms-fall-photos-1-team-45irm",
    date: "2025-10-07",
    sourceTitle: "SMS Fall Photos (1 Team) 45IRM",
    canonicalSchoolName: "Saint Madeleine",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: ["Kristen"],
    features: [],
    notes: "Added SP on 09/13. SMS mapped to Saint Madeleine.",
  },
  {
    id: "2025-10-07-photobooth-desmond-hotel-4-6pm",
    date: "2025-10-07",
    sourceTitle: "Photobooth Desmond Hotel 4-6pm",
    canonicalSchoolName: null,
    eventType: "Photo Booth",
    status: "Completed",
    photographers: ["Lauren"],
    assistants: [],
    features: ["Photo Booth Add-On"],
    notes: "4-6pm at Desmond Hotel.",
  },
  {
    id: "2025-10-08-cohoes-high-school-day-2-1-team-20irm",
    date: "2025-10-08",
    sourceTitle: "Cohoes High School Day 2 (1 Team) 20IRM",
    canonicalSchoolName: "Cohoes High School",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: [],
    features: [],
    notes: "Day 2.",
  },
  {
    id: "2025-10-08-wonderland-rain-req-lauren",
    date: "2025-10-08",
    sourceTitle: "Wonderland Rain Req Lauren",
    canonicalSchoolName: "Wonderland",
    eventType: "Rain Date",
    status: "Completed",
    photographers: ["Lauren"],
    assistants: [],
    features: [],
    notes: "Rain date; Lauren requested.",
  },
  {
    id: "2025-10-08-cohoes-hs-fall-sports-afternoon",
    date: "2025-10-08",
    sourceTitle: "Cohoes HS Fall Sports Afternoon",
    canonicalSchoolName: null,
    eventType: "Sports",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: ["Emma"],
    features: [],
    notes: "Make sure Emma can get to Cohoes after Stevens.",
  },
  {
    id: "2025-10-08-malta-ave-elementary-2-teams-68irm",
    date: "2025-10-08",
    sourceTitle: "Malta Ave Elementary (2 Teams) 68IRM",
    canonicalSchoolName: "B. Spa - Malta Ave",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly", "Emily"],
    assistants: ["Victoria", "Meg"],
    features: [],
    notes: "Added SP ES on 09/13.",
  },
  {
    id: "2025-10-08-new-stevens-elementary-burnt-hills-2-teams-75irm",
    date: "2025-10-08",
    sourceTitle: "NEW Stevens Elementary [Burnt Hills] (2 Teams) ~75IRM",
    canonicalSchoolName: "Stevens Elementary",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Stephanie", "Beth"],
    assistants: ["Emma", "Jaime"],
    features: [],
    notes: "Added VED MW on 09/13.",
  },
  {
    id: "2025-10-08-matt-meeting-w-remove-bg-10am",
    date: "2025-10-08",
    sourceTitle: "Matt Meeting w/ Remove.bg 10AM",
    canonicalSchoolName: null,
    eventType: "Call or Meeting",
    status: "Completed",
    photographers: ["Matt"],
    assistants: [],
    features: [],
    notes: "10AM meeting.",
  },
  {
    id: "2025-10-08-hannaford-headshots-in-studio-1-45pm-start-2-30pm",
    date: "2025-10-08",
    sourceTitle: "Hannaford Headshots in-Studio 1:45pm START 2:30pm",
    canonicalSchoolName: null,
    eventType: "Headshots",
    status: "Completed",
    photographers: ["Matt"],
    assistants: [],
    features: [],
    notes: "1 at 1:45, rest at 2:30.",
  },
  {
    id: "2025-10-09-albany-academy-makeup-day",
    date: "2025-10-09",
    sourceTitle: "Albany Academy Makeup Day",
    canonicalSchoolName: "The Academies (AA/G)",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Molly"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-10-09-wonderland-rain-req-lauren",
    date: "2025-10-09",
    sourceTitle: "Wonderland RAIN Req Lauren",
    canonicalSchoolName: "Wonderland",
    eventType: "Rain Date",
    status: "Completed",
    photographers: ["Lauren"],
    assistants: [],
    features: [],
    notes: "Rain date; Lauren requested. Emily edit day.",
  },
  {
    id: "2025-10-09-gordon-creek-elementary-2-teams-102irm",
    date: "2025-10-09",
    sourceTitle: "Gordon Creek Elementary (2 Teams) 102IRM",
    canonicalSchoolName: "B. Spa - Gordon Creek",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Stephanie", "Matt"],
    assistants: ["Jaime", "Emma"],
    features: [],
    notes: "Added SP ES on 09/13.",
  },
  {
    id: "2025-10-09-okte-elementary-makeups-1-team",
    date: "2025-10-09",
    sourceTitle: "Okte Elementary Makeups (1 Team)",
    canonicalSchoolName: "Shen - Okte",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Lauren"],
    assistants: ["Simone"],
    features: [],
    notes: "Added SS on 09/13.",
  },
  {
    id: "2025-10-09-wood-road-elementary-2-teams-88irm",
    date: "2025-10-09",
    sourceTitle: "Wood Road Elementary (2 Teams) 88IRM",
    canonicalSchoolName: "B. Spa - Wood Road",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Beth", "Andrew"],
    assistants: ["Victoria", "Meg"],
    features: [],
    notes: "Added VED MW on 09/13.",
  },
  {
    id: "2025-10-09-duanesburg-soccer-senior-night",
    date: "2025-10-09",
    sourceTitle: "Duanesburg Soccer Senior Night",
    canonicalSchoolName: null,
    eventType: "Sports",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Sports senior night.",
  },
  {
    id: "2025-10-10-aw-becker-elementary-2-teams-71irm",
    date: "2025-10-10",
    sourceTitle: "AW Becker Elementary (2 Teams) 71IRM",
    canonicalSchoolName: "RCS - AW Becker",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly", "Beth"],
    assistants: ["Meg", "Emma"],
    features: [],
    notes: "Andrew edit day / Steph off if possible / Emily edit day. Added LR SP on 09/13.",
  },
  {
    id: "2025-10-11-off",
    date: "2025-10-11",
    sourceTitle: "OFF",
    canonicalSchoolName: null,
    eventType: "Special Event",
    status: "Completed",
    photographers: [],
    assistants: [],
    features: [],
    notes: "Steph off. Beth unavailable.",
  },
  {
    id: "2025-10-12-off",
    date: "2025-10-12",
    sourceTitle: "OFF",
    canonicalSchoolName: null,
    eventType: "Special Event",
    status: "Completed",
    photographers: [],
    assistants: [],
    features: [],
    notes: "Steph off. Beth unavailable.",
  },
  {
    id: "2025-10-13-columbus-day-edit-day-for-everyone",
    date: "2025-10-13",
    sourceTitle: "COLUMBUS DAY! EDIT DAY FOR EVERYONE!",
    canonicalSchoolName: null,
    eventType: "Edit Day",
    status: "Completed",
    photographers: ["Stephanie", "Matt", "Molly", "Beth", "Andrew", "Emily"],
    assistants: [],
    features: [],
    notes: "Edit day for everyone. Beth unavailable.",
  },
  {
    id: "2025-10-14-christ-the-king-elc-day-1-1-team-29irm",
    date: "2025-10-14",
    sourceTitle: "Christ the King ELC Day 1 (1 Team) 29IRM",
    canonicalSchoolName: "Christ the King",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Lauren"],
    assistants: [],
    features: [],
    notes: "Day 1.",
  },
  {
    id: "2025-10-14-arbor-hill-elementary-2-teams-22irm",
    date: "2025-10-14",
    sourceTitle: "Arbor Hill Elementary (2 Teams) 22IRM",
    canonicalSchoolName: "Albany - Arbor Hill",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly", "Andrew"],
    assistants: ["Victoria", "Meg"],
    features: [],
    notes: "Kristen emailed Carrie to find coverage due to daughter's appointment; forwarded to Milton.",
  },
  {
    id: "2025-10-14-eagle-point-elementary-2-teams-37irm",
    date: "2025-10-14",
    sourceTitle: "Eagle Point Elementary (2 Teams) 37IRM",
    canonicalSchoolName: "Albany - Eagle Point",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Matt", "Emily"],
    assistants: ["Carmen"],
    features: [],
    notes: "Two-team day.",
  },
  {
    id: "2025-10-14-shatekon-elementary-2-teams-81irm",
    date: "2025-10-14",
    sourceTitle: "Shatekon Elementary (2 Teams) 81IRM",
    canonicalSchoolName: "Shen - Shatekon",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Beth", "Stephanie"],
    assistants: ["Simone"],
    features: [],
    notes: "Two-team day.",
  },
  {
    id: "2025-10-15-christ-the-king-elc-day-2-1-team-29irm",
    date: "2025-10-15",
    sourceTitle: "Christ the King ELC Day 2 (1 Team) 29IRM",
    canonicalSchoolName: "Christ the King",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Lauren"],
    assistants: [],
    features: [],
    notes: "Tough day for assistants; can CTK go without?",
  },
  {
    id: "2025-10-15-hackett-middle-school-day-1-2-teams-27irm",
    date: "2025-10-15",
    sourceTitle: "Hackett Middle School Day 1 (2 Teams) 27IRM",
    canonicalSchoolName: "Albany - Hackett",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Stephanie", "Emily"],
    assistants: ["Victoria", "Meg"],
    features: [],
    notes: "Day 1.",
  },
  {
    id: "2025-10-15-cairo-elementary-makeups-1-photog",
    date: "2025-10-15",
    sourceTitle: "Cairo Elementary Makeups (1 Photog)",
    canonicalSchoolName: "Cairo-Durham Elem",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Molly"],
    assistants: [],
    features: [],
    notes: "Makeups.",
  },
  {
    id: "2025-10-15-cairo-ms-hs-makeups-1-photog",
    date: "2025-10-15",
    sourceTitle: "Cairo MS/HS Makeups (1 Photog)",
    canonicalSchoolName: "Cairo-Durham MS/HS",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: [],
    features: [],
    notes: "Makeups.",
  },
  {
    id: "2025-10-15-rosendale-elementary-makeups-1-team",
    date: "2025-10-15",
    sourceTitle: "Rosendale Elementary Makeups (1 Team)",
    canonicalSchoolName: "Nisky - Rosendale Elem",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Beth"],
    assistants: ["Carmen"],
    features: [],
    notes: "Makeups.",
  },
  {
    id: "2025-10-16-hoosic-ms-hs-makeups-1-team",
    date: "2025-10-16",
    sourceTitle: "Hoosic MS/HS Makeups (1 Team)",
    canonicalSchoolName: "Hoosic Valley MS/HS",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Andrew", "Matt"],
    assistants: [],
    features: [],
    notes: "Emily edit day / Matt added for assistance on 9/23/25.",
  },
  {
    id: "2025-10-16-hackett-middle-school-day-2-2-teams-27irm",
    date: "2025-10-16",
    sourceTitle: "Hackett Middle School Day 2 (2 Teams) 27IRM",
    canonicalSchoolName: "Albany - Hackett",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Stephanie", "Beth"],
    assistants: ["Victoria", "Meg"],
    features: [],
    notes: "Day 2.",
  },
  {
    id: "2025-10-16-waterford-elementary-ms-hs-makeups-1-team",
    date: "2025-10-16",
    sourceTitle: "Waterford Elementary & MS/HS Makeups (1 Team)",
    canonicalSchoolName: "Waterford Halfmoon Elem",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Molly"],
    assistants: ["Kristen"],
    features: [],
    notes: "Covers Waterford Elementary and MS/HS makeups.",
  },
  {
    id: "2025-10-16-november-scheduling-call-8pm",
    date: "2025-10-16",
    sourceTitle: "NOVEMBER SCHEDULING CALL 8PM",
    canonicalSchoolName: null,
    eventType: "Call or Meeting",
    status: "Completed",
    photographers: [],
    assistants: [],
    features: [],
    notes: "Google Meet link in source PDF.",
  },
  {
    id: "2025-10-17-ash-elementary-school-2-teams-22irm",
    date: "2025-10-17",
    sourceTitle: "ASH Elementary School (2 Teams) 22IRM",
    canonicalSchoolName: "Albany - ASH",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly", "Emily"],
    assistants: ["Emma", "Kristen"],
    features: [],
    notes: "Changed from Jaime per Emma's confirmation.",
  },
  {
    id: "2025-10-17-blessed-sacrament-elementary-1-team-13irm",
    date: "2025-10-17",
    sourceTitle: "Blessed Sacrament Elementary (1 Team) 13IRM",
    canonicalSchoolName: "Blessed Sacrament",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: ["Victoria"],
    features: ["Composite"],
    notes: "Emailed new principal asking to switch to collages.",
  },
  {
    id: "2025-10-17-duanesburg-elementary-ms-hs-makeups-1-team",
    date: "2025-10-17",
    sourceTitle: "Duanesburg Elementary & MS/HS Makeups (1 Team)",
    canonicalSchoolName: "D'burg Elementary",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Bring drape and cap/gown. Jennifer Patino reshoot. Contact details preserved in source.",
  },
  {
    id: "2025-10-17-green-tech-makeups-1-photog",
    date: "2025-10-17",
    sourceTitle: "Green Tech Makeups (1 Photog)",
    canonicalSchoolName: "Green Tech MS/HS",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Beth"],
    assistants: [],
    features: [],
    notes: "Makeups.",
  },
  {
    id: "2025-10-18-wood-road-family-photos",
    date: "2025-10-18",
    sourceTitle: "Wood Road Family Photos",
    canonicalSchoolName: "B. Spa - Wood Road",
    eventType: "Family Photos",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Family photos.",
  },
  {
    id: "2025-10-19-off",
    date: "2025-10-19",
    sourceTitle: "OFF",
    canonicalSchoolName: null,
    eventType: "Special Event",
    status: "Completed",
    photographers: [],
    assistants: [],
    features: [],
    notes: "No scheduled items listed.",
  },
  {
    id: "2025-10-20-hamilton-elementary-school-2-teams-40irm",
    date: "2025-10-20",
    sourceTitle: "Hamilton Elementary School (2 Teams) 40IRM",
    canonicalSchoolName: "Hamilton Elementary",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly", "Andrew"],
    assistants: ["Simone", "Siena"],
    features: [],
    notes: "No Kristen.",
  },
  {
    id: "2025-10-20-new-learning-garden-childcare-latham-1-team-40irm",
    date: "2025-10-20",
    sourceTitle: "NEW Learning Garden Childcare Latham (1 Team) ~40IRM",
    canonicalSchoolName: "Learning Garden Childcare Latham",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Lauren"],
    assistants: ["Victoria"],
    features: [],
    notes: "New account.",
  },
  {
    id: "2025-10-20-northville-makeup-day-1-team",
    date: "2025-10-20",
    sourceTitle: "Northville Makeup Day (1 Team)",
    canonicalSchoolName: "Northville",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Emily edit day.",
  },
  {
    id: "2025-10-20-northville-2-45pm-senior-makeup-czadzeck-rylan",
    date: "2025-10-20",
    sourceTitle: "Northville 2:45pm Senior Makeup Czadzeck, Rylan",
    canonicalSchoolName: "Northville",
    eventType: "Seniors",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Senior makeup at 2:45pm. Contact details preserved in source.",
  },
  {
    id: "2025-10-20-sara-marie-preschool-1-team-45irm",
    date: "2025-10-20",
    sourceTitle: "Sara Marie Preschool (1 Team) 45IRM",
    canonicalSchoolName: "Sara Marie Preschool",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Beth"],
    assistants: [],
    features: [],
    notes: "No assistant.",
  },
  {
    id: "2025-10-21-myers-middle-school-day-1-2-teams-18irm",
    date: "2025-10-21",
    sourceTitle: "Myers Middle School Day 1 (2 Teams) 18IRM",
    canonicalSchoolName: "Albany - Myers",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Andrew", "Beth"],
    assistants: [],
    features: [],
    notes: "Day 1.",
  },
  {
    id: "2025-10-21-new-learning-garden-childcare-slingerlands-2-teams-40ir",
    date: "2025-10-21",
    sourceTitle: "NEW Learning Garden Childcare Slingerlands (2 teams?) ~40IRM",
    canonicalSchoolName: "Learning Garden Childcare Slingerlands",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Emily", "Lauren"],
    assistants: ["Siena", "Kristen"],
    features: [],
    notes: "125 students.",
  },
  {
    id: "2025-10-21-new-lebanon-jr-sr-high-school-1-team-16irm",
    date: "2025-10-21",
    sourceTitle: "New Lebanon Jr/Sr High School (1 Team) 16IRM",
    canonicalSchoolName: "New Lebanon Jr/Sr High School",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Stephanie", "Matt"],
    assistants: [],
    features: [],
    notes: "Molly edit day.",
  },
  {
    id: "2025-10-21-new-lebanon-seniors",
    date: "2025-10-21",
    sourceTitle: "New Lebanon Seniors",
    canonicalSchoolName: "New Lebanon Seniors",
    eventType: "Seniors",
    status: "Completed",
    photographers: ["Stephanie", "Matt"],
    assistants: [],
    features: [],
    notes: "Senior portraits.",
  },
  {
    id: "2025-10-22-myers-middle-school-day-2-2-teams-18irm",
    date: "2025-10-22",
    sourceTitle: "Myers Middle School Day 2 (2 Teams) 18IRM",
    canonicalSchoolName: "Albany - Myers",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Andrew", "Molly"],
    assistants: [],
    features: [],
    notes: "Day 2.",
  },
  {
    id: "2025-10-22-loudonville-christian-makeups-senior-makeups-1-photog",
    date: "2025-10-22",
    sourceTitle: "Loudonville Christian Makeups & Senior Makeups (1 Photog)",
    canonicalSchoolName: "Loudonville Christian",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Emily", "Matt"],
    assistants: [],
    features: [],
    notes: "Emily shoot 4 hours / Emily edit 4 hours.",
  },
  {
    id: "2025-10-22-skano-elementary-makeups-1-team",
    date: "2025-10-22",
    sourceTitle: "Skano Elementary Makeups (1 Team)",
    canonicalSchoolName: "Shen - Skano",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: ["Siena"],
    features: [],
    notes: "Makeups.",
  },
  {
    id: "2025-10-22-walter-b-howard-makeups-1-photog",
    date: "2025-10-22",
    sourceTitle: "Walter B Howard Makeups (1 Photog)",
    canonicalSchoolName: "Walter B Howard",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Beth"],
    assistants: ["Siena"],
    features: [],
    notes: "Makeups.",
  },
  {
    id: "2025-10-22-senior-night-townhouse-family-pics-6-8-pm",
    date: "2025-10-22",
    sourceTitle: "Senior Night Townhouse Family Pics 6-8 PM",
    canonicalSchoolName: null,
    eventType: "Family Photos",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "6-8 PM.",
  },
  {
    id: "2025-10-23-gardner-dickinson-makeups-1-photog",
    date: "2025-10-23",
    sourceTitle: "Gardner-Dickinson Makeups (1 Photog)",
    canonicalSchoolName: "Gardner Dickinson",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Emily"],
    assistants: [],
    features: [],
    notes: "Makeups.",
  },
  {
    id: "2025-10-23-glencliff-elementary-makeups-1-photog",
    date: "2025-10-23",
    sourceTitle: "Glencliff Elementary Makeups (1 Photog)",
    canonicalSchoolName: "Glencliff Elementary",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Beth"],
    assistants: [],
    features: [],
    notes: "Makeups.",
  },
  {
    id: "2025-10-23-yates-elementary-2-teams-33irm",
    date: "2025-10-23",
    sourceTitle: "Yates Elementary (2 teams?) 33IRM",
    canonicalSchoolName: "Sch'tady - Yates",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Andrew", "Molly"],
    assistants: ["Siena", "Kristen"],
    features: [],
    notes: "Siena can do this day. Switched off MW on 10/11.",
  },
  {
    id: "2025-10-23-karigon-elementary-makeups-1-photog",
    date: "2025-10-23",
    sourceTitle: "Karigon Elementary Makeups (1 Photog)",
    canonicalSchoolName: "Shen - Karigon",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Shelby Kulls.",
  },
  {
    id: "2025-10-23-cha-headshot-studio-8-15",
    date: "2025-10-23",
    sourceTitle: "CHA Headshot Studio 8:15",
    canonicalSchoolName: "CHA",
    eventType: "Headshots",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Studio headshot at 8:15.",
  },
  {
    id: "2025-10-24-bkw-secondary-make-ups-1-team-7-30-arrival",
    date: "2025-10-24",
    sourceTitle: "BKW Secondary Make-ups (1 Team) 7:30 arrival",
    canonicalSchoolName: "BKW Secondary",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Matt", "Stephanie"],
    assistants: [],
    features: [],
    notes: "Andrew edit day / Beth edit day / Emily edit day. 7:30 arrival.",
  },
  {
    id: "2025-10-24-orenda-elementary-makeups",
    date: "2025-10-24",
    sourceTitle: "Orenda Elementary MAKEUPS",
    canonicalSchoolName: "Shen - Orenda",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Molly"],
    assistants: ["Siena"],
    features: [],
    notes: "Siena can do this day. Switched off SS on 10/11.",
  },
  {
    id: "2025-10-24-school-team-check-in-call-afternoon-3-00",
    date: "2025-10-24",
    sourceTitle: "School Team Check-in Call Afternoon 3:00",
    canonicalSchoolName: null,
    eventType: "Call or Meeting",
    status: "Completed",
    photographers: [],
    assistants: [],
    features: [],
    notes: "3:00 Google Meet link in source PDF.",
  },
  {
    id: "2025-10-24-academy-drone-photos-2-00",
    date: "2025-10-24",
    sourceTitle: "Academy Drone Photos 2:00",
    canonicalSchoolName: "The Academies (AA/G)",
    eventType: "Special Event",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Drone photos at 2:00.",
  },
  {
    id: "2025-10-25-off",
    date: "2025-10-25",
    sourceTitle: "OFF",
    canonicalSchoolName: null,
    eventType: "Special Event",
    status: "Completed",
    photographers: [],
    assistants: [],
    features: [],
    notes: "No scheduled items listed.",
  },
  {
    id: "2025-10-26-off",
    date: "2025-10-26",
    sourceTitle: "OFF",
    canonicalSchoolName: null,
    eventType: "Special Event",
    status: "Completed",
    photographers: [],
    assistants: [],
    features: [],
    notes: "No scheduled items listed.",
  },
  {
    id: "2025-10-27-two-by-two-nursery-school-1-photog-7irm",
    date: "2025-10-27",
    sourceTitle: "Two by Two Nursery School (1 Photog) 7IRM",
    canonicalSchoolName: "Two by Two Nursery School",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly"],
    assistants: [],
    features: [],
    notes: "One photographer.",
  },
  {
    id: "2025-10-27-kids-express-makeup",
    date: "2025-10-27",
    sourceTitle: "Kid's Express Makeup",
    canonicalSchoolName: "Kid's Express",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Matt"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-10-27-tesago-elementary-makeups",
    date: "2025-10-27",
    sourceTitle: "Tesago Elementary Makeups",
    canonicalSchoolName: "Shen - Tesago",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Emily", "Beth"],
    assistants: [],
    features: [],
    notes: "Emily 4 hour shoot / 4 hour edit.",
  },
  {
    id: "2025-10-27-wildwood-school-latham-1-team-17irm",
    date: "2025-10-27",
    sourceTitle: "Wildwood School - Latham (1 Team) 17IRM",
    canonicalSchoolName: "Wildwood School - Latham",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: [],
    features: [],
    notes: "One-team day.",
  },
  {
    id: "2025-10-28-two-by-two-nursery-school-1-photog-7irm",
    date: "2025-10-28",
    sourceTitle: "Two by Two Nursery School (1 Photog) 7IRM",
    canonicalSchoolName: "Two by Two Nursery School",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly"],
    assistants: [],
    features: [],
    notes: "One photographer.",
  },
  {
    id: "2025-10-28-wildwood-school-curry-road-1-team-17irm",
    date: "2025-10-28",
    sourceTitle: "Wildwood School - Curry Road (1 Team) 17IRM",
    canonicalSchoolName: "Wildwood School - Curry Road",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Andrew", "Emily"],
    assistants: [],
    features: [],
    notes: "Emily added.",
  },
  {
    id: "2025-10-28-cohoes-makeups-seniors",
    date: "2025-10-28",
    sourceTitle: "Cohoes Makeups & Seniors",
    canonicalSchoolName: "Cohoes High School",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Beth", "Stephanie", "Matt"],
    assistants: [],
    features: [],
    notes: "Matt covering for Steph's first hour due to Chamber board meeting.",
  },
  {
    id: "2025-10-28-chamber-board-meeting",
    date: "2025-10-28",
    sourceTitle: "Chamber Board Meeting",
    canonicalSchoolName: null,
    eventType: "Call or Meeting",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Chamber board meeting.",
  },
  {
    id: "2025-10-28-taylor-klefbeck-senior-bkw-make-up-after-cohoes",
    date: "2025-10-28",
    sourceTitle: "Taylor Klefbeck Senior BKW make up after Cohoes",
    canonicalSchoolName: "BKW Secondary",
    eventType: "Seniors",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Senior makeup after Cohoes.",
  },
  {
    id: "2025-10-29-hold-tsl-rotterdam-1-photog-req-lauren",
    date: "2025-10-29",
    sourceTitle: "HOLD TSL Rotterdam (1 Photog REQ LAUREN)",
    canonicalSchoolName: "TSL Rotterdam",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Emily"],
    assistants: [],
    features: [],
    notes: "Moved to Nov 24. Requested Lauren. Emily 4 hour shoot / 4 hour edit.",
  },
  {
    id: "2025-10-29-wildwood-school-curry-road-17irm",
    date: "2025-10-29",
    sourceTitle: "Wildwood School - Curry Road 17IRM",
    canonicalSchoolName: "Wildwood School - Curry Road",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Andrew", "Emily"],
    assistants: [],
    features: [],
    notes: "Emily added 10/21/25.",
  },
  {
    id: "2025-10-29-keane-elementary-2-teams-40irm",
    date: "2025-10-29",
    sourceTitle: "Keane Elementary (2 Teams) 40IRM",
    canonicalSchoolName: "Sch'tady - Keane",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly", "Beth"],
    assistants: ["Victoria", "Carmen"],
    features: [],
    notes: "At least 2 photographers and 1 assistant.",
  },
  {
    id: "2025-10-29-pieter-b-coeymans-2-teams-85irm",
    date: "2025-10-29",
    sourceTitle: "Pieter B Coeymans (2 Teams) 85IRM",
    canonicalSchoolName: "RCS - Pieter B Coeymans",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Matt", "Stephanie"],
    assistants: ["Lauren"],
    features: [],
    notes: "Matt's mom. No Kristen. Steph appointment at 3:00.",
  },
  {
    id: "2025-10-29-steph-appointment-3-00-so-i-dont-forget",
    date: "2025-10-29",
    sourceTitle: "Steph Appointment 3:00 so I don't forget",
    canonicalSchoolName: null,
    eventType: "Call or Meeting",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "3:00 appointment.",
  },
  {
    id: "2025-10-30-arongen-makeup-day-1-team",
    date: "2025-10-30",
    sourceTitle: "Arongen Makeup Day (1 Team)",
    canonicalSchoolName: "Shen - Arongen",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-10-30-nathan-lebron-elc-1-team-7irm",
    date: "2025-10-30",
    sourceTitle: "Nathan Lebron ELC (1 Team) 7IRM",
    canonicalSchoolName: "Nathan Lebron ELC",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly", "Emily", "Beth"],
    assistants: [],
    features: ["Group Photos"],
    notes: "Class pictures. Beth taking Lauren's spot since Zoller rescheduled. Group pics confirmed 10/17.",
  },
  {
    id: "2025-10-30-zoller-elementary-2-teams-55irm",
    date: "2025-10-30",
    sourceTitle: "Zoller Elementary (2 Teams) 55IRM",
    canonicalSchoolName: "Sch'tady - Zoller",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Andrew", "Beth"],
    assistants: ["Jaime", "Kristen"],
    features: [],
    notes: "School moved date to December on 10/6/25.",
  },
  {
    id: "2025-10-30-alloya-headshot-9am",
    date: "2025-10-30",
    sourceTitle: "Alloya Headshot 9am",
    canonicalSchoolName: null,
    eventType: "Headshots",
    status: "Completed",
    photographers: ["Matt"],
    assistants: [],
    features: [],
    notes: "Studio headshot at 9am.",
  },
  {
    id: "2025-10-30-calvary-methodist-preschool-am-lauren-or-carmen",
    date: "2025-10-30",
    sourceTitle: "Calvary Methodist Preschool AM (Lauren or Carmen)",
    canonicalSchoolName: "Calvary Methodist Preschool",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: [],
    features: [],
    notes: "Trying to book at SM's request on 10/22/25.",
  },
  {
    id: "2025-10-31-halloween-edit-day-for-everyone",
    date: "2025-10-31",
    sourceTitle: "HALLOWEEN EDIT DAY FOR EVERYONE!",
    canonicalSchoolName: null,
    eventType: "Edit Day",
    status: "Completed",
    photographers: ["Stephanie", "Matt", "Molly", "Beth", "Andrew", "Emily"],
    assistants: [],
    features: [],
    notes: "Halloween edit day for everyone.",
  },
  {
    id: "2025-10-31-rosie-macdonald-senior-photos-am",
    date: "2025-10-31",
    sourceTitle: "Rosie MacDonald Senior Photos AM",
    canonicalSchoolName: null,
    eventType: "Seniors",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Senior photos AM.",
  },

  // ------------------------------------------------------------
  // NOVEMBER 2025
  // ------------------------------------------------------------
  {
    id: "2025-11-01-mohawk-valley-timber-frame-architectural-shoot",
    date: "2025-11-01",
    sourceTitle: "Mohawk Valley Timber Frame Architectural Shoot",
    canonicalSchoolName: null,
    eventType: "Special Event",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Architectural shoot.",
  },
  {
    id: "2025-11-03-lca-makeups",
    date: "2025-11-03",
    sourceTitle: "LCA Makeups 8IRM",
    canonicalSchoolName: "Latham Christian Academy",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Matt"],
    assistants: [],
    features: [],
    notes: "Emily edit day.",
  },
  {
    id: "2025-11-03-lincoln-elementary-makeups",
    date: "2025-11-03",
    sourceTitle: "Lincoln Elementary Makeups 24IRM",
    canonicalSchoolName: "Sch'tady - Lincoln",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Molly"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-11-03-siena-career-fair",
    date: "2025-11-03",
    sourceTitle: "Siena Career Fair 12:30-2",
    canonicalSchoolName: null,
    eventType: "Special Event",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Career fair 12:30-2.",
  },
  {
    id: "2025-11-03-troy-school-14",
    date: "2025-11-03",
    sourceTitle: "Troy School 14 Elementary (2 Teams) 47IRM",
    canonicalSchoolName: "Troy School 14",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Beth", "Andrew"],
    assistants: ["Siena", "Meg"],
    features: [],
    notes: "Two-team picture day.",
  },
  {
    id: "2025-11-04-destine-prep-charter-school",
    date: "2025-11-04",
    sourceTitle: "Destine Prep Charter School (2 Teams) 17IRM",
    canonicalSchoolName: "Destine Prep Charter School",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Emily", "Beth"],
    assistants: ["Kristen", "Siena"],
    features: [],
    notes: "Two-team picture day.",
  },
  {
    id: "2025-11-04-airline-drive-academy",
    date: "2025-11-04",
    sourceTitle: "Airline Drive Academy (1 Team) 7IRM",
    canonicalSchoolName: "Airline Drive Academy",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "One-team picture day.",
  },
  {
    id: "2025-11-04-hudson-valley-consortium-makeups",
    date: "2025-11-04",
    sourceTitle: "Hudson Valley Consortium Makeups (1 Photog) 21IRM",
    canonicalSchoolName: "Hudson Valley Consortium",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Molly"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-11-04-maywood-academy-boces",
    date: "2025-11-04",
    sourceTitle: "Maywood Academy BOCES (1 Team) 10IRM",
    canonicalSchoolName: null,
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: [],
    features: [],
    notes: "No assistant.",
  },
  {
    id: "2025-11-05-little-achievers-preschool-day1",
    date: "2025-11-05",
    sourceTitle: "Little Achiever's Preschool (1 Team) DAY 1",
    canonicalSchoolName: "Little Achiever's Preschool",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly"],
    assistants: [],
    features: [],
    notes: "Day 1. 100 students.",
  },
  {
    id: "2025-11-05-tsl-kids-crew-troy",
    date: "2025-11-05",
    sourceTitle: "TSL Kid's Crew, Troy (REQ: Lauren)",
    canonicalSchoolName: "TSL Kid's Crew Troy",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Lauren"],
    assistants: [],
    features: [],
    notes: "Requested Lauren.",
  },
  {
    id: "2025-11-05-milton-terrace-makeups",
    date: "2025-11-05",
    sourceTitle: "Milton Terrace Elementary Makeups (1 Team?)",
    canonicalSchoolName: "B. Spa - Milton Terrace",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Matt"],
    assistants: [],
    features: [],
    notes: "Andrew edit day / Emily edit day.",
  },
  {
    id: "2025-11-05-pleasant-valley-makeups",
    date: "2025-11-05",
    sourceTitle: "Pleasant Valley Elementary Makeups (1 Team?)",
    canonicalSchoolName: "Sch'tady - Pleasant Valley",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-11-05-wood-road-makeups",
    date: "2025-11-05",
    sourceTitle: "Wood Road Makeups (1 Team?)",
    canonicalSchoolName: "B. Spa - Wood Road",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Beth"],
    assistants: [],
    features: [],
    notes: "Gwendolyn Goodbreed from Gordon Creek is a MOVE student who will be photographed this day; note that she is not a Wood Road student.",
  },
  {
    id: "2025-11-06-little-achievers-preschool-day2",
    date: "2025-11-06",
    sourceTitle: "Little Achiever's Preschool (1 Team) DAY 2",
    canonicalSchoolName: "Little Achiever's Preschool",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly"],
    assistants: [],
    features: [],
    notes: "Day 2. Steph off. 100 students.",
  },
  {
    id: "2025-11-06-central-park-middle-school-day1",
    date: "2025-11-06",
    sourceTitle: "Central Park Middle School (2 Teams) DAY 1",
    canonicalSchoolName: "Central Park Middle School",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Emily", "Andrew"],
    assistants: [],
    features: [],
    notes: "Day 1.",
  },
  {
    id: "2025-11-06-chango-makeup-day",
    date: "2025-11-06",
    sourceTitle: "Chango Makeup Day (1 Team)",
    canonicalSchoolName: "Shen - Chango (NEW)",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Beth"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-11-06-little-scholars-viaport",
    date: "2025-11-06",
    sourceTitle: "Little Scholars Viaport (1 Team)",
    canonicalSchoolName: "Little Scholars Viaport",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Lauren"],
    assistants: [],
    features: [],
    notes: "Steph can do edits.",
  },
  {
    id: "2025-11-06-our-saviors-makeup-day",
    date: "2025-11-06",
    sourceTitle: "Our Saviors Makeup Day (1 Photog)",
    canonicalSchoolName: "Our Saviors",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Matt"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-11-07-clifton-park-center-baptist-church",
    date: "2025-11-07",
    sourceTitle: "Clifton Park Center Baptist Church (1 Photog)",
    canonicalSchoolName: "Clifton Park Center Baptist Church",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Beth"],
    assistants: [],
    features: [],
    notes: "One-photographer picture day.",
  },
  {
    id: "2025-11-07-central-park-middle-school-day2",
    date: "2025-11-07",
    sourceTitle: "Central Park Middle School (2 Teams) DAY 2",
    canonicalSchoolName: "Central Park Middle School",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Emily", "Andrew"],
    assistants: [],
    features: [],
    notes: "Day 2.",
  },
  {
    id: "2025-11-07-heatly-makeups",
    date: "2025-11-07",
    sourceTitle: "Heatly Makeups (1 Photog)",
    canonicalSchoolName: "Heatly School",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Matt"],
    assistants: [],
    features: ["Group Photos"],
    notes: "8th grade class picture.",
  },
  {
    id: "2025-11-07-jefferson-elementary-makeups",
    date: "2025-11-07",
    sourceTitle: "Jefferson Elementary Makeups (1 Team)",
    canonicalSchoolName: "Schalmont - Jefferson Elem",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-11-07-craig-elementary-makeups",
    date: "2025-11-07",
    sourceTitle: "Craig Elementary Makeups (1 Team)",
    canonicalSchoolName: "Nisky - Craig Elem",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Molly"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-11-07-rebecca-trainor-family-session",
    date: "2025-11-07",
    sourceTitle: "Rebecca Trainor Family Session after school (4-ish) Academy campus",
    canonicalSchoolName: null,
    eventType: "Family Photos",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Family session after school around 4-ish at Academy campus.",
  },
  {
    id: "2025-11-07-gary-crewell-cha-headshot",
    date: "2025-11-07",
    sourceTitle: "Gary Crewell CHA Headshot 2:30",
    canonicalSchoolName: null,
    eventType: "Headshots",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "CHA headshot at 2:30.",
  },
  {
    id: "2025-11-10-december-scheduling-call-morning",
    date: "2025-11-10",
    sourceTitle: "December Scheduling Call Morning 9am",
    canonicalSchoolName: null,
    eventType: "Call or Meeting",
    status: "Completed",
    photographers: [],
    assistants: [],
    features: [],
    notes: "Emily edit day. December scheduling call at 9am.",
  },
  {
    id: "2025-11-10-albany-law-headshots",
    date: "2025-11-10",
    sourceTitle: "Albany Law Headshots 10-2",
    canonicalSchoolName: null,
    eventType: "Headshots",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Headshots from 10-2.",
  },
  {
    id: "2025-11-10-torres-wedding-consult",
    date: "2025-11-10",
    sourceTitle: "Torres Wedding Consult 4:00",
    canonicalSchoolName: null,
    eventType: "Call or Meeting",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Wedding consult at 4:00. Meeting link in source PDF.",
  },
  {
    id: "2025-11-11-veterans-day",
    date: "2025-11-11",
    sourceTitle: "Veteran's Day",
    canonicalSchoolName: null,
    eventType: "Special Event",
    status: "Completed",
    photographers: [],
    assistants: [],
    features: [],
    notes: "Veteran's Day. Emily edit day.",
  },
  {
    id: "2025-11-11-brandt-family-photos",
    date: "2025-11-11",
    sourceTitle: "Brandt Family Photos",
    canonicalSchoolName: null,
    eventType: "Family Photos",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Family photos.",
  },
  {
    id: "2025-11-12-aw-becker-makeups",
    date: "2025-11-12",
    sourceTitle: "AW Becker Makeups (1 Photog)",
    canonicalSchoolName: "RCS - AW Becker",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Molly"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-11-12-mother-teresa-makeups",
    date: "2025-11-12",
    sourceTitle: "Mother Teresa Academy Makeups (1 Photog)",
    canonicalSchoolName: "Mother Theresa Academy",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-11-12-saint-madeline-sophie-makeups",
    date: "2025-11-12",
    sourceTitle: "Saint Madeline Sophie Makeups (1 Photog)",
    canonicalSchoolName: "Saint Madeleine",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Emily"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-11-12-shatekon-makeups",
    date: "2025-11-12",
    sourceTitle: "Shatekon Makeups (1 Photog?)",
    canonicalSchoolName: "Shen - Shatekon",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Beth"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-11-12-stevens-elementary-makeups",
    date: "2025-11-12",
    sourceTitle: "Stevens Elementary Makeups (1 Photog?)",
    canonicalSchoolName: "Stevens Elementary",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-11-12-december-scheduling-call-afternoon",
    date: "2025-11-12",
    sourceTitle: "December Scheduling Call Afternoon 3pm",
    canonicalSchoolName: null,
    eventType: "Call or Meeting",
    status: "Completed",
    photographers: [],
    assistants: [],
    features: [],
    notes: "December scheduling call at 3pm. Meeting link in source PDF.",
  },
  {
    id: "2025-11-13-albany-jcc-day1",
    date: "2025-11-13",
    sourceTitle: "Albany JCC DAY 1 (1 Team) 46IRM",
    canonicalSchoolName: "Albany JCC",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly", "Matt"],
    assistants: [],
    features: [],
    notes: "Day 1.",
  },
  {
    id: "2025-11-13-gordon-creek-makeups",
    date: "2025-11-13",
    sourceTitle: "Gordon Creek Makeups (1 Photog)",
    canonicalSchoolName: "B. Spa - Gordon Creek",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Emily"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-11-13-malta-ave-makeup-day",
    date: "2025-11-13",
    sourceTitle: "Malta Ave Makeup Day (1 Photog)",
    canonicalSchoolName: "B. Spa - Malta Ave",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-11-13-maple-leaf-burnt-hills",
    date: "2025-11-13",
    sourceTitle: "Maple Leaf Burnt Hills (2 Teams)",
    canonicalSchoolName: "Maple Leaf Burnt Hills",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Beth", "Andrew"],
    assistants: ["Lauren", "Victoria"],
    features: [],
    notes: "Two-team picture day.",
  },
  {
    id: "2025-11-13-malta-ave-family-photo-night",
    date: "2025-11-13",
    sourceTitle: "Malta Ave Family Photo Night",
    canonicalSchoolName: "B. Spa - Malta Ave",
    eventType: "Family Photos",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Family photo night.",
  },
  {
    id: "2025-11-14-albany-jcc-day2",
    date: "2025-11-14",
    sourceTitle: "Albany JCC DAY 2 (1 Team) 46IRM",
    canonicalSchoolName: "Albany JCC",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly", "Beth"],
    assistants: [],
    features: [],
    notes: "Day 2.",
  },
  {
    id: "2025-11-14-ash-makeups",
    date: "2025-11-14",
    sourceTitle: "ASH Makeups (1 Team)",
    canonicalSchoolName: "Albany - ASH",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Emily", "Matt"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-11-14-arbor-hill-makeups",
    date: "2025-11-14",
    sourceTitle: "Arbor Hill Elementary Makeups (1 Photog?)",
    canonicalSchoolName: "Albany - Arbor Hill",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-11-14-hackett-makeups",
    date: "2025-11-14",
    sourceTitle: "Hackett Makeups (1 Team)",
    canonicalSchoolName: "Albany - Hackett",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-11-14-academy-sports-day1",
    date: "2025-11-14",
    sourceTitle: "Academy Sports Day 1 (basketball, Swim, and prep hockey)",
    canonicalSchoolName: null,
    eventType: "Sports",
    status: "Completed",
    photographers: ["Stephanie", "Beth"],
    assistants: [],
    features: [],
    notes: "Academy sports day 1: basketball, swim, and prep hockey.",
  },
  {
    id: "2025-11-17-little-llamas-preschool-day1",
    date: "2025-11-17",
    sourceTitle: "Little Llamas Preschool Day 1 (1 Photog)",
    canonicalSchoolName: "Little Llamas Preschool",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Emily"],
    assistants: [],
    features: [],
    notes: "Day 1.",
  },
  {
    id: "2025-11-17-blessed-sacrament-makeups",
    date: "2025-11-17",
    sourceTitle: "Blessed Sacrament Makeups (1 Photog)",
    canonicalSchoolName: "Blessed Sacrament",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: [],
    features: [],
    notes: "Steph edit day.",
  },
  {
    id: "2025-11-17-maple-leaf-malta-south",
    date: "2025-11-17",
    sourceTitle: "Maple Leaf Malta South (2 Teams) 13IRM",
    canonicalSchoolName: "Maple Leaf Malta South",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly", "Beth"],
    assistants: ["Simone", "Siena"],
    features: [],
    notes: "Cut Meg.",
  },
  {
    id: "2025-11-18-little-llamas-preschool-day2",
    date: "2025-11-18",
    sourceTitle: "Little Llamas Preschool Day 2 (1 Photog)",
    canonicalSchoolName: "Little Llamas Preschool",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Emily"],
    assistants: [],
    features: [],
    notes: "Early shift. School cancelled second day per source note.",
  },
  {
    id: "2025-11-18-eagle-point-makeups",
    date: "2025-11-18",
    sourceTitle: "Eagle Point Makeups (1 Photog)",
    canonicalSchoolName: "Albany - Eagle Point",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-11-18-tsl-niskayuna-upk",
    date: "2025-11-18",
    sourceTitle: "TSL Niskayuna UPK (was PreK No Colonie/Latham) (1 Photog)",
    canonicalSchoolName: "TSL Niskayuna UPK",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: [],
    features: [],
    notes: "Molly edit day. Previously PreK No Colonie/Latham.",
  },
  {
    id: "2025-11-18-tsl-delmar",
    date: "2025-11-18",
    sourceTitle: "TSL Delmar (1 Team)",
    canonicalSchoolName: "TSL Delmar",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Beth"],
    assistants: [],
    features: [],
    notes: "3 and 4 year olds.",
  },
  {
    id: "2025-11-18-aw-becker-makeup-day-pt2",
    date: "2025-11-18",
    sourceTitle: "AW Becker Makeup Day Pt. 2",
    canonicalSchoolName: "RCS - AW Becker",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Matt"],
    assistants: [],
    features: [],
    notes: "Makeup day part 2.",
  },
  {
    id: "2025-11-18-alicia-pepe-headshots",
    date: "2025-11-18",
    sourceTitle: "Alicia Pepe Headshots studio 1:00",
    canonicalSchoolName: null,
    eventType: "Headshots",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Studio headshots at 1:00.",
  },
  {
    id: "2025-11-19-precious-hearts-daycare",
    date: "2025-11-19",
    sourceTitle: "Precious Hearts Daycare NEW (1 Team)",
    canonicalSchoolName: "Precious Hearts Daycare",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Emily", "Matt"],
    assistants: [],
    features: ["Composite"],
    notes: "45 students, infant to 5, indoor winter theme, collages.",
  },
  {
    id: "2025-11-19-widdle-ones-childcare-center",
    date: "2025-11-19",
    sourceTitle: "Widdle Ones's Childcare Center NEW (1 Team)",
    canonicalSchoolName: "Widdle Ones's Childcare Center",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly", "Lauren"],
    assistants: [],
    features: ["Composite"],
    notes: "60 kids, infant to 5, holiday Christmas theme, Guilderland Carmen Road, sibling pics, collages.",
  },
  {
    id: "2025-11-19-poohs-corner-picture-day",
    date: "2025-11-19",
    sourceTitle: "Pooh's Corner Picture Day (1 Team?) 4IRM",
    canonicalSchoolName: "Pooh's Corner",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: [],
    features: [],
    notes: "Steph Binghamton.",
  },
  {
    id: "2025-11-19-tsl-east-greenbush",
    date: "2025-11-19",
    sourceTitle: "TSL East Greenbush (1 Photog) 2IRM",
    canonicalSchoolName: "TSL East Greenbush",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Beth"],
    assistants: [],
    features: [],
    notes: "20 kids.",
  },
  {
    id: "2025-11-19-binghamton-retake-day",
    date: "2025-11-19",
    sourceTitle: "Binghamton Retake Day",
    canonicalSchoolName: null,
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Binghamton retake day.",
  },
  {
    id: "2025-11-20-maple-leaf-halfmoon",
    date: "2025-11-20",
    sourceTitle: "Maple Leaf Halfmoon (2 Teams)",
    canonicalSchoolName: "Maple Leaf Halfmoon",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly", "Beth"],
    assistants: ["Kristen", "Cori"],
    features: [],
    notes: "Two-team picture day.",
  },
  {
    id: "2025-11-20-myers-ms-makeups",
    date: "2025-11-20",
    sourceTitle: "Myers MS Makeups (1 Team)",
    canonicalSchoolName: "Myers Middle School",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Andrew", "Matt"],
    assistants: [],
    features: [],
    notes: "Emily edit day.",
  },
  {
    id: "2025-11-20-schalmont-pk-woestina",
    date: "2025-11-20",
    sourceTitle: "Schalmont PK at Woestina Elementary Building (1 Team)",
    canonicalSchoolName: "Schalmont PK at Woestina",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "54 students, 3 and 4 years old, 3 classes.",
  },
  {
    id: "2025-11-21-keane-makeups",
    date: "2025-11-21",
    sourceTitle: "Keane Makeups (1 Photog)",
    canonicalSchoolName: "Keane Elementary",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Emily"],
    assistants: [],
    features: [],
    notes: "Moved to Dec 2 per source note.",
  },
  {
    id: "2025-11-21-maple-leaf-malta-north",
    date: "2025-11-21",
    sourceTitle: "Maple Leaf Malta North (2 Teams)",
    canonicalSchoolName: "Maple Leaf Malta North",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly", "Lauren"],
    assistants: ["Carmen", "Siena"],
    features: [],
    notes: "Beth edit day. Cut Victoria.",
  },
  {
    id: "2025-11-21-new-lebanon-underclass-makeups-and-seniors",
    date: "2025-11-21",
    sourceTitle: "New Lebanon Underclass Makeups AND Seniors (1 Photog?)",
    canonicalSchoolName: "New Lebanon Jr/Sr High School",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Emily start in-studio.",
  },
  {
    id: "2025-11-21-yates-makeups",
    date: "2025-11-21",
    sourceTitle: "Yates Makeups (1 Photog)",
    canonicalSchoolName: "Yates Elementary",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: [],
    features: [],
    notes: "No assistant.",
  },
  {
    id: "2025-11-22-saratoga-girls-varsity-basketball-media-day",
    date: "2025-11-22",
    sourceTitle: "Saratoga Girls Varsity Basketball Media Day 9AM",
    canonicalSchoolName: null,
    eventType: "Sports",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Media day at 9AM.",
  },
  {
    id: "2025-11-23-confirmation-group-pic",
    date: "2025-11-23",
    sourceTitle: "Saint Madeleine and Saint Gabriel Confirmation Group Pic 1:30",
    canonicalSchoolName: null,
    eventType: "Special Event",
    status: "Completed",
    photographers: ["Matt"],
    assistants: [],
    features: ["Group Photos"],
    notes: "Confirmation group picture at 1:30. Steph off - family wedding.",
  },
  {
    id: "2025-11-24-tsl-kids-crew-scotia",
    date: "2025-11-24",
    sourceTitle: "TSL Kid's Crew (Scotia)",
    canonicalSchoolName: "TSL Kid's Crew Scotia",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Beth"],
    assistants: [],
    features: [],
    notes: "No assistant.",
  },
  {
    id: "2025-11-24-van-corlaer-makeups",
    date: "2025-11-24",
    sourceTitle: "Van Corlaer Makeups",
    canonicalSchoolName: "Sch'tady - Van Corlaer",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-11-24-wildwood-makeups",
    date: "2025-11-24",
    sourceTitle: "Wildwood Makeups",
    canonicalSchoolName: "Wildwood School",
    eventType: "Makeup Day",
    status: "Completed",
    photographers: ["Andrew"],
    assistants: [],
    features: [],
    notes: "Makeup day.",
  },
  {
    id: "2025-11-24-tsl-rotterdam-supercenter",
    date: "2025-11-24",
    sourceTitle: "TSL Rotterdam Supercenter (moved from 10/29) REQ Lauren",
    canonicalSchoolName: "TSL Rotterdam Supercenter",
    eventType: "Fall Picture Day",
    status: "Completed",
    photographers: ["Molly"],
    assistants: [],
    features: [],
    notes: "Requested Lauren. Moved from 10/29. No assistant.",
  },
  {
    id: "2025-11-25-academy-winter-sports-day2",
    date: "2025-11-25",
    sourceTitle: "Academy Winter Sports Day 2 (swim, table tennis, squash, track, skiing)",
    canonicalSchoolName: null,
    eventType: "Sports",
    status: "Completed",
    photographers: ["Stephanie", "Molly", "Matt"],
    assistants: [],
    features: [],
    notes: "Matt covering for Molly.",
  },
  {
    id: "2025-11-25-thomas-pest-control-headshots",
    date: "2025-11-25",
    sourceTitle: "Thomas Pest Control Headshots 10:45 set up",
    canonicalSchoolName: null,
    eventType: "Headshots",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "10:45 setup. No QRs.",
  },
  {
    id: "2025-11-25-alexis-safranko-headshots",
    date: "2025-11-25",
    sourceTitle: "Alexis Safranko Headshots STUDIO 9:00 am",
    canonicalSchoolName: null,
    eventType: "Headshots",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Studio headshots at 9:00 AM.",
  },
  {
    id: "2025-11-26-verstandig-engagement",
    date: "2025-11-26",
    sourceTitle: "Verstandig Engagement 8:30am",
    canonicalSchoolName: null,
    eventType: "Special Event",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Engagement session at 8:30 AM. Schools closed.",
  },
  {
    id: "2025-11-26-schools-closed",
    date: "2025-11-26",
    sourceTitle: "SCHOOLS CLOSED",
    canonicalSchoolName: null,
    eventType: "Special Event",
    status: "Completed",
    photographers: [],
    assistants: [],
    features: [],
    notes: "Schools closed.",
  },
  {
    id: "2025-11-26-andy-safranko-office-redecoration-consult",
    date: "2025-11-26",
    sourceTitle: "Andy Safranko office redecoration consult",
    canonicalSchoolName: null,
    eventType: "Call or Meeting",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "Office redecoration consult.",
  },
  {
    id: "2025-11-27-thanksgiving",
    date: "2025-11-27",
    sourceTitle: "THANKSGIVING SCHOOLS CLOSED",
    canonicalSchoolName: null,
    eventType: "Special Event",
    status: "Completed",
    photographers: [],
    assistants: [],
    features: [],
    notes: "Thanksgiving. Schools closed.",
  },
  {
    id: "2025-11-28-black-friday-schools-closed",
    date: "2025-11-28",
    sourceTitle: "BLACK FRIDAY SCHOOLS CLOSED",
    canonicalSchoolName: null,
    eventType: "Special Event",
    status: "Completed",
    photographers: [],
    assistants: [],
    features: [],
    notes: "Black Friday. Schools closed.",
  },
  {
    id: "2025-11-28-colonie-center-black-friday-event",
    date: "2025-11-28",
    sourceTitle: "Colonie Center Black Friday Event",
    canonicalSchoolName: null,
    eventType: "Special Event",
    status: "Completed",
    photographers: ["Lauren"],
    assistants: [],
    features: [],
    notes: "Black Friday event at Colonie Center.",
  },
  {
    id: "2025-11-30-dcs-6th-grade-family-photo-day",
    date: "2025-11-30",
    sourceTitle: "DCS 6th Grade Family Photo Day (Steph)",
    canonicalSchoolName: null,
    eventType: "Family Photos",
    status: "Completed",
    photographers: ["Stephanie"],
    assistants: [],
    features: [],
    notes: "DCS 6th Grade family photo day.",
  },

  // ------------------------------------------------------------
  // MAY 2026 — SPRING PICTURE DAYS
  // ------------------------------------------------------------
  {
    "id": "2026-05-03-siena-seniors",
    "date": "2026-05-03",
    "sourceTitle": "Siena Seniors",
    "canonicalSchoolName": null,
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "CC off."
  },
  {
    "id": "2026-05-04-siena-seniors",
    "date": "2026-05-04",
    "sourceTitle": "Siena Seniors",
    "canonicalSchoolName": null,
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "CC off."
  },
  {
    "id": "2026-05-04-little-achievers-day-1-1-photog",
    "date": "2026-05-04",
    "sourceTitle": "Little Achievers Day 1 (1 Photog)",
    "canonicalSchoolName": "Little Achievers",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-04-waterford-halfmoon-spring-photos-2-teams",
    "date": "2026-05-04",
    "sourceTitle": "Waterford-Halfmoon Spring Photos (2 Teams)",
    "canonicalSchoolName": "Waterford Halfmoon Elem",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew",
      "Molly"
    ],
    "assistants": [
      "Erin",
      "Carmen"
    ],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-04-tesago-5th-grade-pano-rain",
    "date": "2026-05-04",
    "sourceTitle": "Tesago 5th Grade Pano RAIN",
    "canonicalSchoolName": "Shen - Tesago",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Matt"
    ],
    "assistants": [],
    "features": [
      "Pano",
      "Rain Date"
    ],
    "notes": ""
  },
  {
    "id": "2026-05-04-maureen-parker-branding-3pm",
    "date": "2026-05-04",
    "sourceTitle": "Maureen Parker Branding 3pm",
    "canonicalSchoolName": null,
    "eventType": "Headshots",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [
      "Branding"
    ],
    "notes": ""
  },
  {
    "id": "2026-05-05-siena-seniors",
    "date": "2026-05-05",
    "sourceTitle": "Siena Seniors",
    "canonicalSchoolName": null,
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Erin"
    ],
    "assistants": [],
    "features": [],
    "notes": "Steph out of town. CC off."
  },
  {
    "id": "2026-05-05-little-achievers-day-2-1-photog",
    "date": "2026-05-05",
    "sourceTitle": "Little Achievers Day 2 (1 Photog)",
    "canonicalSchoolName": "Little Achievers",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [],
    "features": [],
    "notes": "Erin and Matt switched schools -MM 4/29/26"
  },
  {
    "id": "2026-05-05-widdle-ones-childcare-and-grads-1-team",
    "date": "2026-05-05",
    "sourceTitle": "Widdle Ones Childcare & Grads (1 Team)",
    "canonicalSchoolName": "Widdle Ones",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly"
    ],
    "assistants": [
      "Cori"
    ],
    "features": [
      "Grads"
    ],
    "notes": "~50 kids, infant - 4yr."
  },
  {
    "id": "2026-05-05-pieter-b-coeymans-spring-photos-2-teams",
    "date": "2026-05-05",
    "sourceTitle": "Pieter B Coeymans Spring Photos (2 Teams)",
    "canonicalSchoolName": "Pieter B Coeymans",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew",
      "Matt"
    ],
    "assistants": [
      "Lauren",
      "Victoria"
    ],
    "features": [],
    "notes": "Outdoor; push inside for bad weather."
  },
  {
    "id": "2026-05-06-siena-seniors-currently-blocked-no-bookings",
    "date": "2026-05-06",
    "sourceTitle": "Siena Seniors (Currently blocked no bookings)",
    "canonicalSchoolName": null,
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "Steph out of town."
  },
  {
    "id": "2026-05-06-loudonville-christian-spring-photos-pk-5-1-team",
    "date": "2026-05-06",
    "sourceTitle": "Loudonville Christian Spring Photos PK-5 (1 Team)",
    "canonicalSchoolName": "Loudonville Christian",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [
      "Cori"
    ],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-06-tsl-guilderland-1-team",
    "date": "2026-05-06",
    "sourceTitle": "TSL Guilderland (1 Team)",
    "canonicalSchoolName": "TSL Guilderland",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly"
    ],
    "assistants": [
      "Erin"
    ],
    "features": [],
    "notes": "Indoor with spring backdrop, 50 students, infants to 4yr."
  },
  {
    "id": "2026-05-07-siena-seniors-currently-blocked-no-bookings",
    "date": "2026-05-07",
    "sourceTitle": "Siena Seniors (Currently blocked no bookings)",
    "canonicalSchoolName": null,
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "Steph out of town."
  },
  {
    "id": "2026-05-07-albany-academy-spring-photos-1-team",
    "date": "2026-05-07",
    "sourceTitle": "Albany Academy Spring Photos (1 Team)",
    "canonicalSchoolName": "The Academies (AA/G)",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Matt"
    ],
    "assistants": [
      "Lauren"
    ],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-07-karigon-spring-photos-2-teams",
    "date": "2026-05-07",
    "sourceTitle": "Karigon Spring Photos (2 Teams)",
    "canonicalSchoolName": "Shen - Karigon",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth",
      "Molly"
    ],
    "assistants": [
      "Andrew",
      "Cori",
      "Meg"
    ],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-07-maple-leaf-malta-south-2-teams",
    "date": "2026-05-07",
    "sourceTitle": "Maple Leaf Malta South (2 Teams)",
    "canonicalSchoolName": "Maple Leaf Malta South",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew",
      "Erin",
      "Beth"
    ],
    "assistants": [
      "Victoria",
      "Carmen"
    ],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-07-big-bang-museum-of-science-1-photog-photobooth-6-9pm",
    "date": "2026-05-07",
    "sourceTitle": "Big Bang Museum of Science 1 Photog/Photobooth 6-9pm",
    "canonicalSchoolName": null,
    "eventType": "Photo Booth",
    "status": "Completed",
    "photographers": [
      "Lauren"
    ],
    "assistants": [],
    "features": [],
    "notes": "Museum of Science event, 6-9pm."
  },
  {
    "id": "2026-05-08-siena-seniors-currently-blocked-no-bookings",
    "date": "2026-05-08",
    "sourceTitle": "Siena Seniors (Currently blocked no bookings)",
    "canonicalSchoolName": null,
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "Steph out of town."
  },
  {
    "id": "2026-05-08-chango-5th-grade-photo-10-15am-1-photog",
    "date": "2026-05-08",
    "sourceTitle": "Chango 5th Grade Photo 10:15am (1 Photog)",
    "canonicalSchoolName": "Shen - Chango (NEW)",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly"
    ],
    "assistants": [],
    "features": [
      "Pano"
    ],
    "notes": ""
  },
  {
    "id": "2026-05-08-gardner-dickinson-spring-photos-2-teams",
    "date": "2026-05-08",
    "sourceTitle": "Gardner-Dickinson Spring Photos (2 Teams)",
    "canonicalSchoolName": "Gardner Dickinson",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew",
      "Erin"
    ],
    "assistants": [
      "Cori"
    ],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-08-pieter-b-coeymans-pano-rain",
    "date": "2026-05-08",
    "sourceTitle": "Pieter B Coeymans Pano RAIN",
    "canonicalSchoolName": "Pieter B Coeymans",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly"
    ],
    "assistants": [],
    "features": [
      "Pano",
      "Rain Date"
    ],
    "notes": ""
  },
  {
    "id": "2026-05-08-wood-road-spring-pictures-and-pano-2-teams",
    "date": "2026-05-08",
    "sourceTitle": "Wood Road Spring Pictures & Pano (2 Teams)",
    "canonicalSchoolName": "B. Spa - Wood Road",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth",
      "Matt"
    ],
    "assistants": [
      "Simone",
      "Lauren"
    ],
    "features": [
      "Pano"
    ],
    "notes": "Outdoor; push inside for bad weather."
  },
  {
    "id": "2026-05-09-rescheduling-dll-opening-day-3-photogs",
    "date": "2026-05-09",
    "sourceTitle": "RESCHEDULING: DLL Opening Day (3 Photogs)",
    "canonicalSchoolName": null,
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Beth",
      "Matt",
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "Steph out of town."
  },
  {
    "id": "2026-05-10-mother-s-day",
    "date": "2026-05-10",
    "sourceTitle": "MOTHER'S DAY",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "Steph out of town."
  },
  {
    "id": "2026-05-10-siena-photo-booth-6-8pm-studio",
    "date": "2026-05-10",
    "sourceTitle": "Siena Photo Booth 6-8pm STUDIO",
    "canonicalSchoolName": null,
    "eventType": "Photo Booth",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "Photo booth 6-8pm, studio."
  },
  {
    "id": "2026-05-11-colonie-community-daycare-1-photog",
    "date": "2026-05-11",
    "sourceTitle": "Colonie Community Daycare (1 Photog)",
    "canonicalSchoolName": "Colonie Community Daycare",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Erin",
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "36 students, outdoor."
  },
  {
    "id": "2026-05-11-eagle-point-5th-grade-group-photo-1-photog",
    "date": "2026-05-11",
    "sourceTitle": "Eagle Point 5th Grade Group Photo (1 Photog)",
    "canonicalSchoolName": "Albany - Eagle Point",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Matt"
    ],
    "assistants": [],
    "features": [
      "Group Photos"
    ],
    "notes": ""
  },
  {
    "id": "2026-05-11-milton-terrace-spring-photos-and-pano-2-photogs",
    "date": "2026-05-11",
    "sourceTitle": "Milton Terrace Spring Photos & Pano (2 Photogs)",
    "canonicalSchoolName": "B. Spa - Milton Terrace",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew",
      "Beth"
    ],
    "assistants": [
      "Lauren"
    ],
    "features": [
      "Pano"
    ],
    "notes": ""
  },
  {
    "id": "2026-05-11-wood-road-pano-rain-1-photog",
    "date": "2026-05-11",
    "sourceTitle": "Wood Road PANO RAIN (1 Photog)",
    "canonicalSchoolName": "B. Spa - Wood Road",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Matt"
    ],
    "assistants": [],
    "features": [
      "Pano",
      "Rain Date"
    ],
    "notes": ""
  },
  {
    "id": "2026-05-12-colonie-community-daycare-1-photog-rain",
    "date": "2026-05-12",
    "sourceTitle": "Colonie Community Daycare (1 Photog) RAIN",
    "canonicalSchoolName": "Colonie Community Daycare",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [
      "Rain Date"
    ],
    "notes": "Steph out of town."
  },
  {
    "id": "2026-05-12-happy-kids-daycare-1-photog",
    "date": "2026-05-12",
    "sourceTitle": "Happy Kids Daycare (1 Photog)",
    "canonicalSchoolName": "Happy Kids Daycare",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "No assistant. Outdoor; push inside if bad weather."
  },
  {
    "id": "2026-05-12-milton-terrace-pano-rain-1-photog",
    "date": "2026-05-12",
    "sourceTitle": "Milton Terrace PANO RAIN (1 Photog)",
    "canonicalSchoolName": "B. Spa - Milton Terrace",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [
      "Pano",
      "Rain Date"
    ],
    "notes": ""
  },
  {
    "id": "2026-05-12-st-madeleine-sophie-spring-and-5th-grade-group-1-team",
    "date": "2026-05-12",
    "sourceTitle": "St. Madeleine Sophie Spring & 5th Grade Group (1 Team)",
    "canonicalSchoolName": "Saint Madeleine",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [
      "Erin"
    ],
    "features": [
      "Group Photos"
    ],
    "notes": ""
  },
  {
    "id": "2026-05-12-aw-becker-5th-grade-group-pano",
    "date": "2026-05-12",
    "sourceTitle": "AW Becker 5th Grade Group Pano",
    "canonicalSchoolName": "RCS - AW Becker",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Lauren"
    ],
    "assistants": [],
    "features": [
      "Pano",
      "Group Photos"
    ],
    "notes": "5/7/26 school just booked to meet early yearbook deadline; per Steph, Lauren can shoot."
  },
  {
    "id": "2026-05-13-ash-spring-photos-and-5th-grade-grads-2-teams",
    "date": "2026-05-13",
    "sourceTitle": "ASH Spring Photos & 5th Grade Grads (2 Teams)",
    "canonicalSchoolName": "Albany - ASH",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew",
      "Molly"
    ],
    "assistants": [
      "Erin",
      "Matt"
    ],
    "features": [
      "Grads"
    ],
    "notes": ""
  },
  {
    "id": "2026-05-13-gordon-creek-5th-grade-pano-no-spring-pics",
    "date": "2026-05-13",
    "sourceTitle": "Gordon Creek 5th Grade Pano (NO SPRING PICS)",
    "canonicalSchoolName": "B. Spa - Gordon Creek",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [],
    "features": [
      "Pano"
    ],
    "notes": "We only photograph 5th grade pano at Gordon Creek, no spring photos."
  },
  {
    "id": "2026-05-13-karigon-pano-rain-1-photog",
    "date": "2026-05-13",
    "sourceTitle": "Karigon PANO RAIN (1 Photog)",
    "canonicalSchoolName": "Shen - Karigon",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [],
    "features": [
      "Pano",
      "Rain Date"
    ],
    "notes": ""
  },
  {
    "id": "2026-05-13-business-review-small-business-summit",
    "date": "2026-05-13",
    "sourceTitle": "Business Review Small Business Summit",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Source spelling: Smal Business Summit."
  },
  {
    "id": "2026-05-14-academy-athletic-hall-of-fame-6pm-1-photog",
    "date": "2026-05-14",
    "sourceTitle": "Academy Athletic Hall of Fame 6pm (1 Photog)",
    "canonicalSchoolName": "The Academies (AA/G)",
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-14-keane-5th-grade-pano-9am-1-photog",
    "date": "2026-05-14",
    "sourceTitle": "Keane 5th Grade Pano 9am (1 Photog)",
    "canonicalSchoolName": "Keane Elementary",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Matt"
    ],
    "assistants": [],
    "features": [
      "Pano"
    ],
    "notes": ""
  },
  {
    "id": "2026-05-14-maple-leaf-burnt-hills-glenville-and-grads-2-teams",
    "date": "2026-05-14",
    "sourceTitle": "Maple Leaf Burnt Hills/Glenville & GRADS (2 Teams)",
    "canonicalSchoolName": "Maple Leaf Burnt Hills",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth",
      "Erin"
    ],
    "assistants": [
      "Lauren",
      "Milton"
    ],
    "features": [
      "Grads"
    ],
    "notes": "Outdoor, push inside for bad weather, but wants outdoor. Later start if indoor."
  },
  {
    "id": "2026-05-14-maple-leaf-halfmoon-and-grads-2-teams",
    "date": "2026-05-14",
    "sourceTitle": "Maple Leaf Halfmoon & GRADS (2 Teams)",
    "canonicalSchoolName": "Maple Leaf Halfmoon",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly",
      "Andrew"
    ],
    "assistants": [
      "Carmen",
      "Simone"
    ],
    "features": [
      "Grads"
    ],
    "notes": "Indoor. Cap/gown quantity note in source."
  },
  {
    "id": "2026-05-14-charles-schwab-saratoga-branding-9am",
    "date": "2026-05-14",
    "sourceTitle": "Charles Schwab Saratoga Branding 9AM",
    "canonicalSchoolName": null,
    "eventType": "Headshots",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [
      "Branding"
    ],
    "notes": ""
  },
  {
    "id": "2026-05-15-academy-club-photos",
    "date": "2026-05-15",
    "sourceTitle": "Academy Club Photos",
    "canonicalSchoolName": "The Academies (AA/G)",
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-15-academy-reunion",
    "date": "2026-05-15",
    "sourceTitle": "Academy Reunion",
    "canonicalSchoolName": "The Academies (AA/G)",
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Ribbon cutting, class visit, Arts Hall of Fame, welcome reception."
  },
  {
    "id": "2026-05-15-jefferson-4th-grade-pano-1-photog",
    "date": "2026-05-15",
    "sourceTitle": "Jefferson 4th Grade Pano (1 Photog)",
    "canonicalSchoolName": "Schalmont - Jefferson Elem",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [],
    "features": [
      "Pano"
    ],
    "notes": ""
  },
  {
    "id": "2026-05-15-keane-5th-grade-pano-rain-1-photog",
    "date": "2026-05-15",
    "sourceTitle": "Keane 5th Grade Pano RAIN (1 Photog)",
    "canonicalSchoolName": "Keane Elementary",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Matt"
    ],
    "assistants": [],
    "features": [
      "Pano",
      "Rain Date"
    ],
    "notes": ""
  },
  {
    "id": "2026-05-15-june-scheduling-call-time-tbd",
    "date": "2026-05-15",
    "sourceTitle": "June Scheduling Call? Time TBD",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "Google Meet link in source. Schedule spring debrief."
  },
  {
    "id": "2026-05-16-academy-reunion",
    "date": "2026-05-16",
    "sourceTitle": "Academy Reunion",
    "canonicalSchoolName": "The Academies (AA/G)",
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Jane Lathrop Breakfast, BBQ, Old Guard Induction, possible class gatherings."
  },
  {
    "id": "2026-05-16-dll-opening-day-rain-3-photogs",
    "date": "2026-05-16",
    "sourceTitle": "DLL Opening Day Rain (3 Photogs)",
    "canonicalSchoolName": null,
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Beth",
      "Matt",
      "Molly"
    ],
    "assistants": [],
    "features": [
      "Rain Date"
    ],
    "notes": ""
  },
  {
    "id": "2026-05-17-andrew-off",
    "date": "2026-05-17",
    "sourceTitle": "ANDREW OFF",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": "Andrew off."
  },
  {
    "id": "2026-05-18-union-seniors",
    "date": "2026-05-18",
    "sourceTitle": "Union Seniors",
    "canonicalSchoolName": null,
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Erin",
      "Beth"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-18-ash-rain-date-2-photogs",
    "date": "2026-05-18",
    "sourceTitle": "ASH Rain Date (2 Photogs)",
    "canonicalSchoolName": "Albany - ASH",
    "eventType": "Rain Date",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "ASH rain date."
  },
  {
    "id": "2026-05-18-duanesburg-elementary-spring-photos-2-photogs",
    "date": "2026-05-18",
    "sourceTitle": "Duanesburg Elementary Spring Photos (2 Photogs)",
    "canonicalSchoolName": "D'burg Elementary",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew",
      "Stephanie"
    ],
    "assistants": [
      "Simone"
    ],
    "features": [],
    "notes": "Outdoor."
  },
  {
    "id": "2026-05-18-duanesburg-family-photo-night",
    "date": "2026-05-18",
    "sourceTitle": "Duanesburg Family Photo Night",
    "canonicalSchoolName": "D'burg Elementary",
    "eventType": "Family Photos",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-18-tabner-ryan-and-keniry-llp-headshots-9am",
    "date": "2026-05-18",
    "sourceTitle": "Tabner, Ryan & Keniry, LLP Headshots 9am",
    "canonicalSchoolName": null,
    "eventType": "Headshots",
    "status": "Completed",
    "photographers": [
      "Matt"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-19-union-seniors",
    "date": "2026-05-19",
    "sourceTitle": "Union Seniors",
    "canonicalSchoolName": null,
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Erin",
      "Beth"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-19-craig-elementary-5th-grade-pano-1-photog",
    "date": "2026-05-19",
    "sourceTitle": "Craig Elementary 5th Grade Pano (1 photog)",
    "canonicalSchoolName": "Nisky - Craig Elem",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [
      "Pano"
    ],
    "notes": "4/17/26 changed: only pano shot of 5th grade. Outdoor; push inside for bad weather. Need to scout location."
  },
  {
    "id": "2026-05-19-jefferson-4th-grade",
    "date": "2026-05-19",
    "sourceTitle": "Jefferson 4th Grade",
    "canonicalSchoolName": "Schalmont - Jefferson Elem",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [],
    "features": [
      "Pano"
    ],
    "notes": ""
  },
  {
    "id": "2026-05-19-green-tech-8th-grade-cap-gown-and-group-photo-and-some-seniors",
    "date": "2026-05-19",
    "sourceTitle": "Green Tech 8th grade cap/gown and group photo & Some Seniors",
    "canonicalSchoolName": "Green Tech MS/HS",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly",
      "Matt"
    ],
    "assistants": [],
    "features": [
      "Group Photos",
      "Cap/Gown"
    ],
    "notes": "Matt for seniors."
  },
  {
    "id": "2026-05-19-virtual-assistant-interviews-11-30",
    "date": "2026-05-19",
    "sourceTitle": "Virtual Assistant Interviews 11:30",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Steph and anyone else. Zoom details in source PDF."
  },
  {
    "id": "2026-05-19-redo-gordon-creek-5th-grade-pano-no-spring-pics-9-15",
    "date": "2026-05-19",
    "sourceTitle": "REDO Gordon Creek 5th Grade Pano (NO SPRING PICS) 9:15",
    "canonicalSchoolName": "B. Spa - Gordon Creek",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [
      "Pano"
    ],
    "notes": "5/14 wants an outdoor shot."
  },
  {
    "id": "2026-05-19-orange-theory-headshots-at-everett-2-30",
    "date": "2026-05-19",
    "sourceTitle": "Orange Theory Headshots at Everett 2:30",
    "canonicalSchoolName": null,
    "eventType": "Headshots",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-20-union-seniors",
    "date": "2026-05-20",
    "sourceTitle": "Union Seniors",
    "canonicalSchoolName": null,
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Erin",
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-20-ymca-learning-village-christ-the-king-pk-grads-1-team",
    "date": "2026-05-20",
    "sourceTitle": "YMCA Learning Village (Christ the King) PK Grads (1 Team)",
    "canonicalSchoolName": "Christ the King",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly"
    ],
    "assistants": [],
    "features": [
      "Grads"
    ],
    "notes": "No assistant."
  },
  {
    "id": "2026-05-20-tsl-rotterdam-and-grads",
    "date": "2026-05-20",
    "sourceTitle": "TSL Rotterdam & Grads",
    "canonicalSchoolName": "TSL Rotterdam",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [],
    "features": [
      "Grads"
    ],
    "notes": "No assistant. 13 students."
  },
  {
    "id": "2026-05-20-moved-keane-5th-grade-pano-10-15-1-photog",
    "date": "2026-05-20",
    "sourceTitle": "MOVED Keane 5th Grade Pano 10:15 (1 Photog)",
    "canonicalSchoolName": "Keane Elementary",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Matt"
    ],
    "assistants": [],
    "features": [
      "Pano"
    ],
    "notes": ""
  },
  {
    "id": "2026-05-20-4th-grade-tie-ceremony-8-30",
    "date": "2026-05-20",
    "sourceTitle": "4th Grade tie ceremony 8:30",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-20-virtual-assistant-interviews-4-00",
    "date": "2026-05-20",
    "sourceTitle": "Virtual Assistant Interviews 4:00",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Zoom link in source PDF."
  },
  {
    "id": "2026-05-21-union-seniors",
    "date": "2026-05-21",
    "sourceTitle": "Union Seniors",
    "canonicalSchoolName": null,
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Erin",
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-21-alex-bang-1-00",
    "date": "2026-05-21",
    "sourceTitle": "Alex Bang 1:00",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "Reminder during break."
  },
  {
    "id": "2026-05-21-craig-elementary-pano-rain",
    "date": "2026-05-21",
    "sourceTitle": "Craig Elementary PANO RAIN",
    "canonicalSchoolName": "Nisky - Craig Elem",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [
      "Pano",
      "Rain Date"
    ],
    "notes": ""
  },
  {
    "id": "2026-05-21-karigon-5th-grade-picnic-11-45am",
    "date": "2026-05-21",
    "sourceTitle": "Karigon 5th Grade Picnic 11:45am",
    "canonicalSchoolName": "Shen - Karigon",
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-21-live-photo-booth",
    "date": "2026-05-21",
    "sourceTitle": "Live photo booth",
    "canonicalSchoolName": null,
    "eventType": "Photo Booth",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-21-carrie-meeting-2-00",
    "date": "2026-05-21",
    "sourceTitle": "Carrie Meeting 2:00",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [
      "Carrie"
    ],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-22-union-seniors",
    "date": "2026-05-22",
    "sourceTitle": "Union Seniors",
    "canonicalSchoolName": null,
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Erin",
      "Matt"
    ],
    "assistants": [],
    "features": [],
    "notes": "Steph out of town."
  },
  {
    "id": "2026-05-22-guilderland-junior-prom-with-photo-booth",
    "date": "2026-05-22",
    "sourceTitle": "Guilderland Junior Prom with Photo Booth",
    "canonicalSchoolName": null,
    "eventType": "Photo Booth",
    "status": "Completed",
    "photographers": [
      "Molly"
    ],
    "assistants": [],
    "features": [
      "Prom"
    ],
    "notes": "5/6/26 added to master."
  },
  {
    "id": "2026-05-22-milton-lauren-matt-steph-2-00",
    "date": "2026-05-22",
    "sourceTitle": "Milton Lauren Matt Steph 2:00",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Lauren",
      "Matt",
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-22-account-manager-zoom-outdesk-12-00",
    "date": "2026-05-22",
    "sourceTitle": "Account Manager Zoom Outdesk 12:00",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-23-steph-out-of-town",
    "date": "2026-05-23",
    "sourceTitle": "STEPH OUT OF TOWN",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Steph out of town."
  },
  {
    "id": "2026-05-24-steph-out-of-town",
    "date": "2026-05-24",
    "sourceTitle": "STEPH OUT OF TOWN",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Steph out of town."
  },
  {
    "id": "2026-05-25-memorial-day",
    "date": "2026-05-25",
    "sourceTitle": "MEMORIAL DAY",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "Steph out of town. ERIN: In-Studio."
  },
  {
    "id": "2026-05-26-erin-in-studio",
    "date": "2026-05-26",
    "sourceTitle": "ERIN: In-Studio",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Erin"
    ],
    "assistants": [],
    "features": [],
    "notes": "Steph out of town."
  },
  {
    "id": "2026-05-27-aw-becker-elem-spring-photos-2-teams",
    "date": "2026-05-27",
    "sourceTitle": "AW Becker Elem Spring Photos (2 teams)",
    "canonicalSchoolName": "RCS - AW Becker",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly",
      "Erin",
      "Andrew",
      "Beth"
    ],
    "assistants": [],
    "features": [],
    "notes": "5/6/26 added back onto schedule, school confirmed new date. ERIN: AW Becker."
  },
  {
    "id": "2026-05-28-digital-xpress-8-30",
    "date": "2026-05-28",
    "sourceTitle": "Digital XPress 8:30",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Steph out of town."
  },
  {
    "id": "2026-05-28-erin-edit-day-aw-becker",
    "date": "2026-05-28",
    "sourceTitle": "ERIN: Edit Day (AW Becker)",
    "canonicalSchoolName": null,
    "eventType": "Edit Day",
    "status": "Completed",
    "photographers": [
      "Erin"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-28-gus-gillberg-pm",
    "date": "2026-05-28",
    "sourceTitle": "Gus Gillberg PM",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-29-hold-heatly-end-of-school-celebration-1-photog-afternoon",
    "date": "2026-05-29",
    "sourceTitle": "HOLD: Heatly End of School Celebration (1 Photog, Afternoon)",
    "canonicalSchoolName": "Heatly School",
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Erin",
      "Matt"
    ],
    "assistants": [],
    "features": [],
    "notes": "5/6/26 school canceled celebration."
  },
  {
    "id": "2026-05-29-erin-in-studio",
    "date": "2026-05-29",
    "sourceTitle": "ERIN: In-Studio",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Erin"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-29-steph-meeting-8-am",
    "date": "2026-05-29",
    "sourceTitle": "STEPH MEETING 8 am",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-30-academy-prom-1-photog",
    "date": "2026-05-30",
    "sourceTitle": "Academy Prom (1 Photog)",
    "canonicalSchoolName": "The Academies (AA/G)",
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [
      "Prom"
    ],
    "notes": "Colonie Country Club."
  },
  {
    "id": "2026-05-30-bkw-prom",
    "date": "2026-05-30",
    "sourceTitle": "BKW Prom",
    "canonicalSchoolName": "BKW Secondary",
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [],
    "features": [
      "Prom"
    ],
    "notes": "Orchard Creek."
  },
  {
    "id": "2026-05-30-shaker-junior-prom",
    "date": "2026-05-30",
    "sourceTitle": "Shaker Junior Prom",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Emmett Robichard"
    ],
    "assistants": [],
    "features": [
      "Prom"
    ],
    "notes": "Steph driving. 7pm Empire State Plaza Convention Center, Concourse level at the Egg."
  },
  {
    "id": "2026-05-30-bnc-health-care-6-8pm-photo-booth",
    "date": "2026-05-30",
    "sourceTitle": "BNC Health Care 6-8pm Photo Booth",
    "canonicalSchoolName": null,
    "eventType": "Photo Booth",
    "status": "Completed",
    "photographers": [
      "Carmen"
    ],
    "assistants": [],
    "features": [],
    "notes": "MM added to spreadsheet on 5/26."
  },
  {
    "id": "2026-05-31-waterford-mother-son-dance-game-night-4-6-pm",
    "date": "2026-05-31",
    "sourceTitle": "Waterford Mother Son Dance (Game Night) 4-6 PM",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },

  // ------------------------------------------------------------
  // MARCH 2026 — CAREFUL IMPORT FROM PDF
  // ------------------------------------------------------------
  {
    "id": "2026-03-02-monthly-studio-meeting",
    "date": "2026-03-02",
    "sourceTitle": "Monthly Studio Meeting",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Matt",
      "Milton",
      "Lauren"
    ],
    "assistants": [],
    "features": [],
    "notes": "Beth's husband out of town."
  },
  {
    "id": "2026-03-02-lawton-social-marketing-call",
    "date": "2026-03-02",
    "sourceTitle": "Lawton Social Marketing Call 11am",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Matt",
      "Milton",
      "Lauren"
    ],
    "assistants": [],
    "features": [],
    "notes": "11am. Beth's husband out of town."
  },
  {
    "id": "2026-03-03-tech-valley-senior-retakes",
    "date": "2026-03-03",
    "sourceTitle": "Tech Valley Senior Retakes",
    "canonicalSchoolName": "Tech Valley Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Matt",
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "Molly covering Stephanie when she needs to leave. Beth's husband out of town."
  },
  {
    "id": "2026-03-04-brittany-lawton-branding-session",
    "date": "2026-03-04",
    "sourceTitle": "Brittany Lawton Branding Session",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Beth's husband out of town."
  },
  {
    "id": "2026-03-04-rivers-finest-gala",
    "date": "2026-03-04",
    "sourceTitle": "Rivers Finest Gala 2 Photogs EVENING",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": "Evening gala. Beth's husband out of town."
  },
  {
    "id": "2026-03-04-digital-xpress-headshots",
    "date": "2026-03-04",
    "sourceTitle": "Digital XPress Headshots 9am - Jodi, Tracy",
    "canonicalSchoolName": null,
    "eventType": "Headshots",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "9am headshots."
  },
  {
    "id": "2026-03-05-shatekon-grad-photos",
    "date": "2026-03-05",
    "sourceTitle": "Shatekon Grad Photos (1 Team)",
    "canonicalSchoolName": "Shen - Shatekon",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Beth"
    ],
    "assistants": [],
    "features": [
      "Graduation Photos"
    ],
    "notes": "Beth coming after kids get on bus. Beth's husband out of town."
  },
  {
    "id": "2026-03-05-walter-b-howard-6th-grade-photos",
    "date": "2026-03-05",
    "sourceTitle": "Walter B Howard 6th Grade Photos",
    "canonicalSchoolName": "Walter B Howard",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Matt"
    ],
    "assistants": [],
    "features": [
      "Graduation Photos"
    ],
    "notes": ""
  },
  {
    "id": "2026-03-08-waterford-elementary-sweetheart-dance",
    "date": "2026-03-08",
    "sourceTitle": "Waterford Elementary Sweetheart Dance (Girls)",
    "canonicalSchoolName": "Waterford Halfmoon Elem",
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-03-09-april-scheduling-call",
    "date": "2026-03-09",
    "sourceTitle": "APRIL SCHEDULING CALL",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "All. Google Meet link in source PDF."
  },
  {
    "id": "2026-03-10-aw-becker-clubs",
    "date": "2026-03-10",
    "sourceTitle": "AW Becker Clubs",
    "canonicalSchoolName": "RCS - AW Becker",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [
      "Clubs"
    ],
    "notes": "Stephanie out of town."
  },
  {
    "id": "2026-03-11-arongen-yearbook-photos",
    "date": "2026-03-11",
    "sourceTitle": "Arongen Yearbook Photos",
    "canonicalSchoolName": "Shen - Arongen",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Matt"
    ],
    "assistants": [],
    "features": [
      "Yearbook Photos"
    ],
    "notes": ""
  },
  {
    "id": "2026-03-11-eagle-point-spring-pictures",
    "date": "2026-03-11",
    "sourceTitle": "Eagle Point Spring Pictures (2 Teams)",
    "canonicalSchoolName": "Albany - Eagle Point",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly",
      "Andrew"
    ],
    "assistants": [
      "Lauren",
      "Meg"
    ],
    "features": [],
    "notes": "Stephanie out of town."
  },
  {
    "id": "2026-03-11-milton-terrace-yearbook-photos",
    "date": "2026-03-11",
    "sourceTitle": "Milton Terrace Yearbook Photos",
    "canonicalSchoolName": "B. Spa - Milton Terrace",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [],
    "features": [
      "Yearbook Photos"
    ],
    "notes": ""
  },
  {
    "id": "2026-03-12-eagle-point-5th-grade-grads",
    "date": "2026-03-12",
    "sourceTitle": "Eagle Point 5th Grade Grads (1 Team)",
    "canonicalSchoolName": "Albany - Eagle Point",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly",
      "Matt"
    ],
    "assistants": [],
    "features": [
      "Graduation Photos"
    ],
    "notes": "Stephanie out of town."
  },
  {
    "id": "2026-03-12-little-journeys-daycare",
    "date": "2026-03-12",
    "sourceTitle": "Little Journeys Daycare",
    "canonicalSchoolName": "Little Journeys",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": "No Assistant. Central Ave Albany, 30 kids, infant to preschool, indoor with spring backdrop."
  },
  {
    "id": "2026-03-12-wood-road-yearbook-photos",
    "date": "2026-03-12",
    "sourceTitle": "Wood Road Yearbook Photos",
    "canonicalSchoolName": "B. Spa - Wood Road",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [],
    "features": [
      "Yearbook Photos"
    ],
    "notes": ""
  },
  {
    "id": "2026-03-13-skano-5th-grade-group-picture",
    "date": "2026-03-13",
    "sourceTitle": "Skano 5th Grade Group Picture",
    "canonicalSchoolName": "Shen - Skano",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [],
    "features": [
      "Group Photos"
    ],
    "notes": "Stephanie out of town."
  },
  {
    "id": "2026-03-13-nathan-lebron-elc-spring-photos",
    "date": "2026-03-13",
    "sourceTitle": "Nathan Lebron ELC Spring Photos",
    "canonicalSchoolName": "Nathan Lebron ELC",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew",
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "No Assistants."
  },
  {
    "id": "2026-03-16-marketing-meeting-lawton-social",
    "date": "2026-03-16",
    "sourceTitle": "Marketing Meeting with Lawton Social 9:30am",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Matt",
      "Milton",
      "Lauren"
    ],
    "assistants": [],
    "features": [],
    "notes": "Stephanie out of town."
  },
  {
    "id": "2026-03-17-st-patricks-day",
    "date": "2026-03-17",
    "sourceTitle": "ST. PATRICK'S DAY",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-03-17-staff-quarterly-meeting",
    "date": "2026-03-17",
    "sourceTitle": "IN-STUDIO Staff Quarterly Meeting",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Matt",
      "Milton",
      "Lauren"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-03-18-cairo-elem-grad-pics",
    "date": "2026-03-18",
    "sourceTitle": "Cairo Elem Grad Pics (PK/K/5th) (2 Teams)",
    "canonicalSchoolName": "Cairo-Durham Elem",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Matt",
      "Molly"
    ],
    "assistants": [
      "Carmen",
      "Lauren"
    ],
    "features": [
      "Graduation Photos"
    ],
    "notes": "Stephanie out of town."
  },
  {
    "id": "2026-03-18-duanesburg-family-photo-night",
    "date": "2026-03-18",
    "sourceTitle": "Duanesburg Elementary Family Photo Night",
    "canonicalSchoolName": "D'burg Elementary",
    "eventType": "Family Photos",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": "Rescheduling TBD. Needs to be confirmed; Stephanie will reach out."
  },
  {
    "id": "2026-03-19-our-lady-queen-of-peace-day1",
    "date": "2026-03-19",
    "sourceTitle": "Our Lady Queen of Peace Nursery School Day 1",
    "canonicalSchoolName": "Our Lady Queen of Peace Nursery School",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [],
    "features": [],
    "notes": "16 students Day 1. Stephanie out of town."
  },
  {
    "id": "2026-03-19-bkw-spring-pictures",
    "date": "2026-03-19",
    "sourceTitle": "BKW Spring Pictures",
    "canonicalSchoolName": "BKW Secondary",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew",
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-03-20-our-lady-queen-of-peace-day2",
    "date": "2026-03-20",
    "sourceTitle": "Our Lady Queen of Peace Nursery School Day 2",
    "canonicalSchoolName": "Our Lady Queen of Peace Nursery School",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [],
    "features": [],
    "notes": "19 students Day 2. Stephanie out of town."
  },
  {
    "id": "2026-03-20-story-place-preschool",
    "date": "2026-03-20",
    "sourceTitle": "Story Place Preschool (2 Teams?)",
    "canonicalSchoolName": "Story Place Preschool",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew",
      "Molly",
      "Matt"
    ],
    "assistants": [
      "Lauren"
    ],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-03-21-photobooth-st-mads",
    "date": "2026-03-21",
    "sourceTitle": "Photobooth St. Mads",
    "canonicalSchoolName": "Saint Madeleine",
    "eventType": "Photo Booth",
    "status": "Completed",
    "photographers": [
      "Molly"
    ],
    "assistants": [],
    "features": [
      "Photo Booth Add-On"
    ],
    "notes": ""
  },
  {
    "id": "2026-03-22-easter-bunny-quicks",
    "date": "2026-03-22",
    "sourceTitle": "Easter Bunny Quicks Courtyard Marriott Clifton Park 627 Plank Road",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [
      "Carrie"
    ],
    "features": [],
    "notes": "Robert Graziano Bunny. Stephanie out of town / Matt off."
  },
  {
    "id": "2026-03-24-gordon-creek-yearbook-photos",
    "date": "2026-03-24",
    "sourceTitle": "Gordon Creek Yearbook Photos",
    "canonicalSchoolName": "B. Spa - Gordon Creek",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [],
    "features": [
      "Yearbook Photos"
    ],
    "notes": "Stephanie out of town."
  },
  {
    "id": "2026-03-24-academy-spring-sports",
    "date": "2026-03-24",
    "sourceTitle": "Academy Spring Sports (7 teams, 1 Photog team?)",
    "canonicalSchoolName": null,
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Andrew",
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-03-25-jefferson-4th-grade-grad-photos",
    "date": "2026-03-25",
    "sourceTitle": "Jefferson 4th Grade Grad Photos (2 Teams)",
    "canonicalSchoolName": "Schalmont - Jefferson Elem",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly",
      "Matt"
    ],
    "assistants": [
      "Lauren"
    ],
    "features": [
      "Graduation Photos"
    ],
    "notes": "Green cap and gowns - no Siena. Molly/Matt/Lauren debrief on 03/20."
  },
  {
    "id": "2026-03-25-scap-bigelow",
    "date": "2026-03-25",
    "sourceTitle": "SCAP Early Learning Bigelow (2 Teams)",
    "canonicalSchoolName": "SCAP Early Learning Bigelow",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth",
      "Andrew"
    ],
    "assistants": [
      "Cori"
    ],
    "features": [],
    "notes": "144 students, 3-4 years. Stephanie out of town."
  },
  {
    "id": "2026-03-26-scap-northside",
    "date": "2026-03-26",
    "sourceTitle": "SCAP Northside",
    "canonicalSchoolName": "SCAP Northside",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [],
    "features": [],
    "notes": "32 students, 3-4 years."
  },
  {
    "id": "2026-03-26-scap-bellevue",
    "date": "2026-03-26",
    "sourceTitle": "SCAP Bellevue",
    "canonicalSchoolName": "SCAP Bellevue",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "64 students, 3-4 years."
  },
  {
    "id": "2026-03-26-siena-career-fair-evening",
    "date": "2026-03-26",
    "sourceTitle": "Siena Career Fair Evening 4:30-6:30",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": "Evening 4:30-6:30."
  },
  {
    "id": "2026-03-26-waterford-spring-sports",
    "date": "2026-03-26",
    "sourceTitle": "Waterford Spring Sports",
    "canonicalSchoolName": null,
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Matt"
    ],
    "assistants": [
      "Lauren"
    ],
    "features": [],
    "notes": "AD has JV/varsity baseball, varsity softball, tennis, varsity track; JV softball uncertain."
  },
  {
    "id": "2026-03-27-cohoes-spring-sports",
    "date": "2026-03-27",
    "sourceTitle": "Cohoes Spring Sports (1 team)",
    "canonicalSchoolName": null,
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Andrew",
      "Beth"
    ],
    "assistants": [],
    "features": [],
    "notes": "Stephanie out of town."
  },
  {
    "id": "2026-03-28-easter-bunny-quicks",
    "date": "2026-03-28",
    "sourceTitle": "Easter Bunny Quicks Courtyard Marriott Clifton Park 627 Plank Road",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Matt"
    ],
    "assistants": [
      "Molly"
    ],
    "features": [],
    "notes": "Morgan confirmed for bunny. Need bunny and location."
  },
  {
    "id": "2026-03-30-clifton-park-kindercare-day1-grads",
    "date": "2026-03-30",
    "sourceTitle": "MOVED Clifton Park Kindercare Day 1 & Grads",
    "canonicalSchoolName": "Kindercare Clifton Park",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly",
      "Andrew"
    ],
    "assistants": [],
    "features": [
      "Graduation Photos"
    ],
    "notes": "Moved. Stephanie out of town."
  },
  {
    "id": "2026-03-30-elevate-dance-project-day1",
    "date": "2026-03-30",
    "sourceTitle": "Elevate Dance Project Studio Day 1 4:30-8:15 PM",
    "canonicalSchoolName": "Elevate Dance Project",
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "No Assistant."
  },
  {
    "id": "2026-03-30-mother-teresa-academy",
    "date": "2026-03-30",
    "sourceTitle": "Mother Teresa Academy (2 Teams)",
    "canonicalSchoolName": "Mother Theresa Academy",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth",
      "Matt"
    ],
    "assistants": [
      "Siena"
    ],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-03-31-clifton-park-kindercare-day2-grads",
    "date": "2026-03-31",
    "sourceTitle": "MOVED Clifton Park Kindercare Day 2 & Grads",
    "canonicalSchoolName": "Kindercare Clifton Park",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly",
      "Andrew"
    ],
    "assistants": [],
    "features": [
      "Graduation Photos"
    ],
    "notes": "Moved. Stephanie out of town."
  },
  {
    "id": "2026-03-31-milton-lauren-monthly-meeting",
    "date": "2026-03-31",
    "sourceTitle": "Milton Lauren Monthly Meeting",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Matt",
      "Milton",
      "Lauren"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-03-31-mother-teresa-group-pics",
    "date": "2026-03-31",
    "sourceTitle": "Mother Teresa Group Pics",
    "canonicalSchoolName": "Mother Theresa Academy",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [],
    "features": [
      "Group Photos"
    ],
    "notes": ""
  },
  {
    "id": "2026-03-31-easter-bunny-gardner-dickinson",
    "date": "2026-03-31",
    "sourceTitle": "Easter Bunny at Gardner Dickinson 2:30-5:30",
    "canonicalSchoolName": "Gardner Dickinson",
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [
      "Cori",
      "Meg"
    ],
    "features": [],
    "notes": "Need bunny."
  },
  {
    "id": "2026-03-31-business-review-womens-summit",
    "date": "2026-03-31",
    "sourceTitle": "Business Review Women's Summit HOLD - TENTATIVE",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Lauren"
    ],
    "assistants": [],
    "features": [],
    "notes": "Hold / tentative."
  },
  {
    "id": "2026-04-01-elevate-dance-project-day2",
    "date": "2026-04-01",
    "sourceTitle": "Elevate Dance Project Studio Day 2 4:30-8:15 PM",
    "canonicalSchoolName": "Elevate Dance Project",
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "Stephanie out of town."
  },
  {
    "id": "2026-04-01-destine-prep-spring-photos-k-grads",
    "date": "2026-04-01",
    "sourceTitle": "Destine Prep Spring Photos & K Grads (2 Teams)",
    "canonicalSchoolName": "Destine Prep Charter School",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth",
      "Andrew"
    ],
    "assistants": [
      "Siena",
      "Molly"
    ],
    "features": [
      "Graduation Photos"
    ],
    "notes": ""
  },
  {
    "id": "2026-04-01-columbia-high-track-seniors",
    "date": "2026-04-01",
    "sourceTitle": "NEW Columbia High Track Seniors",
    "canonicalSchoolName": null,
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Lauren"
    ],
    "assistants": [
      "Carrie"
    ],
    "features": [],
    "notes": "Robert. Booked after booster club approval. MT offered Lauren."
  },
  {
    "id": "2026-04-02-cairo-durham-spring-sports",
    "date": "2026-04-02",
    "sourceTitle": "Cairo-Durham Spring Sports (2 photogs)",
    "canonicalSchoolName": null,
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-02-northville-spring-sports-clubs",
    "date": "2026-04-02",
    "sourceTitle": "Northville Spring Sports & Clubs (2 photogs)",
    "canonicalSchoolName": null,
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Beth",
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-03-good-friday-schools-closed",
    "date": "2026-04-03",
    "sourceTitle": "GOOD FRIDAY - SCHOOLS CLOSED",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "Spring break following week."
  },
  {
    "id": "2026-04-03-easter-bunny-quicks",
    "date": "2026-04-03",
    "sourceTitle": "Easter Bunny Quicks Courtyard Marriott Clifton Park 627 Plank Road",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [
      "Siena"
    ],
    "features": [],
    "notes": "Robert Graziano confirmed for Bunny."
  },

  // ------------------------------------------------------------
  // APRIL 2026 — CAREFUL IMPORT FROM PDF
  // ------------------------------------------------------------
  {
    "id": "2026-04-05-easter",
    "date": "2026-04-05",
    "sourceTitle": "EASTER",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "Beth off."
  },
  {
    "id": "2026-04-06-robert-senior-photos-am",
    "date": "2026-04-06",
    "sourceTitle": "Robert Senior Photos AM",
    "canonicalSchoolName": null,
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Matt"
    ],
    "assistants": [],
    "features": [],
    "notes": "Beth off."
  },
  {
    "id": "2026-04-06-rpi-seniors",
    "date": "2026-04-06",
    "sourceTitle": "RPI Seniors",
    "canonicalSchoolName": "RPI Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Molly",
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": "Block off until Tuesday/Wednesday/Friday book."
  },
  {
    "id": "2026-04-06-declan-o-connor-duanesburg-senior-re-do-9am",
    "date": "2026-04-06",
    "sourceTitle": "Declan O'Connor Duanesburg Senior Re-do 9AM",
    "canonicalSchoolName": "Duanesburg Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "9AM senior re-do."
  },
  {
    "id": "2026-04-07-rpi-seniors",
    "date": "2026-04-07",
    "sourceTitle": "RPI Seniors",
    "canonicalSchoolName": "RPI Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Molly",
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": "Beth off."
  },
  {
    "id": "2026-04-08-lawton-social-branding",
    "date": "2026-04-08",
    "sourceTitle": "Lawton Social Branding",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Branding session. Beth off."
  },
  {
    "id": "2026-04-08-robert-senior-rain-am",
    "date": "2026-04-08",
    "sourceTitle": "Robert Senior Rain AM",
    "canonicalSchoolName": null,
    "eventType": "Rain Date",
    "status": "Completed",
    "photographers": [
      "Matt"
    ],
    "assistants": [],
    "features": [],
    "notes": "Senior rain hold."
  },
  {
    "id": "2026-04-08-rpi-seniors",
    "date": "2026-04-08",
    "sourceTitle": "RPI Seniors",
    "canonicalSchoolName": "RPI Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Molly",
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-09-clifton-park-kindercare-day-1-1-team-need-cap-and-gowns",
    "date": "2026-04-09",
    "sourceTitle": "Clifton Park Kindercare Day 1 (1 Team) Need Cap and Gowns",
    "canonicalSchoolName": "Kindercare Clifton Park",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly",
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": "Need cap and gowns. Beth off."
  },
  {
    "id": "2026-04-09-brad-rose-landscaping-headshots-and-branding",
    "date": "2026-04-09",
    "sourceTitle": "Brad Rose Landscaping Headshots and Branding",
    "canonicalSchoolName": null,
    "eventType": "Headshots",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Headshots and branding."
  },
  {
    "id": "2026-04-09-rpi-seniors-no-appts",
    "date": "2026-04-09",
    "sourceTitle": "RPI Seniors NO APPTS",
    "canonicalSchoolName": "RPI Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "No appointments."
  },
  {
    "id": "2026-04-10-clifton-park-kindercare-day-2-1-team-need-cap-and-gowns",
    "date": "2026-04-10",
    "sourceTitle": "Clifton Park Kindercare Day 2 (1 Team) Need Cap and Gowns",
    "canonicalSchoolName": "Kindercare Clifton Park",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew",
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "Need cap and gowns. Beth off."
  },
  {
    "id": "2026-04-10-rpi-seniors",
    "date": "2026-04-10",
    "sourceTitle": "RPI Seniors",
    "canonicalSchoolName": "RPI Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Matt",
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-11-academy-gala",
    "date": "2026-04-11",
    "sourceTitle": "Academy Gala",
    "canonicalSchoolName": "The Academies (AA/G)",
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-13-rpi-seniors",
    "date": "2026-04-13",
    "sourceTitle": "RPI Seniors",
    "canonicalSchoolName": "RPI Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Beth",
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "Cristina Gandolfo 9:40am would like drape photos too."
  },
  {
    "id": "2026-04-13-digital-xpress-am",
    "date": "2026-04-13",
    "sourceTitle": "Digital Xpress AM",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-13-may-scheduling-call-1-20-pm",
    "date": "2026-04-13",
    "sourceTitle": "May Scheduling Call 1:20 PM",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "Google Meet: meet.google.com/ndi-jacr-dpi. Dial-in/PIN in source PDF."
  },
  {
    "id": "2026-04-14-bkw-spring-sports-2-photogs",
    "date": "2026-04-14",
    "sourceTitle": "BKW Spring Sports (2 Photogs)",
    "canonicalSchoolName": "BKW Secondary",
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Matt"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-14-rpi-seniors",
    "date": "2026-04-14",
    "sourceTitle": "RPI Seniors",
    "canonicalSchoolName": "RPI Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Beth",
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-14-kindercare-niskayuna-2-teams",
    "date": "2026-04-14",
    "sourceTitle": "Kindercare Niskayuna (2 teams)",
    "canonicalSchoolName": "Kindercare Niskayuna",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly",
      "Lauren"
    ],
    "assistants": [
      "Cori",
      "Victoria"
    ],
    "features": [],
    "notes": "Booked back in Aug 2025; not on iSmile calendar per 3/31/26 note."
  },
  {
    "id": "2026-04-14-hold-childtime-preschool-2-teams",
    "date": "2026-04-14",
    "sourceTitle": "HOLD Childtime Preschool (2 Teams)",
    "canonicalSchoolName": "Childtime Preschool",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly",
      "Andrew"
    ],
    "assistants": [
      "Simone",
      "Cori"
    ],
    "features": [],
    "notes": "Steph asked to add any school that may book in April. This will be either 4/14 or 4/20."
  },
  {
    "id": "2026-04-15-duanesburg-spring-sports-2-set-ups",
    "date": "2026-04-15",
    "sourceTitle": "Duanesburg Spring Sports (2 Set-ups)",
    "canonicalSchoolName": "Duanesburg",
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Matt"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-15-tsl-new-karner-1-team",
    "date": "2026-04-15",
    "sourceTitle": "TSL New Karner (1 Team)",
    "canonicalSchoolName": "TSL New Karner",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-15-rpi-seniors",
    "date": "2026-04-15",
    "sourceTitle": "RPI Seniors",
    "canonicalSchoolName": "RPI Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Molly",
      "Beth"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-15-mccurdy-real-estate-photos-8-30",
    "date": "2026-04-15",
    "sourceTitle": "McCurdy Real Estate Photos 8:30",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "8:30 real estate photos."
  },
  {
    "id": "2026-04-16-arbor-hill-elementary-2-teams",
    "date": "2026-04-16",
    "sourceTitle": "Arbor Hill Elementary (2 Teams)",
    "canonicalSchoolName": "Albany - Arbor Hill",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew",
      "Molly"
    ],
    "assistants": [
      "Lauren",
      "Meg"
    ],
    "features": [],
    "notes": "AM only. Outdoor. First time doing Spring photos ever."
  },
  {
    "id": "2026-04-16-malta-ave-picture-day-pano-2-teams",
    "date": "2026-04-16",
    "sourceTitle": "Malta Ave Picture Day & Pano (2 Teams)",
    "canonicalSchoolName": "B. Spa - Malta Ave",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Beth"
    ],
    "assistants": [
      "Carmen",
      "Cori"
    ],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-16-rpi-seniors-no-appts",
    "date": "2026-04-16",
    "sourceTitle": "RPI Seniors NO APPTS",
    "canonicalSchoolName": "RPI Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "No appointments."
  },
  {
    "id": "2026-04-16-lcs-new-staff-and-students-2-30",
    "date": "2026-04-16",
    "sourceTitle": "LCS New staff and students 2:30",
    "canonicalSchoolName": "Loudonville Christian",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "New staff and students at 2:30."
  },
  {
    "id": "2026-04-17-bkw-8th-grade-pano-11-26-am",
    "date": "2026-04-17",
    "sourceTitle": "BKW 8th Grade Pano 11:26 am",
    "canonicalSchoolName": "BKW Secondary",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "11:26-11:46 timing for photo."
  },
  {
    "id": "2026-04-17-malta-ave-5th-grade-pano-rain",
    "date": "2026-04-17",
    "sourceTitle": "Malta Ave 5th Grade Pano RAIN",
    "canonicalSchoolName": "B. Spa - Malta Ave",
    "eventType": "Rain Date",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-17-rpi-seniors",
    "date": "2026-04-17",
    "sourceTitle": "RPI Seniors",
    "canonicalSchoolName": "RPI Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Matt",
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-17-shatekon-farewell-for-erica-ryan-1-15",
    "date": "2026-04-17",
    "sourceTitle": "Shatekon Farewell for Erica Ryan 1:15",
    "canonicalSchoolName": "Shen - Shatekon",
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-17-thomas-pest-inspection-3-30-5-30",
    "date": "2026-04-17",
    "sourceTitle": "Thomas Pest Inspection 3:30-5:30",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-18-duanesburg-color-run",
    "date": "2026-04-18",
    "sourceTitle": "Duanesburg Color Run",
    "canonicalSchoolName": "Duanesburg",
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-20-erin-first-day",
    "date": "2026-04-20",
    "sourceTitle": "ERIN FIRST DAY",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-20-spotted-zebra-day-1-req-andrew",
    "date": "2026-04-20",
    "sourceTitle": "Spotted Zebra Day 1 (REQ: Andrew)",
    "canonicalSchoolName": "Spotted Zebra",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [
      "Victoria"
    ],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-20-shaker-seniors-2-photogs",
    "date": "2026-04-20",
    "sourceTitle": "Shaker Seniors (2 Photogs)",
    "canonicalSchoolName": "Shaker Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Matt",
      "Stephanie"
    ],
    "assistants": [
      "Erin"
    ],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-20-childtime-preschool-2-teams",
    "date": "2026-04-20",
    "sourceTitle": "Childtime Preschool (2 teams)",
    "canonicalSchoolName": "Childtime Preschool",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly",
      "Beth"
    ],
    "assistants": [
      "Simone",
      "Cori"
    ],
    "features": [],
    "notes": "Steph asked to add any school that may book in April. This will be either 4/14 or 4/20."
  },
  {
    "id": "2026-04-20-outdesk-zoom-12-00",
    "date": "2026-04-20",
    "sourceTitle": "Outdesk Zoom 12:00",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Steph and anyone else. Zoom link in source PDF."
  },
  {
    "id": "2026-04-21-spotted-zebra-day-2-req-andrew",
    "date": "2026-04-21",
    "sourceTitle": "Spotted Zebra Day 2 (REQ: Andrew)",
    "canonicalSchoolName": "Spotted Zebra",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [
      "Victoria"
    ],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-21-shaker-seniors-2-photogs",
    "date": "2026-04-21",
    "sourceTitle": "Shaker Seniors (2 Photogs)",
    "canonicalSchoolName": "Shaker Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Molly"
    ],
    "assistants": [
      "Erin"
    ],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-21-new-dreams-nursery-day-1-1-photog",
    "date": "2026-04-21",
    "sourceTitle": "New Dreams Nursery Day 1 (1 photog)",
    "canonicalSchoolName": "New Dreams Nursery",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Lauren"
    ],
    "assistants": [],
    "features": [],
    "notes": "Two mornings, day 1."
  },
  {
    "id": "2026-04-22-arongen-spring-pictures-2-photogs",
    "date": "2026-04-22",
    "sourceTitle": "Arongen Spring Pictures (2 Photogs)",
    "canonicalSchoolName": "Shen - Arongen",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth",
      "Stephanie"
    ],
    "assistants": [
      "Erin"
    ],
    "features": [],
    "notes": "Two parent helpers. Push indoors for bad weather."
  },
  {
    "id": "2026-04-22-shaker-seniors-2-photogs",
    "date": "2026-04-22",
    "sourceTitle": "Shaker Seniors (2 Photogs)",
    "canonicalSchoolName": "Shaker Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Molly",
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-22-new-dreams-nursery-day-2-1-photog",
    "date": "2026-04-22",
    "sourceTitle": "New Dreams Nursery Day 2 (1 photog)",
    "canonicalSchoolName": "New Dreams Nursery",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Lauren"
    ],
    "assistants": [],
    "features": [],
    "notes": "Two mornings, day 2."
  },
  {
    "id": "2026-04-23-blessed-sacrament-1-team-req-andrew",
    "date": "2026-04-23",
    "sourceTitle": "Blessed Sacrament (1 Team) REQ: Andrew",
    "canonicalSchoolName": "Blessed Sacrament",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": "No assistant."
  },
  {
    "id": "2026-04-23-okte-spring-pictures-2-teams",
    "date": "2026-04-23",
    "sourceTitle": "Okte Spring Pictures (2 Teams)",
    "canonicalSchoolName": "Shen - Okte",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth",
      "Molly"
    ],
    "assistants": [
      "Simone",
      "Cori"
    ],
    "features": [],
    "notes": "Might be okay with just Cori. Spring collages note: fall photos used for majority; new students use Spring photos."
  },
  {
    "id": "2026-04-23-shaker-seniors-2-photogs",
    "date": "2026-04-23",
    "sourceTitle": "Shaker Seniors (2 Photogs)",
    "canonicalSchoolName": "Shaker Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Erin"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-23-matt-marketing-meeting-with-lawton-social-3-45",
    "date": "2026-04-23",
    "sourceTitle": "Matt Marketing meeting with Lawton Social 3:45",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Matt",
      "Milton",
      "Lauren"
    ],
    "assistants": [],
    "features": [],
    "notes": "Google Meet link in source PDF."
  },
  {
    "id": "2026-04-24-shaker-seniors",
    "date": "2026-04-24",
    "sourceTitle": "Shaker Seniors",
    "canonicalSchoolName": "Shaker Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Molly",
      "Matt"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-24-shatekon-elem-spring-pics-2-teams-pano",
    "date": "2026-04-24",
    "sourceTitle": "Shatekon Elem Spring Pics (2 Teams) Pano?",
    "canonicalSchoolName": "Shen - Shatekon",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth",
      "Andrew"
    ],
    "assistants": [
      "Erin",
      "Siena"
    ],
    "features": [],
    "notes": "Push indoors for bad weather."
  },
  {
    "id": "2026-04-24-waterford-halfmoon-boys-game-night-5-30p-set-up",
    "date": "2026-04-24",
    "sourceTitle": "Waterford Halfmoon Boys Game Night 5:30p Set-up",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Rescheduled to 5/31/26 due to low registration; 6-8pm."
  },
  {
    "id": "2026-04-24-brad-rose-landscaping-headshots-and-drone-8-00",
    "date": "2026-04-24",
    "sourceTitle": "Brad Rose Landscaping Headshots and Drone 8:00",
    "canonicalSchoolName": null,
    "eventType": "Headshots",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Headshots and drone at 8:00."
  },
  {
    "id": "2026-04-24-bkw-8th-grade-group-and-missing-sports-teams-11-26-am",
    "date": "2026-04-24",
    "sourceTitle": "BKW 8th grade group and missing sports teams 11:26 am",
    "canonicalSchoolName": "BKW Secondary",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-24-shaker-unified-basketball-and-cheer-12-45",
    "date": "2026-04-24",
    "sourceTitle": "Shaker Unified Basketball and Cheer 12:45",
    "canonicalSchoolName": "Shaker Seniors",
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-25-rotterdam-softball-2-photogs-1-team-photog",
    "date": "2026-04-25",
    "sourceTitle": "Rotterdam Softball (2 Photogs + 1 Team Photog)",
    "canonicalSchoolName": null,
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Molly"
    ],
    "assistants": [
      "Simone"
    ],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-27-shaker-seniors",
    "date": "2026-04-27",
    "sourceTitle": "Shaker Seniors",
    "canonicalSchoolName": "Shaker Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Erin",
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-27-maple-leaf-malta-north-2-teams",
    "date": "2026-04-27",
    "sourceTitle": "Maple Leaf Malta North (2 Teams)",
    "canonicalSchoolName": "Maple Leaf Malta North",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth",
      "Andrew"
    ],
    "assistants": [
      "Simone",
      "Cori"
    ],
    "features": [],
    "notes": "Cancelled by Ashlyn 4/20/26. Push indoors if rain. Needs cap and gown."
  },
  {
    "id": "2026-04-27-okte-spring-pics-pano-rain",
    "date": "2026-04-27",
    "sourceTitle": "Okte Spring Pics & Pano RAIN",
    "canonicalSchoolName": "Shen - Okte",
    "eventType": "Rain Date",
    "status": "Completed",
    "photographers": [
      "Matt",
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-27-shatekon-pano-rain",
    "date": "2026-04-27",
    "sourceTitle": "Shatekon Pano RAIN",
    "canonicalSchoolName": "Shen - Shatekon",
    "eventType": "Rain Date",
    "status": "Completed",
    "photographers": [
      "Matt"
    ],
    "assistants": [],
    "features": [],
    "notes": "Just pano."
  },
  {
    "id": "2026-04-28-shaker-seniors",
    "date": "2026-04-28",
    "sourceTitle": "Shaker Seniors",
    "canonicalSchoolName": "Shaker Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Erin"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-28-green-tech-seniors-day-1-afternoon",
    "date": "2026-04-28",
    "sourceTitle": "Green Tech Seniors Day 1 AFTERNOON",
    "canonicalSchoolName": "Green Tech Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Matt",
      "Beth"
    ],
    "assistants": [],
    "features": [],
    "notes": "Matt + 1."
  },
  {
    "id": "2026-04-28-tsl-troy-req-lauren",
    "date": "2026-04-28",
    "sourceTitle": "TSL Troy (REQ: Lauren)",
    "canonicalSchoolName": "TSL Troy",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Lauren"
    ],
    "assistants": [],
    "features": [],
    "notes": "No assistant."
  },
  {
    "id": "2026-04-28-tsl-scotia-1-photog",
    "date": "2026-04-28",
    "sourceTitle": "TSL Scotia (1 Photog)",
    "canonicalSchoolName": "TSL Scotia",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "No assistant. 33 students, 6 weeks-5 yrs."
  },
  {
    "id": "2026-04-28-chamber-board-meeting-8-9-am",
    "date": "2026-04-28",
    "sourceTitle": "Chamber Board Meeting 8-9 AM",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-28-precious-hearts-daycare",
    "date": "2026-04-28",
    "sourceTitle": "Precious Hearts Daycare",
    "canonicalSchoolName": "Precious Hearts Daycare",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [
      "Victoria"
    ],
    "features": [],
    "notes": "45 students, infant to 5."
  },
  {
    "id": "2026-04-29-shaker-seniors",
    "date": "2026-04-29",
    "sourceTitle": "Shaker Seniors",
    "canonicalSchoolName": "Shaker Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Erin",
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-29-green-tech-seniors-day-2-afternoon",
    "date": "2026-04-29",
    "sourceTitle": "Green Tech Seniors Day 2 AFTERNOON",
    "canonicalSchoolName": "Green Tech Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Matt"
    ],
    "assistants": [],
    "features": [],
    "notes": "Matt + 1."
  },
  {
    "id": "2026-04-29-tsl-niskayuna-upk-1-photog",
    "date": "2026-04-29",
    "sourceTitle": "TSL Niskayuna UPK (1 Photog)",
    "canonicalSchoolName": "TSL Niskayuna UPK",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "No assistant. 10 students."
  },
  {
    "id": "2026-04-29-tsl-bethlehem-upk-1-photog",
    "date": "2026-04-29",
    "sourceTitle": "TSL Bethlehem UPK (1 Photog)",
    "canonicalSchoolName": "TSL Bethlehem UPK",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth",
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": "60 students. Andrew added 4/22."
  },
  {
    "id": "2026-04-29-nick-maio-headshots-4-00",
    "date": "2026-04-29",
    "sourceTitle": "Nick Maio headshots 4:00",
    "canonicalSchoolName": null,
    "eventType": "Headshots",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-30-shaker-seniors",
    "date": "2026-04-30",
    "sourceTitle": "Shaker Seniors",
    "canonicalSchoolName": "Shaker Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Erin",
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-30-tsl-east-greenbush-upk-new-address-1-photog",
    "date": "2026-04-30",
    "sourceTitle": "TSL East Greenbush UPK new address (1 Photog)",
    "canonicalSchoolName": "TSL East Greenbush UPK",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Lauren",
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "No assistant. 18-20 students."
  },
  {
    "id": "2026-04-30-waterford-halfmoon-spring-pics-2-teams",
    "date": "2026-04-30",
    "sourceTitle": "Waterford-Halfmoon Spring Pics (2 Teams)",
    "canonicalSchoolName": "Waterford Halfmoon Elem",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew",
      "Molly",
      "Beth"
    ],
    "assistants": [
      "Cori"
    ],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-04-30-wade-tours-event-planning-meeting-8pm",
    "date": "2026-04-30",
    "sourceTitle": "Wade Tours Event Planning Meeting 8pm",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Google Meet link in source PDF."
  },
  {
    "id": "2026-05-01-shaker-seniors",
    "date": "2026-05-01",
    "sourceTitle": "Shaker Seniors",
    "canonicalSchoolName": "Shaker Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Erin",
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-01-heatly-pk-5-1-team-pano",
    "date": "2026-05-01",
    "sourceTitle": "Heatly PK-5 (1 Team) Pano?",
    "canonicalSchoolName": "Heatly School",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Matt"
    ],
    "assistants": [
      "Simone"
    ],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-01-tesago-spring-photos-5th-grade-pano",
    "date": "2026-05-01",
    "sourceTitle": "Tesago Spring Photos & 5th Grade Pano",
    "canonicalSchoolName": "Shen - Tesago",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth",
      "Molly"
    ],
    "assistants": [
      "Lauren",
      "Meg"
    ],
    "features": [],
    "notes": "Carmen covering Lauren. Push indoors for bad weather."
  },
  {
    "id": "2026-05-01-milton-and-lauren-monthly-meeting-4-00",
    "date": "2026-05-01",
    "sourceTitle": "Milton and Lauren Monthly Meeting 4:00",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Matt",
      "Milton",
      "Lauren"
    ],
    "assistants": [],
    "features": [],
    "notes": "Can we do late afternoon?"
  },
  {
    "id": "2026-05-02-nassau-ll-2-photogs-1-team-photog",
    "date": "2026-05-02",
    "sourceTitle": "Nassau LL (2 Photogs + 1 Team Photog)",
    "canonicalSchoolName": null,
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Andrew",
      "Beth"
    ],
    "assistants": [
      "Erin"
    ],
    "features": [],
    "notes": ""
  },
  {
    "id": "2026-05-02-outdesk-interviews-1-00-rescheduling",
    "date": "2026-05-02",
    "sourceTitle": "Outdesk Interviews 1:00 RESCHEDULING",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Steph and anyone else. Rescheduled to 5/19."
  },,

  // ------------------------------------------------------------
  // DECEMBER 2025 + FEBRUARY 2026 — CAREFUL IMPORT FROM PDFs
  // ------------------------------------------------------------
  {
    "id": "2025-12-01-hamilton-makeups",
    "date": "2025-12-01",
    "sourceTitle": "Hamilton Elem Makeups (1 team)",
    "canonicalSchoolName": "Hamilton Elementary",
    "eventType": "Makeup Day",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": "Historical note: Molly/Andrew photographed picture day."
  },
  {
    "id": "2025-12-01-north-colonie-upk",
    "date": "2025-12-01",
    "sourceTitle": "North Colonie UPK (1 Photog 1 LOCATION THIS YEAR)",
    "canonicalSchoolName": "North Colonie UPK",
    "eventType": "Makeup Day",
    "status": "Completed",
    "photographers": [
      "Matt"
    ],
    "assistants": [],
    "features": [],
    "notes": "One location this year. Historical note: Molly/Matt photographed 2023 & 2024."
  },
  {
    "id": "2025-12-01-northville-winter-sports",
    "date": "2025-12-01",
    "sourceTitle": "Northville Winter Sports (1 team)",
    "canonicalSchoolName": null,
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [
      "Siena"
    ],
    "features": [],
    "notes": "Historical notes: Matt/Beth in 2023 & 2024."
  },
  {
    "id": "2025-12-01-little-journeys",
    "date": "2025-12-01",
    "sourceTitle": "NEW Little Journeys Daycare (1 team)",
    "canonicalSchoolName": "Little Journeys Daycare",
    "eventType": "Fall Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "New account. About 30 kids, infants to preschool age. Beth edit day."
  },
  {
    "id": "2025-12-02-central-park-makeups-snow",
    "date": "2025-12-02",
    "sourceTitle": "Central Park Middle MAKEUPS (1 team) — SNOW DAY",
    "canonicalSchoolName": "Central Park Middle School",
    "eventType": "Makeup Day",
    "status": "Rain Watch",
    "photographers": [
      "Matt",
      "Lauren"
    ],
    "assistants": [],
    "features": [],
    "notes": "Snow day; reschedule all schools. Matt offered 12/4, 12/5 or 12/9. Historical note: Emily/Andrew photographed picture day."
  },
  {
    "id": "2025-12-02-zoller-snow",
    "date": "2025-12-02",
    "sourceTitle": "Zoller Elementary (2 teams) — moved due to snow day",
    "canonicalSchoolName": "Zoller Elementary",
    "eventType": "Fall Picture Day",
    "status": "Rain Watch",
    "photographers": [
      "Andrew",
      "Molly"
    ],
    "assistants": [
      "Siena"
    ],
    "features": [],
    "notes": "Moved to 12/8 due to snow day. Carrie emailed school. Kristen cannot do 12/2. Historical notes: Molly/Jeff 2024; Beth/Matt 2023."
  },
  {
    "id": "2025-12-02-troy-14-reschedule",
    "date": "2025-12-02",
    "sourceTitle": "Troy School 14 MAKEUPS (1 team)",
    "canonicalSchoolName": "Troy School 14",
    "eventType": "Makeup Day",
    "status": "Rain Watch",
    "photographers": [
      "Beth"
    ],
    "assistants": [],
    "features": [],
    "notes": "Emailed school to move to 12/5. Historical note: Beth/Andrew photographed picture day."
  },
  {
    "id": "2025-12-02-keane-reschedule",
    "date": "2025-12-02",
    "sourceTitle": "Keane Makeups (1 Photog)",
    "canonicalSchoolName": "Keane Elementary",
    "eventType": "Makeup Day",
    "status": "Rain Watch",
    "photographers": [
      "Emily"
    ],
    "assistants": [],
    "features": [],
    "notes": "Carrie emailed 12/10, 12/11 or 12/12 with Molly as photographer. Moved from 11/21."
  },
  {
    "id": "2025-12-02-gotphoto-call",
    "date": "2025-12-02",
    "sourceTitle": "RESCHEDULING: Call with Sebastian 2PM - GotPhoto - sales analysis",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Matt"
    ],
    "assistants": [],
    "features": [],
    "notes": "Google Meet link in source PDF."
  },
  {
    "id": "2025-12-03-mlk-jr",
    "date": "2025-12-03",
    "sourceTitle": "MLK Jr. Elementary (NEW) (2 teams)",
    "canonicalSchoolName": "MLK Jr. Elementary",
    "eventType": "Fall Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth",
      "Molly"
    ],
    "assistants": [
      "Siena",
      "Simone"
    ],
    "features": [],
    "notes": "New school/account."
  },
  {
    "id": "2025-12-03-ny-farm-bureau-photo-booth",
    "date": "2025-12-03",
    "sourceTitle": "NY Farm Bureau State Meeting - Turning Stone Photo Booth 7/2:30PM?",
    "canonicalSchoolName": null,
    "eventType": "Photo Booth",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [
      "Photo Booth Add-On"
    ],
    "notes": "Turning Stone photo booth event; time unclear in source."
  },
  {
    "id": "2025-12-03-pieter-b-makeups",
    "date": "2025-12-03",
    "sourceTitle": "Pieter B. Coeymans Makeups (1 team)",
    "canonicalSchoolName": "Pieter B Coeymans",
    "eventType": "Makeup Day",
    "status": "Completed",
    "photographers": [
      "Matt"
    ],
    "assistants": [],
    "features": [],
    "notes": "Historical note: Matt/Steph photographed picture day."
  },
  {
    "id": "2025-12-03-waterford-winter-sports",
    "date": "2025-12-03",
    "sourceTitle": "Waterford-Halfmoon Winter Sports",
    "canonicalSchoolName": null,
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [
      "Emily"
    ],
    "features": [],
    "notes": "Emily work in-studio in morning. Historical sports photographer notes included in source."
  },
  {
    "id": "2025-12-04-airline-drive-makeups",
    "date": "2025-12-04",
    "sourceTitle": "Airline Drive Academy Makeups (1 Team)",
    "canonicalSchoolName": "Airline Drive Academy",
    "eventType": "Makeup Day",
    "status": "Completed",
    "photographers": [
      "Emily"
    ],
    "assistants": [],
    "features": [],
    "notes": "Changed from Steph. Historical note: Steph photographed picture day."
  },
  {
    "id": "2025-12-04-destine-prep-makeups",
    "date": "2025-12-04",
    "sourceTitle": "Destine Prep Makeup (1 photog)",
    "canonicalSchoolName": "Destine Prep Charter School",
    "eventType": "Makeup Day",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [],
    "features": [],
    "notes": "Historical note: Emily/Beth photographed picture day."
  },
  {
    "id": "2025-12-04-duanesburg-winter-sports",
    "date": "2025-12-04",
    "sourceTitle": "DUANESBURG Winter Sports (1 team)",
    "canonicalSchoolName": null,
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [
      "Kristen"
    ],
    "features": [],
    "notes": "Historical sports photographer notes included in source."
  },
  {
    "id": "2025-12-04-maywood-makeups",
    "date": "2025-12-04",
    "sourceTitle": "Maywood Academy MAKEUPS (1 team)",
    "canonicalSchoolName": "Maywood Academy BOCES",
    "eventType": "Makeup Day",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": "Molly edit day. Historical note: Andrew photographed picture day."
  },
  {
    "id": "2025-12-04-marquis-headshots",
    "date": "2025-12-04",
    "sourceTitle": "Marquis Home Care Staff Headshots 9:00",
    "canonicalSchoolName": null,
    "eventType": "Headshots",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Staff headshots at 9:00."
  },
  {
    "id": "2025-12-05-infinite-care-kipp",
    "date": "2025-12-05",
    "sourceTitle": "Infinite Care KIPP (1 team)",
    "canonicalSchoolName": "Infinite Care KIPP",
    "eventType": "Fall Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "20 students. Historical notes: Jeff 2024; Andrew 2023. Andrew edit day."
  },
  {
    "id": "2025-12-05-santa-jim-clifton-park",
    "date": "2025-12-05",
    "sourceTitle": "Santa Jim 4/8PM - Clifton Park",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [
      "Siena"
    ],
    "features": [],
    "notes": "Santa event in Clifton Park, 4-8PM."
  },
  {
    "id": "2025-12-05-turners-tots",
    "date": "2025-12-05",
    "sourceTitle": "Turner's Tots Preschool NEW AM only (Lauren)",
    "canonicalSchoolName": "Turner's Tots Preschool",
    "eventType": "Fall Picture Day",
    "status": "Completed",
    "photographers": [
      "Lauren"
    ],
    "assistants": [],
    "features": [],
    "notes": "New account. AM only. 15 kids."
  },
  {
    "id": "2025-12-06-shaker-ridge-photo-booth",
    "date": "2025-12-06",
    "sourceTitle": "PHOTO BOOTH Shaker Ridge Luncheon 10/2PM",
    "canonicalSchoolName": null,
    "eventType": "Photo Booth",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [],
    "features": [
      "Photo Booth Add-On"
    ],
    "notes": "Drop off morning and pick up afternoon. Molly off."
  },
  {
    "id": "2025-12-06-santa-jim",
    "date": "2025-12-06",
    "sourceTitle": "Santa Jim 9/2 - Clifton Park",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [
      "Stephanie Leonard"
    ],
    "features": [],
    "notes": "Santa event in Clifton Park, 9-2."
  },
  {
    "id": "2025-12-06-smile-lodge-christmas-party",
    "date": "2025-12-06",
    "sourceTitle": "Smile Lodge Christmas Party 2 PHOTOGS 5PM",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": "Historical notes: Steph+1 in 2024; Steph/Andrew in 2023."
  },
  {
    "id": "2025-12-07-jaguars-volleyball",
    "date": "2025-12-07",
    "sourceTitle": "Jaguars Volleyball Club",
    "canonicalSchoolName": null,
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Molly",
      "Matt",
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": "Molly, Andrew +1 for team photos. Historical notes included in source PDF."
  },
  {
    "id": "2025-12-07-santa-jay",
    "date": "2025-12-07",
    "sourceTitle": "Santa Jay",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Lauren"
    ],
    "assistants": [],
    "features": [],
    "notes": "Santa event."
  },
  {
    "id": "2025-12-07-basketball-photo-booth",
    "date": "2025-12-07",
    "sourceTitle": "Basketball / Photo Booth - Siena PM",
    "canonicalSchoolName": null,
    "eventType": "Photo Booth",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [
      "Siena",
      "Beth"
    ],
    "features": [
      "Photo Booth Add-On"
    ],
    "notes": "Basketball and PM photo booth note from source."
  },
  {
    "id": "2025-12-08-childhood-friends-day1",
    "date": "2025-12-08",
    "sourceTitle": "Childhood Friends - Rotterdam (1 Team) Day 1",
    "canonicalSchoolName": "Childhood Friends - Rotterdam",
    "eventType": "Fall Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [],
    "features": [],
    "notes": "No assistant. Historical note: Molly/Andrew in 2024."
  },
  {
    "id": "2025-12-08-waterford-family-night",
    "date": "2025-12-08",
    "sourceTitle": "Waterford-Halfmoon Family Photo Night 4/8PM",
    "canonicalSchoolName": "Waterford Halfmoon Elem",
    "eventType": "Family Photos",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": "Family photo night, 4-8PM."
  },
  {
    "id": "2025-12-08-germantown-winter-sports",
    "date": "2025-12-08",
    "sourceTitle": "Germantown Winter Sports NEW",
    "canonicalSchoolName": null,
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "New winter sports account/event."
  },
  {
    "id": "2025-12-08-siena-photo-booth-pickup",
    "date": "2025-12-08",
    "sourceTitle": "Pick up photo booth from Siena",
    "canonicalSchoolName": null,
    "eventType": "Photo Booth",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [
      "Photo Booth Add-On"
    ],
    "notes": "Pick up photo booth from Siena."
  },
  {
    "id": "2025-12-08-zoller-new-date",
    "date": "2025-12-08",
    "sourceTitle": "NEW DATE Zoller Elementary (2 teams)",
    "canonicalSchoolName": "Zoller Elementary",
    "eventType": "Fall Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew",
      "Molly"
    ],
    "assistants": [
      "Siena",
      "Emily"
    ],
    "features": [],
    "notes": "New date from 12/2 snow day."
  },
  {
    "id": "2025-12-09-childhood-friends-day2",
    "date": "2025-12-09",
    "sourceTitle": "Childhood Friends - Rotterdam (1 Team) Day 2",
    "canonicalSchoolName": "Childhood Friends - Rotterdam",
    "eventType": "Fall Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [],
    "features": [],
    "notes": "No assistant. Historical note: Andrew/Molly in 2024."
  },
  {
    "id": "2025-12-09-cairo-winter-sports",
    "date": "2025-12-09",
    "sourceTitle": "Cairo-Durham Winter Sports (1 team)",
    "canonicalSchoolName": null,
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Matt"
    ],
    "assistants": [],
    "features": [],
    "notes": "School requested move date on 12/1. Historical sports notes in source."
  },
  {
    "id": "2025-12-09-tsl-sacred-heart",
    "date": "2025-12-09",
    "sourceTitle": "New TSL @ Sacred Heart (1 Team)",
    "canonicalSchoolName": "TSL Sacred Heart",
    "eventType": "Fall Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "New TSL account. No assistant. 60 kids."
  },
  {
    "id": "2025-12-09-chamber-conference-videos",
    "date": "2025-12-09",
    "sourceTitle": "Chamber Conference Videos",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Video/event planning item."
  },
  {
    "id": "2025-12-09-central-park-makeups-new-date",
    "date": "2025-12-09",
    "sourceTitle": "Central Park Middle MAKEUPS (1 team)",
    "canonicalSchoolName": "Central Park Middle School",
    "eventType": "Makeup Day",
    "status": "Completed",
    "photographers": [
      "Matt",
      "Stephanie"
    ],
    "assistants": [
      "Siena"
    ],
    "features": [],
    "notes": "New date due to snow day on 12/2. Steph covered."
  },
  {
    "id": "2025-12-10-rivers-casino-party",
    "date": "2025-12-10",
    "sourceTitle": "Rivers Casino Employee Party 6/10PM",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": "Follow up on time. Historical notes: Andrew in 2024 & 2022. Beth edit day."
  },
  {
    "id": "2025-12-10-santa-nick",
    "date": "2025-12-10",
    "sourceTitle": "Santa Nick booked",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Lauren"
    ],
    "assistants": [],
    "features": [],
    "notes": "Steph basketball PM and doctor AM."
  },
  {
    "id": "2025-12-10-gardner-dickinson-family-night",
    "date": "2025-12-10",
    "sourceTitle": "WYNANTSKILL (Gardner-Dickinson) Family Photo Night 3:30PM",
    "canonicalSchoolName": "Gardner Dickinson",
    "eventType": "Family Photos",
    "status": "Completed",
    "photographers": [
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "Steph not available. Historical notes: Steph 2024; Molly/Andrew 2022."
  },
  {
    "id": "2025-12-10-cohoes-winter-sports",
    "date": "2025-12-10",
    "sourceTitle": "Cohoes HS Winter Sports (1 team)",
    "canonicalSchoolName": null,
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Matt"
    ],
    "assistants": [
      "Emily"
    ],
    "features": [],
    "notes": "Scheduled 11/24/25."
  },
  {
    "id": "2025-12-11-clifton-kindercare-postponed-day1",
    "date": "2025-12-11",
    "sourceTitle": "POSTPONED DUE TO NO STAFF; Clifton KinderCare (1 team) Day 1",
    "canonicalSchoolName": "Kindercare Clifton Park",
    "eventType": "Fall Picture Day",
    "status": "Needs Photographers Scheduled",
    "photographers": [
      "Beth"
    ],
    "assistants": [
      "Siena"
    ],
    "features": [],
    "notes": "Postponed due to no staff. Historical notes: Beth Spring 2025; Beth/Andrew Spring 2024."
  },
  {
    "id": "2025-12-11-bkw-winter-sports",
    "date": "2025-12-11",
    "sourceTitle": "BKW Winter Sports (2 photogs)",
    "canonicalSchoolName": null,
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Matt"
    ],
    "assistants": [],
    "features": [],
    "notes": "Historical sports notes in source."
  },
  {
    "id": "2025-12-11-dean-leber-headshots",
    "date": "2025-12-11",
    "sourceTitle": "Dean Leber Leadership Headshots",
    "canonicalSchoolName": null,
    "eventType": "Headshots",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Leadership headshots."
  },
  {
    "id": "2025-12-11-kiras-corner",
    "date": "2025-12-11",
    "sourceTitle": "Kira's Corner (Rotterdam)",
    "canonicalSchoolName": "Kira's Corner",
    "eventType": "Fall Picture Day",
    "status": "Completed",
    "photographers": [
      "Lauren"
    ],
    "assistants": [],
    "features": [],
    "notes": "13 kids. Home daycare."
  },
  {
    "id": "2025-12-11-keane-makeups-new-date",
    "date": "2025-12-11",
    "sourceTitle": "Keane Makeups (1 Photog)",
    "canonicalSchoolName": "Keane Elementary",
    "eventType": "Makeup Day",
    "status": "Completed",
    "photographers": [
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "New date due to snow day on 12/2."
  },
  {
    "id": "2025-12-12-clifton-kindercare-postponed-day2",
    "date": "2025-12-12",
    "sourceTitle": "POSTPONED; Clifton KinderCare (1 team) Day 2",
    "canonicalSchoolName": "Kindercare Clifton Park",
    "eventType": "Fall Picture Day",
    "status": "Needs Photographers Scheduled",
    "photographers": [
      "Beth"
    ],
    "assistants": [
      "Siena"
    ],
    "features": [],
    "notes": "Postponed. Historical notes: Beth Spring 2025; Beth/Andrew Spring 2024."
  },
  {
    "id": "2025-12-12-rudys-vr-photobooth",
    "date": "2025-12-12",
    "sourceTitle": "Photobooth Rudy's VR 5:30p",
    "canonicalSchoolName": null,
    "eventType": "Photo Booth",
    "status": "Completed",
    "photographers": [
      "Molly"
    ],
    "assistants": [],
    "features": [
      "Photo Booth Add-On"
    ],
    "notes": "Drop off; 10pm pickup. Steph has Holy Cross basketball game PM."
  },
  {
    "id": "2025-12-13-santa-joel",
    "date": "2025-12-13",
    "sourceTitle": "Santa Joel studio",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "Studio Santa event."
  },
  {
    "id": "2025-12-15-santa-jay",
    "date": "2025-12-15",
    "sourceTitle": "Santa Jay",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Lauren"
    ],
    "assistants": [],
    "features": [],
    "notes": "Santa event."
  },
  {
    "id": "2025-12-15-cairo-winter-sports-rescheduled",
    "date": "2025-12-15",
    "sourceTitle": "RESCHEDULED: Cairo-Durham Winter Sports (1 team)",
    "canonicalSchoolName": null,
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Matt"
    ],
    "assistants": [],
    "features": [],
    "notes": "Rescheduled winter sports event. Historical sports notes in source."
  },
  {
    "id": "2025-12-16-chamber-board-meeting",
    "date": "2025-12-16",
    "sourceTitle": "Chamber Board Meeting",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Steph gone - Natalie graduation."
  },
  {
    "id": "2025-12-16-troy-14-makeups-new-date",
    "date": "2025-12-16",
    "sourceTitle": "Troy School 14 MAKEUPS (1 team)",
    "canonicalSchoolName": "Troy School 14",
    "eventType": "Makeup Day",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [],
    "features": [],
    "notes": "New date due to snow day on 12/2."
  },
  {
    "id": "2025-12-16-chamber-networking",
    "date": "2025-12-16",
    "sourceTitle": "Chamber Networking 5-7pm",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "5-7pm chamber networking event."
  },
  {
    "id": "2025-12-17-rivers-casino-party",
    "date": "2025-12-17",
    "sourceTitle": "Rivers Casino Employee Party 6/10PM",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": "Follow up on time. Historical notes: Andrew in 2024 & 2022."
  },
  {
    "id": "2025-12-17-santa-nick",
    "date": "2025-12-17",
    "sourceTitle": "Santa Nick booked",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Lauren"
    ],
    "assistants": [],
    "features": [],
    "notes": "Steph gone - Natalie graduation."
  },
  {
    "id": "2025-12-17-melodies-rehearsal",
    "date": "2025-12-17",
    "sourceTitle": "Melodies of Christmas Dress Rehearsal (PM)",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Needs Photographers Scheduled",
    "photographers": [
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "PM dress rehearsal. Source photographer unclear but Molly listed."
  },
  {
    "id": "2025-12-18-steph-gone",
    "date": "2025-12-18",
    "sourceTitle": "Steph gone - Natalie graduation",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "Steph unavailable."
  },
  {
    "id": "2025-12-19-steph-gone",
    "date": "2025-12-19",
    "sourceTitle": "Steph gone - Natalie graduation",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "Steph unavailable."
  },
  {
    "id": "2025-12-20-steph-gone",
    "date": "2025-12-20",
    "sourceTitle": "Steph gone - Natalie graduation",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "Steph unavailable."
  },
  {
    "id": "2025-12-21-melodies-group-photo",
    "date": "2025-12-21",
    "sourceTitle": "Melodies of Christmas Group Photo (afternoon)",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "Afternoon group photo. Steph gone - Natalie graduation."
  },
  {
    "id": "2025-12-31-noon-years-eve",
    "date": "2025-12-31",
    "sourceTitle": "Noon-Year's Eve - Colonie Center - Request Lauren",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Lauren"
    ],
    "assistants": [],
    "features": [],
    "notes": "Colonie Center Noon-Year's Eve event. Lauren requested."
  },
  {
    "id": "2026-02-02-lawton-social-call",
    "date": "2026-02-02",
    "sourceTitle": "Lawton Social Call",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Matt",
      "Milton",
      "Lauren"
    ],
    "assistants": [],
    "features": [],
    "notes": "Google Meet link in source PDF. Beth's husband out of town."
  },
  {
    "id": "2026-02-03-aag-senior-night",
    "date": "2026-02-03",
    "sourceTitle": "AAG Senior Night",
    "canonicalSchoolName": "The Academies (AA/G)",
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Senior night."
  },
  {
    "id": "2026-02-03-columbia-kicks-cancer-family-night",
    "date": "2026-02-03",
    "sourceTitle": "Columbia Kicks Cancer Family Photo Night 4-8pm",
    "canonicalSchoolName": "Columbia High School",
    "eventType": "Family Photos",
    "status": "Completed",
    "photographers": [
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "Cancer fundraising family photo event; may move to studio unless enough families register."
  },
  {
    "id": "2026-02-04-siena-career-fair",
    "date": "2026-02-04",
    "sourceTitle": "Siena Career Fair 1 Photog",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Siena career fair event."
  },
  {
    "id": "2026-02-04-digital-xpress-headshots",
    "date": "2026-02-04",
    "sourceTitle": "Digital Xpress Headshots on site",
    "canonicalSchoolName": null,
    "eventType": "Headshots",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Matt"
    ],
    "assistants": [],
    "features": [],
    "notes": "On-site headshots."
  },
  {
    "id": "2026-02-04-erin-interview",
    "date": "2026-02-04",
    "sourceTitle": "Google meet with Erin Lefebvre (3rd Interview)",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Matt"
    ],
    "assistants": [],
    "features": [],
    "notes": "Third interview. Google Meet details in source PDF."
  },
  {
    "id": "2026-02-05-heatly-8th-grade-grad",
    "date": "2026-02-05",
    "sourceTitle": "Heatly 8th Grade Grad Photos (1 Photog + Assistant)",
    "canonicalSchoolName": "Heatly School",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [
      "Matt"
    ],
    "features": "8th grade graduation photos.",
    "notes": [
      "Grad Photos"
    ]
  },
  {
    "id": "2026-02-05-karigon-yearbook",
    "date": "2026-02-05",
    "sourceTitle": "Karigon Yearbook Photos 1 Photog",
    "canonicalSchoolName": "Shen - Karigon",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [],
    "features": [
      "Yearbook Photos"
    ],
    "notes": "Yearbook photos."
  },
  {
    "id": "2026-02-06-studio-monthly-meeting",
    "date": "2026-02-06",
    "sourceTitle": "Studio Monthly Meeting",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Matt",
      "Milton",
      "Lauren"
    ],
    "assistants": [],
    "features": [],
    "notes": "Monthly studio meeting."
  },
  {
    "id": "2026-02-06-lighting-senior-workshop",
    "date": "2026-02-06",
    "sourceTitle": "School Photographers: Lighting and Senior Workshop 9:30am STUDIO",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "Workshop at studio, 9:30am."
  },
  {
    "id": "2026-02-07-duanesburg-sweetheart-dance",
    "date": "2026-02-07",
    "sourceTitle": "Duanesburg Sweetheart Dance",
    "canonicalSchoolName": "Duanesburg",
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "1 photographer. GotPhoto. One free 5x7 print for each attendee, option to buy more."
  },
  {
    "id": "2026-02-07-albany-academy-photo-booth",
    "date": "2026-02-07",
    "sourceTitle": "Albany Academy Photobooth",
    "canonicalSchoolName": "The Academies (AA/G)",
    "eventType": "Photo Booth",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [
      "Photo Booth Add-On"
    ],
    "notes": "Photo booth drop off."
  },
  {
    "id": "2026-02-09-ny-farm-bureau-photo-booth",
    "date": "2026-02-09",
    "sourceTitle": "NY Farm Bureau Photo Booth",
    "canonicalSchoolName": null,
    "eventType": "Photo Booth",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [],
    "features": [
      "Photo Booth Add-On"
    ],
    "notes": "Photo booth event."
  },
  {
    "id": "2026-02-09-studio-staff-quarterly",
    "date": "2026-02-09",
    "sourceTitle": "Studio Staff Quarterly Meeting",
    "canonicalSchoolName": null,
    "eventType": "Call or Meeting",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Matt"
    ],
    "assistants": [],
    "features": [],
    "notes": "Studio staff quarterly meeting."
  },
  {
    "id": "2026-02-09-jacob-headshot",
    "date": "2026-02-09",
    "sourceTitle": "Jacob Chenier Sausville Benson Headshot 3:00",
    "canonicalSchoolName": null,
    "eventType": "Headshots",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Headshot at 3:00."
  },
  {
    "id": "2026-02-10-cairo-spring-photos-all-grades",
    "date": "2026-02-10",
    "sourceTitle": "Cairo-Durham Spring Photos ALL GRADES",
    "canonicalSchoolName": "Cairo-Durham Elem",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Molly",
      "Matt"
    ],
    "assistants": [],
    "features": [],
    "notes": "Confirmation received 1/27/26 that all grades can be photographed on this date. Try to merge everything on this day."
  },
  {
    "id": "2026-02-11-cairo-spring-photos-day2",
    "date": "2026-02-11",
    "sourceTitle": "Cairo-Durham Spring Photos Day 2",
    "canonicalSchoolName": "Cairo-Durham MS/HS",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "Day 2 of Cairo-Durham spring photos."
  },
  {
    "id": "2026-02-11-rpi-career-fair",
    "date": "2026-02-11",
    "sourceTitle": "RPI Career Fair 11-3",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Andrew",
      "Beth"
    ],
    "assistants": [],
    "features": [],
    "notes": "RPI career fair, 11-3."
  },
  {
    "id": "2026-02-11-siena-career-fair",
    "date": "2026-02-11",
    "sourceTitle": "Siena Career Fair 1 Photog",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Siena career fair event."
  },
  {
    "id": "2026-02-12-columbia-musicians",
    "date": "2026-02-12",
    "sourceTitle": "Columbia High Musicians Early AM",
    "canonicalSchoolName": "Columbia High School",
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Early AM musician photos."
  },
  {
    "id": "2026-02-12-melodies-reception-rescheduling",
    "date": "2026-02-12",
    "sourceTitle": "RESCHEDULING: Melodies of Christmas Reception",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Rain Watch",
    "photographers": [
      "Matt"
    ],
    "assistants": [],
    "features": [],
    "notes": "Rescheduling note."
  },
  {
    "id": "2026-02-12-wildwood-seniors",
    "date": "2026-02-12",
    "sourceTitle": "Wildwood Seniors",
    "canonicalSchoolName": "Wildwood",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": "Senior portraits."
  },
  {
    "id": "2026-02-13-night-to-shine-photobooth",
    "date": "2026-02-13",
    "sourceTitle": "A Night to Shine Photobooth",
    "canonicalSchoolName": null,
    "eventType": "Photo Booth",
    "status": "Completed",
    "photographers": [
      "Beth"
    ],
    "assistants": [],
    "features": [
      "Photo Booth Add-On"
    ],
    "notes": "Donation for prom; attendant gets $100."
  },
  {
    "id": "2026-02-13-christ-the-king-dance",
    "date": "2026-02-13",
    "sourceTitle": "Christ the King Valentine's Day Dance",
    "canonicalSchoolName": "Christ the King",
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "Valentine's Day dance."
  },
  {
    "id": "2026-02-13-duanesburg-basketball-senior-nights",
    "date": "2026-02-13",
    "sourceTitle": "Duanesburg Basketball senior nights (both boys/girls)",
    "canonicalSchoolName": null,
    "eventType": "Sports",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Basketball senior nights for both boys/girls."
  },
  {
    "id": "2026-02-14-valentines-day",
    "date": "2026-02-14",
    "sourceTitle": "VALENTINE'S DAY",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "Holiday marker."
  },
  {
    "id": "2026-02-15-public-school-winter-recess",
    "date": "2026-02-15",
    "sourceTitle": "PUBLIC SCHOOL WINTER RECESS WEEK",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [],
    "assistants": [],
    "features": [],
    "notes": "Beth off."
  },
  {
    "id": "2026-02-17-belanger-nursing-seniors",
    "date": "2026-02-17",
    "sourceTitle": "Belanger Nursing Seniors (2 Photogs)",
    "canonicalSchoolName": "Belanger Nursing Seniors",
    "eventType": "Seniors",
    "status": "Completed",
    "photographers": [
      "Molly",
      "Matt"
    ],
    "assistants": [],
    "features": [],
    "notes": "Beth off."
  },
  {
    "id": "2026-02-18-siena-career-fair",
    "date": "2026-02-18",
    "sourceTitle": "Siena Career Fair 1 Photog",
    "canonicalSchoolName": null,
    "eventType": "Special Event",
    "status": "Completed",
    "photographers": [
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": "Beth off."
  },
  {
    "id": "2026-02-20-academy-head-headshots",
    "date": "2026-02-20",
    "sourceTitle": "New Academy Head of School Michael Turner Headshots",
    "canonicalSchoolName": "The Academies (AA/G)",
    "eventType": "Headshots",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "New Academy Head of School Michael Turner headshots. Beth off."
  },
  {
    "id": "2026-02-23-mentoring-monday-headshots",
    "date": "2026-02-23",
    "sourceTitle": "Mentoring Monday Headshots",
    "canonicalSchoolName": null,
    "eventType": "Headshots",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "Steph start, Molly finish."
  },
  {
    "id": "2026-02-24-sara-marie-gala-headshots",
    "date": "2026-02-24",
    "sourceTitle": "Sara Marie School Gala Headshots",
    "canonicalSchoolName": "Sara Marie Preschool",
    "eventType": "Headshots",
    "status": "Completed",
    "photographers": [
      "Stephanie",
      "Beth"
    ],
    "assistants": [],
    "features": [],
    "notes": "Steph? Beth tagging along."
  },
  {
    "id": "2026-02-24-union-visa-headshots",
    "date": "2026-02-24",
    "sourceTitle": "Union College VISA headshots 12:00-2:30",
    "canonicalSchoolName": null,
    "eventType": "Headshots",
    "status": "Completed",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Union College VISA headshots, 12:00-2:30."
  },
  {
    "id": "2026-02-25-schenectady-jcc-day1",
    "date": "2026-02-25",
    "sourceTitle": "Schenectady JCC Day 1 (1 Team)",
    "canonicalSchoolName": "Schenectady JCC",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Beth",
      "Molly"
    ],
    "assistants": [],
    "features": [],
    "notes": "Day 1."
  },
  {
    "id": "2026-02-25-blessed-sacrament-spring-moved",
    "date": "2026-02-25",
    "sourceTitle": "Blessed Sacrament Spring Photos",
    "canonicalSchoolName": "Blessed Sacrament Elementary",
    "eventType": "Spring Picture Day",
    "status": "Rain Watch",
    "photographers": [
      "Andrew"
    ],
    "assistants": [],
    "features": [],
    "notes": "School not prepped on 2/25; moving to April 23 per source note."
  },
  {
    "id": "2026-02-26-schenectady-jcc-day2",
    "date": "2026-02-26",
    "sourceTitle": "Schenectady JCC Day 2 (1 Team)",
    "canonicalSchoolName": "Schenectady JCC",
    "eventType": "Spring Picture Day",
    "status": "Completed",
    "photographers": [
      "Molly",
      "Beth"
    ],
    "assistants": [],
    "features": [],
    "notes": "Day 2."
  },
  {
    "id": "2026-02-26-northville-clubs-tentative",
    "date": "2026-02-26",
    "sourceTitle": "Tentative - Northville Clubs",
    "canonicalSchoolName": "Northville",
    "eventType": "Special Event",
    "status": "Rain Watch",
    "photographers": [
      "Stephanie"
    ],
    "assistants": [],
    "features": [],
    "notes": "Rescheduling to same day as spring sports, TBD."
  },

];

function extractIrm(title) {
  const match = String(title || '').match(/~?(\d+)\s*IRM/i);
  return match ? Number(match[1]) : null;
}

function extractTime(title) {
  const text = String(title || '');
  const timeMatch = text.match(/\b(\d{1,2})(?::(\d{2}))?\s*(AM|PM|am|pm)\b/);
  if (timeMatch) {
    const minutes = timeMatch[2] ? `:${timeMatch[2]}` : ':00';
    return `${timeMatch[1]}${minutes} ${timeMatch[3].toUpperCase()}`;
  }
  if (/\bMORNING\b/i.test(text)) return 'Morning';
  if (/\bAFTERNOON\b/i.test(text)) return 'Afternoon';
  if (/\bEVENING\b/i.test(text)) return 'Evening';
  if (/\bNOON\b/i.test(text)) return 'Noon';
  if (/\bAll Day\b/i.test(text) || /LABOR DAY/i.test(text)) return 'All Day';
  return 'TBD';
}

function buildHistory(event) {
  const pieces = [];
  if (event.canonicalSchoolName) pieces.push(`Canonical school: ${event.canonicalSchoolName}`);
  if (event.sourceTitle && event.sourceTitle !== event.canonicalSchoolName) pieces.push(`Source title: ${event.sourceTitle}`);
  if (event.features?.length) pieces.push(`Features: ${event.features.join(', ')}`);
  return pieces.join(' · ');
}

export const EVENTS = historicalScheduleEvents.map((event) => ({
  id: event.id,
  date: event.date,
  title: event.sourceTitle,
  canonicalSchool: event.canonicalSchoolName || '',
  type: event.eventType,
  status: event.status || 'Scheduled',
  time: extractTime(event.sourceTitle),
  irm: extractIrm(event.sourceTitle),
  photographers: event.photographers || [],
  assistants: event.assistants || [],
  features: event.features || [],
  notes: event.notes || '',
  rainInfo: event.eventType === 'Rain Date' ? event.notes || 'Rain date.' : '',
  history: buildHistory(event)
}));


export const SCHOOLS = [
  {
    "name": "Airline Academy",
    "irm": 8,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Albany - Arbor Hill",
    "irm": 21,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Albany - ASH",
    "irm": 63,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Albany - Eagle Point",
    "irm": 39,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Albany - Hackett",
    "irm": 22,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Albany - Myers",
    "irm": 16,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Albany JCC",
    "irm": 49,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "B. Spa - Gordon Creek",
    "irm": 105,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "B. Spa - Malta Ave",
    "irm": 89,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "B. Spa - Milton Terrace",
    "irm": 70,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "B. Spa - Wood Road",
    "irm": 111,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "BKW Secondary",
    "irm": 30,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "BKW Seniors",
    "irm": null,
    "notes": "Senior account seeded from Fall 2025 stats. Address/logistics to be added later."
  },
  {
    "name": "Blessed Sacrament",
    "irm": 7,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Cairo-Durham Elem",
    "irm": 111,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Cairo-Durham MS/HS",
    "irm": 33,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Cairo-Durham Seniors",
    "irm": 82,
    "notes": "Senior account seeded from Fall 2025 stats. Address/logistics to be added later."
  },
  {
    "name": "Calvary Methodist",
    "irm": 7,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Childhood Friends Rotterdam",
    "irm": 24,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Christ the King",
    "irm": 22,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Cohoes High School",
    "irm": 24,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Cohoes Seniors",
    "irm": null,
    "notes": "Senior account seeded from Fall 2025 stats. Address/logistics to be added later."
  },
  {
    "name": "CP Baptist Preschool",
    "irm": 11,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "D'burg Elementary",
    "irm": 91,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "D'burg MS/HS",
    "irm": 42,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Destine Prep",
    "irm": 16,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Duanesburg Seniors",
    "irm": null,
    "notes": "Senior account seeded from Fall 2025 stats. Address/logistics to be added later."
  },
  {
    "name": "Gardner Dickinson",
    "irm": 66,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Glencliff Elementary",
    "irm": 83,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Green Tech MS/HS",
    "irm": 10,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Heatly School",
    "irm": 19,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Hoosic Seniors",
    "irm": 72,
    "notes": "Senior account seeded from Fall 2025 stats. Address/logistics to be added later."
  },
  {
    "name": "Hoosic Valley MS/HS",
    "irm": 59,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Hudson Valley Consortium",
    "irm": 13,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Infinite Care All Locations",
    "irm": 4,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Kid's Express",
    "irm": 32,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Kira's Corner",
    "irm": 5,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Latham Christian Academy",
    "irm": 3,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "LCS Seniors",
    "irm": 25,
    "notes": "Senior account seeded from Fall 2025 stats. Address/logistics to be added later."
  },
  {
    "name": "Learning Garden Latham",
    "irm": 19,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Learning Garden Slingerlands",
    "irm": 33,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Little Achievers",
    "irm": 31,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Little Journeys",
    "irm": 3,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Little Llamas",
    "irm": 9,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Little Scholars",
    "irm": 10,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Loudonville Christian",
    "irm": 25,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Maple Leaf - Burnt Hills",
    "irm": 17,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Maple Leaf - Halfmoon",
    "irm": 23,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Maple Leaf - Malta North",
    "irm": 21,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Maple Leaf - Malta South",
    "irm": 10,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Maywood Academy",
    "irm": 4,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Mother Theresa Academy",
    "irm": 45,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Nathan Lebron ELC",
    "irm": 7,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "New Lebanon Jr/Sr",
    "irm": 10,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "New Lebanon Seniors",
    "irm": 7,
    "notes": "Senior account seeded from Fall 2025 stats. Address/logistics to be added later."
  },
  {
    "name": "Nisky - Craig Elem",
    "irm": 84,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Nisky - Glencliff Elem",
    "irm": 83,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Nisky - Rosendale Elem",
    "irm": 95,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "North Colonie UPK",
    "irm": 1,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Northville",
    "irm": 89,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Northville Seniors",
    "irm": 74,
    "notes": "Senior account seeded from Fall 2025 stats. Address/logistics to be added later."
  },
  {
    "name": "Our Saviors",
    "irm": 34,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Poohs Corner",
    "irm": 10,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Precious Hearts",
    "irm": 7,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "RCS - AW Becker",
    "irm": 90,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "RCS - PB Coeymans",
    "irm": 98,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Saint Madeleine",
    "irm": 61,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Sara Marie School",
    "irm": 28,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Schalmont - Jefferson Elem",
    "irm": 195,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Schalmont - Woestina PK",
    "irm": 14,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Sch'tady - Central Park MS",
    "irm": 27,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Sch'tady - Hamilton",
    "irm": 46,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Sch'tady - Keane",
    "irm": 40,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Sch'tady - Lincoln",
    "irm": 25,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Sch'tady - MLK Elementary",
    "irm": 25,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Sch'tady - Pleasant Valley",
    "irm": 29,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Sch'tady - Van Corlaer",
    "irm": 62,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Sch'tady - Yates",
    "irm": 36,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Sch'tady - Zoller",
    "irm": 48,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Shen - Arongen",
    "irm": 100,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Shen - Chango (NEW)",
    "irm": 118,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Shen - Karigon",
    "irm": 88,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Shen - Okte",
    "irm": 113,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Shen - Orenda",
    "irm": 100,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Shen - Shatekon",
    "irm": 89,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Shen - Skano",
    "irm": 100,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Shen - Tesago",
    "irm": 63,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Shen United Methodist PK",
    "irm": 39,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Stevens Elementary",
    "irm": 158,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "The Academies (AA/G)",
    "irm": 222,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "The Academies Seniors",
    "irm": null,
    "notes": "Senior account seeded from Fall 2025 stats. Address/logistics to be added later."
  },
  {
    "name": "Troy School 14",
    "irm": 37,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "TSL Bethlehem",
    "irm": 21,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "TSL East Greenbush",
    "irm": 3,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "TSL Guilderland",
    "irm": 14,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "TSL Nisky",
    "irm": 6,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "TSL Rotterdam",
    "irm": 6,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "TSL Sacred Heart",
    "irm": 9,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "TSL Scotia",
    "irm": 2,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "TSL Troy",
    "irm": 12,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Turner's Tots",
    "irm": 1,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Two by Two Nursery",
    "irm": 9,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Walter B Howard",
    "irm": 47,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Waterford Halfmoon Elem",
    "irm": 55,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Waterford MS/HS",
    "irm": 31,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Waterford Seniors",
    "irm": 64,
    "notes": "Senior account seeded from Fall 2025 stats. Address/logistics to be added later."
  },
  {
    "name": "Widdle Ones",
    "irm": 9,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Wildwood",
    "irm": 19,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  },
  {
    "name": "Wonderland",
    "irm": 25,
    "notes": "Seeded from Fall 2025 stats. Address to be added later."
  }  ,
  {
    "name": "Colonie Community Daycare",
    "irm": null,
    "notes": "Added from May 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Happy Kids Daycare",
    "irm": null,
    "notes": "Added from May 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Keane Elementary",
    "irm": null,
    "notes": "Added from May 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Maple Leaf Burnt Hills",
    "irm": null,
    "notes": "Added from May 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Maple Leaf Halfmoon",
    "irm": null,
    "notes": "Added from May 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Maple Leaf Malta South",
    "irm": null,
    "notes": "Added from May 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Pieter B Coeymans",
    "irm": null,
    "notes": "Added from May 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Childtime Preschool",
    "irm": null,
    "notes": "Added from April 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Duanesburg",
    "irm": null,
    "notes": "Added from April 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Green Tech Seniors",
    "irm": null,
    "notes": "Added from April 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Kindercare Clifton Park",
    "irm": null,
    "notes": "Added from April 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Kindercare Niskayuna",
    "irm": null,
    "notes": "Added from April 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Maple Leaf Malta North",
    "irm": null,
    "notes": "Added from April 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "New Dreams Nursery",
    "irm": null,
    "notes": "Added from April 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Precious Hearts Daycare",
    "irm": null,
    "notes": "Added from April 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "RPI Seniors",
    "irm": null,
    "notes": "Added from April 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Shaker Seniors",
    "irm": null,
    "notes": "Added from April 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Spotted Zebra",
    "irm": null,
    "notes": "Added from April 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "TSL Bethlehem UPK",
    "irm": null,
    "notes": "Added from April 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "TSL East Greenbush UPK",
    "irm": null,
    "notes": "Added from April 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "TSL New Karner",
    "irm": null,
    "notes": "Added from April 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "TSL Niskayuna UPK",
    "irm": null,
    "notes": "Added from April 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Tech Valley Seniors",
    "irm": null,
    "notes": "Added from March 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Our Lady Queen of Peace Nursery School",
    "irm": null,
    "notes": "Added from March 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Story Place Preschool",
    "irm": null,
    "notes": "Added from March 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "SCAP Early Learning Bigelow",
    "irm": null,
    "notes": "Added from March 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "SCAP Northside",
    "irm": null,
    "notes": "Added from March 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "SCAP Bellevue",
    "irm": null,
    "notes": "Added from March 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Elevate Dance Project",
    "irm": null,
    "notes": "Added from March 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Destine Prep Charter School",
    "irm": null,
    "notes": "Added from March 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Central Park Middle School",
    "irm": null,
    "notes": "Added from December 2025 Winter schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Zoller Elementary",
    "irm": null,
    "notes": "Added from December 2025 Winter schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "MLK Jr. Elementary",
    "irm": null,
    "notes": "Added from December 2025 Winter schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Airline Drive Academy",
    "irm": null,
    "notes": "Added from December 2025 Winter schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Maywood Academy BOCES",
    "irm": null,
    "notes": "Added from December 2025 Winter schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Infinite Care KIPP",
    "irm": null,
    "notes": "Added from December 2025 Winter schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Turner's Tots Preschool",
    "irm": null,
    "notes": "Added from December 2025 Winter schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Childhood Friends - Rotterdam",
    "irm": null,
    "notes": "Added from December 2025 Winter schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Columbia High School",
    "irm": null,
    "notes": "Added from February 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Belanger Nursing Seniors",
    "irm": null,
    "notes": "Added from February 2026 Spring schedule import. Address/logistics to be added later."
  }  ,
  {
    "name": "Schenectady JCC",
    "irm": null,
    "notes": "Added from February 2026 Spring schedule import. Address/logistics to be added later."
  }
];
