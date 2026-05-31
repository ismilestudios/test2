export const PHOTOGRAPHERS = ['Stephanie', 'Matt', 'Molly', 'Beth', 'Andrew', 'Lauren', 'Emily'];
export const ASSISTANTS = ['Victoria', 'Siena', 'Meg', 'Carmen', 'Margaret', 'Simone', 'Colleen', 'Kristen', 'Jaime', 'Sam', 'Cori', 'Marianna'];
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
  'Special Event': 'bg-indigo-50 text-indigo-900 border-indigo-200'
};

export const SCHOOL_ALIASES = {
  'Craig Elementary': ['Nisky Craig', 'Craig Elem', 'Craig Elementary'],
  'Skano Elementary': ['Skano', 'Skano Elementary'],
  'Capital Region BOCES Albany CTE': ['Albany CTE', 'Albany CTE BOCES', 'Capital Region BOCES Albany CTE'],
  'Bell Top Elementary': ['Bell Top', 'Belltop Elementary'],
  'Turnpike Elementary': ['Turnpike', 'Turnpike Elementary'],
  'Rosendale Elementary': ['Rosendale', 'Rosendale Elementary']
};

// Seeded September 2025 prototype data. Replace/extend this array with the full imported PDF rows when available.
export const EVENTS = [
  {
    id: 'sep-02-craig', date: '2025-09-02', title: 'Craig Elementary', canonicalSchool: 'Craig Elementary', type: 'Fall Picture Day', status: 'Completed', time: '8:00 AM', irm: 42,
    photographers: ['Stephanie'], assistants: ['Victoria'], notes: 'First day after holiday weekend. Keep setup simple and confirm main office contact on arrival.', rainInfo: '', history: 'Aliases: Nisky Craig, Craig Elem.'
  },
  {
    id: 'sep-03-skano', date: '2025-09-03', title: 'Skano Elementary', canonicalSchool: 'Skano Elementary', type: 'Fall Picture Day', status: 'Completed', time: '7:45 AM', irm: 58,
    photographers: ['Matt', 'Molly'], assistants: ['Siena'], notes: 'Important historical staffing reference. Verify who photographed for September 2026 planning.', rainInfo: '', history: 'September 2025: Matt + Molly.'
  },
  {
    id: 'sep-03-seniors', date: '2025-09-03', title: 'Senior Portraits — Studio', canonicalSchool: 'Studio Seniors', type: 'Seniors', status: 'Completed', time: '2:00 PM', irm: null,
    photographers: ['Beth'], assistants: [], notes: 'Afternoon senior block.', rainInfo: '', history: 'Studio senior workflow.'
  },
  {
    id: 'sep-04-belltop', date: '2025-09-04', title: 'Bell Top Elementary', canonicalSchool: 'Bell Top Elementary', type: 'Fall Picture Day', status: 'Completed', time: '8:00 AM', irm: 35,
    photographers: ['Lauren'], assistants: ['Meg'], notes: 'Standard elementary setup. Watch for sibling forms.', rainInfo: '', history: 'Aliases: Bell Top, Belltop Elementary.'
  },
  {
    id: 'sep-05-meeting', date: '2025-09-05', title: 'Fall Ops Planning', canonicalSchool: '', type: 'Call or Meeting', status: 'Completed', time: '10:00 AM', irm: null,
    photographers: [], assistants: [], notes: 'Internal planning with Matt, Stephanie, Carrie.', rainInfo: '', history: 'Use “Call or Meeting” terminology.'
  },
  {
    id: 'sep-08-albany-cte', date: '2025-09-08', title: 'Capital Region BOCES Albany CTE', canonicalSchool: 'Capital Region BOCES Albany CTE', type: 'Fall Picture Day', status: 'Completed', time: '7:30 AM', irm: 74,
    photographers: ['Andrew', 'Emily'], assistants: ['Carmen', 'Margaret'], notes: 'Large account. Strong historical note value. Confirm program groups and any duplicate student handling.', rainInfo: '', history: 'Aliases: Albany CTE, Albany CTE BOCES.'
  },
  {
    id: 'sep-09-turnpike', date: '2025-09-09', title: 'Turnpike Elementary', canonicalSchool: 'Turnpike Elementary', type: 'Fall Picture Day', status: 'Completed', time: '8:15 AM', irm: 29,
    photographers: ['Molly'], assistants: ['Simone'], notes: 'Lower IRM but maintain school relationship notes.', rainInfo: '', history: 'Aliases: Turnpike.'
  },
  {
    id: 'sep-10-rosendale', date: '2025-09-10', title: 'Rosendale Elementary', canonicalSchool: 'Rosendale Elementary', type: 'Fall Picture Day', status: 'Completed', time: '8:00 AM', irm: 33,
    photographers: ['Matt'], assistants: ['Colleen'], notes: 'Typical elementary morning. Add any access constraints after staff review.', rainInfo: '', history: 'Aliases: Rosendale.'
  },
  {
    id: 'sep-10-sports', date: '2025-09-10', title: 'Fall Sports Pictures', canonicalSchool: '', type: 'Sports', status: 'Completed', time: '3:30 PM', irm: null,
    photographers: ['Lauren'], assistants: ['Kristen'], notes: 'Outdoor sports block. Keep rain visibility available.', rainInfo: 'Weather-sensitive.', history: 'Sports event — preserve separately from schools.'
  },
  {
    id: 'sep-11-rain', date: '2025-09-11', title: 'Outdoor Rain Backup Window', canonicalSchool: '', type: 'Rain Date', status: 'Rain Watch', time: 'All Day', irm: null,
    photographers: [], assistants: [], notes: 'Reserved for weather movement.', rainInfo: 'Rain Watch.', history: 'Useful for month view visibility.'
  },
  {
    id: 'sep-12-photo-booth', date: '2025-09-12', title: 'School Photo Booth Event', canonicalSchool: '', type: 'Photo Booth', status: 'Scheduled', time: '6:00 PM', irm: null,
    photographers: ['Emily'], assistants: ['Jaime'], notes: 'Evening special event.', rainInfo: '', history: 'Special events should remain searchable.'
  },
  {
    id: 'sep-15-makeup', date: '2025-09-15', title: 'Makeup Day — Early September Schools', canonicalSchool: '', type: 'Makeup Day', status: 'Scheduled', time: '9:00 AM', irm: null,
    photographers: ['Beth'], assistants: ['Sam'], notes: 'Use as placeholder bucket for makeup workflow.', rainInfo: '', history: 'Makeup days need their own event type.'
  },
  {
    id: 'sep-16-headshots', date: '2025-09-16', title: 'Staff Headshots', canonicalSchool: '', type: 'Headshots', status: 'Scheduled', time: '1:00 PM', irm: null,
    photographers: ['Stephanie'], assistants: [], notes: 'Headshot event type supported.', rainInfo: '', history: 'Internal reference event.'
  },
  {
    id: 'sep-18-family', date: '2025-09-18', title: 'Family Photos — Studio', canonicalSchool: '', type: 'Family Photos', status: 'Scheduled', time: '4:00 PM', irm: null,
    photographers: ['Matt'], assistants: [], notes: 'Family photos block.', rainInfo: '', history: 'Separate from school picture days.'
  },
  {
    id: 'sep-22-needs-photo', date: '2025-09-22', title: 'School Pending Photographer', canonicalSchool: '', type: 'Fall Picture Day', status: 'Needs Photographers Scheduled', time: '8:00 AM', irm: 46,
    photographers: [], assistants: ['Marianna'], notes: 'Use exact status label: Needs Photographers Scheduled.', rainInfo: '', history: 'Demonstrates unscheduled workflow without saying “unassigned.”'
  },
  {
    id: 'sep-24-special', date: '2025-09-24', title: 'Special Event Coverage', canonicalSchool: '', type: 'Special Event', status: 'Scheduled', time: '11:00 AM', irm: null,
    photographers: ['Andrew'], assistants: ['Cori'], notes: 'Special event color and search coverage.', rainInfo: '', history: 'Non-school operational event.'
  },
  {
    id: 'sep-26-spring-pano', date: '2025-09-26', title: 'Panorama Planning Note', canonicalSchool: '', type: 'Spring Picture Day', status: 'Scheduled', time: '12:00 PM', irm: null,
    photographers: [], assistants: [], notes: 'Panoramas are often connected to Spring Picture Day terminology.', rainInfo: '', history: 'Terminology reminder built into prototype.'
  }
];
