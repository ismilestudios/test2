-- iSmile Scheduler ICS one-time reconciliation
-- Normalizes imported Google Calendar rows so Fall 2026 matches Fall 2024-Spring 2026 app logic.
-- Safe to rerun; updates only source = google_calendar_import rows by client_event_id.
BEGIN;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Gordon Creek Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_56a0e55dacaffd41$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Little Achievers$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_76302d584805b35e$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e7adb3ad0a561c52$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Hudson Valley Consortium$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c08567b734736b9e$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Waterford MS/HS$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_5419ec24b8e081aa$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Little Scholars$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_0de20fa4e3187254$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3b97432eba0a62cf$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_36464b705c997ae7$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$Kindercare Niskayuna$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4c886e3cf73fc11c$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_03a9c631c6a961bf$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$The Academies (AA/G)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_64b885c992192a71$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Heatly School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2c1ae0f6521e3c2e$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_53093fd56c604461$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_91f9c7b2def83c0d$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c26f42be528ad90f$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$Shatekon Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_36e032a70d7ed47e$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Karigon Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_8a970590ffb66315$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e638379f8dc83d85$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Hoosic Seniors$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_db7323bd46b21e6b$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_27e202dc4b3e6fd4$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  canonical_school = $sch$Karigon Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7b114059748dfda2$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9f42e159c8d0ba9f$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Little Achievers$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_faaacc08b17bddc9$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a50871c9303eb334$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Walter B Howard$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_20d95b339b5d177f$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b786f6ecc86fb999$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Gordon Creek Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_56a1e65eaf013cb9$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Chango Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_8a76e377ba7776b0$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_43e80a441020d5a3$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_1eb13e13e844d44d$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Wood Road Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_104f22f19098d1e9$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4395a4b0153070da$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Hoosic Valley MS/HS$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_71ff88251e39ff8d$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_419698feda8a81f6$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_81e67dbd782fc601$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  canonical_school = $sch$The Academies (AA/G)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_800863c57833d3c4$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Shatekon Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_22237584d5189c56$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Rosendale Elementary School (Niskayuna School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_6f9140305f4d0976$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_60a7a35f148eeb3b$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e1416b4ca45af8e3$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$The Academies (AA/G)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_0701288d27f27dad$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Little Scholars$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_41f1801eb315efe1$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Karigon Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_fcd3b34d08502e09$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Skano Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_97f94ee0d50b18b7$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4cab0fa0fe07a969$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Tesago Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7cb4a7b2897886c6$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Arongen Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a8abd64dc173bbb1$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a482b8821adc8910$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  canonical_school = $sch$Northville$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_1b45e5d66cd72930$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_810f6114a384a704$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Waterford Halfmoon Elem$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ab73f94bb0a284ed$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Belanger Nursing Seniors$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_daa606e6925e0033$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Albany JCC$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_972d27e3fcefedea$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f295da5ea69cbd3f$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b8e226d6e7087a2a$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_cf1325142106cfdd$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3544a16e2f55e33b$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_afdfb328a371da8c$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_858ae45af31b955e$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_07c7ac0f5ab0817b$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$TSL Guilderland$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_5d965056e8507431$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$D'burg Elementary$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_5ec082703a7cf501$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Milton Terrace Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_98c254fe4b5e0c8d$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$Little Journeys$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7b5f7900f17867af$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$The Academies (AA/G)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_fcb3a79edaf8fa4a$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Gordon Creek Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3a333d6927bbfa2e$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Wildwood$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4ca49f4eb1f85567$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Walter B Howard$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4b29fb5066c2f596$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Stevens Elementary$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_204e8a4a92b0c8a3$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b3041e32bfb65826$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9bc1699b7e580e0c$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_79ffc0ece37110c3$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Heatly School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_edd96763fe3a7dd8$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7798967c9a3120a0$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Wood Road Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f2d98c6aa6726200$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_236e92b91f237da7$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e4d3b8b48ac85e8f$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_6775636b2cde597e$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$Little Achievers$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_045910259bc36fef$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$TSL East Greenbush$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b53e5726abf817f4$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Arongen Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_83b614a79b6831e4$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c9d9ecb1f82a6749$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  canonical_school = $sch$Duanesburg$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_14e54e845e01fe27$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9de149357c4e1289$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Cohoes High School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c5e96405cea1e1dc$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3b1f1540d8ea0731$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f38b48e5fd0760e8$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_5e727fb1bbaf7549$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Loudonville Christian$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c86c9415e0d68af7$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_600755e0794d7d25$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_174a141cc34935cb$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Okte Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_00efd71146a580d8$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_17134c39c124fdb5$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c2776428465f5605$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e29da08efd59c834$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$Cairo-Durham Elem$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f9af71329efc2d06$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  canonical_school = $sch$Stevens Elementary$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_af2ca2fd194a3840$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$The Academies (AA/G)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_0b9e0a8227681b08$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$TSL Troy$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_28da834d3cff8976$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_933aeb0d9194cea9$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7c7218231df17535$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e6b6915299356202$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Airline Drive Academy$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_60f08d1d37576991$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Rosendale Elementary School (Niskayuna School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_95416b712408b89f$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d6eb0b7f313bb928$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_035496c253b57b2a$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Poohs Corner$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9622b317ce4c79f7$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Wood Road Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ea53a4734446e052$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_17d862fd49242f9b$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4aecaaa8477aa230$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Cohoes High School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_5dc177253b96f82a$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_74e0162b1d5137e5$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Cairo-Durham Elem$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ac5e1f1222aa995f$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Little Scholars$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f18472f018722f87$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Maple Leaf - Malta North$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e00d540ceeb108ed$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Latham Christian Academy$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e7e12bd790629b48$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9a582add74e803e7$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Cohoes High School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_0ab3b131bbf12067$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_8633657f2a76531a$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Green Tech MS/HS$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_5e059f04ee7a65fa$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_333baa15c363510a$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a8c765de6729db17$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Wood Road Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_230ef2c4366c2517$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_df7bc33166e667fe$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_8916da1a01bd2b04$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_6fcbd4b3ba0d0b85$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c61d3d8cc3ba860e$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ac970083a5d6f523$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Okte Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_1456e50cda0313b5$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_63739fa32f54963c$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Learning Garden Slingerlands$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_77c6c41126b883dd$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a14cab51f95196de$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Malta Avenue Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c9e1bd68ccb1d9b1$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Heatly School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f1ee96286f27eea4$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_19928d7413bd69bf$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_cc79d60e34655934$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_437abbe43df93dfa$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_379cb249e8e3cfc7$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Okte Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_49ee4b858f401e00$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Jefferson Elementary School (Schalmont School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2db20abdb7c98411$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_8fa2ac87d104e9a6$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_54ca197597caf7c1$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e58981d098e324ee$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_cbbb1e6e8dce4716$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4c0f7499b48bfb89$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9e9a9d73c98e5ef6$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b6d3a2b842295cb3$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  canonical_school = $sch$Cairo-Durham Elem$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d2c1a75c035eddb0$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_272e8a2c9d5dae36$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_db6ac5cb97da2468$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Okte Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_fe3801c446c42b61$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_369d6a6b8d46e4ce$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Rosendale Elementary School (Niskayuna School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b379edf9e51edfd4$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Milton Terrace Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ecdbaaf3f8d2f955$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_09d0314ad57aff58$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Rosendale Elementary School (Niskayuna School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f3739717c0435c46$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Karigon Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_1c9e36ee19c5e2b3$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Destine Prep$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4e7805094aa4e138$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ce85e583803f74fa$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Waterford MS/HS$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d816e3e8439691dd$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Wonderland$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_becf54e435cc6150$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2b4e7925c9f85428$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Heatly School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e98521cf7648f768$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_15d1be6c7d7005ba$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$The Academies (AA/G)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d63d9d5d7148f071$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Tesago Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c83654ef50061b1d$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  canonical_school = $sch$Duanesburg$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f52fe651898d1905$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9598dd61ef4e9de0$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_884f2af1a78c4fec$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Craig Elementary School (Niskayuna School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_10b84b92249e2187$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Jefferson Elementary School (Schalmont School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_719e471e5aa00f2e$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e1a9e97117e207ef$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_06d7832c119c9e0b$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_262df964ee5cb87d$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c43c8c22ae07df8d$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4e0af3746d48c449$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Okte Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7328bbbfb6308d40$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_aa5b6c9df204fdfc$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_fbc5362fb5124ecb$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Sara Marie School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a6ddc51e28ca8114$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_07a937de6a83abdf$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  canonical_school = $sch$Cohoes High School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f69fe47e66ba785f$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ec8bfc4059ef2d7b$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Gardner Dickinson$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2e7eef3d52950b80$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b13f3352a3f88a90$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_0369d2fb6a972473$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Wood Road Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_29c7e3944a2c2770$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_28ca9567cd8917ad$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f8f9e16375ea9260$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Columbia High School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_14cb2ca3a706ffb9$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Shatekon Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_578e2b6c8f7efd5e$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$The Academies (AA/G)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d8576a733acbfcee$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_37ff60c2fed1710b$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a63b69dbd5035045$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$TSL East Greenbush$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_02df3915096c5188$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Keane Elementary$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3710319d2d90366c$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Waterford MS/HS$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2bdd0217bfd06a3a$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_199033894e6503b2$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  canonical_school = $sch$Latham Christian Academy$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_113c88f6832eed14$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Arongen Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_467adea7965581f9$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3cfbb253e2b8409d$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_53665e91a6531afa$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Our Lady Queen of Peace Nursery School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_5bca4801c67a3e37$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7865b84e8501f40b$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$Loudonville Christian$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_cec10e3ed55e7663$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Duanesburg$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_dcb42069bba1e549$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Cohoes High School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_0f52250238f2e88b$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Karigon Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3e668df55980a576$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_51baaeea537c84cc$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Chango Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7019f65cf718ddb5$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_93a16f40e1796c79$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$Maple Leaf - Malta South$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_5037372d327e8eb9$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_dd589fb62c32e4e7$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Milton Terrace Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_45a8a3f674342302$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_eb5f0cde4e4b4ebd$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Waterford Halfmoon Elem$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3552adbf32082004$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_17e86c565ddb7472$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_cfbb01d2fe304369$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Jefferson Elementary School (Schalmont School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7483bfd34bff1458$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_455cedd8b53cfa56$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4cf7464e63c5534e$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  canonical_school = $sch$Duanesburg$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f9ebd120687833ca$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b3be679525209c9f$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a8835e60f597cd3e$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$TSL Bethlehem$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b9da39547732244f$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_32cacf80df8daba3$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  canonical_school = $sch$Cairo-Durham Elem$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_925d901edd16091c$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a5215d79079a3b68$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c703e780f32596e2$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Arongen Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_34872a385cd55582$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Okte Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_dd7e8df77471ecf4$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_674373c01cea4012$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_796ec4daf69f9b28$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_77d1bf959ef45e0d$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Gordon Creek Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_463fa374b818d107$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_884c571228e8089f$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Craig Elementary School (Niskayuna School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2645724286de99eb$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$The Academies (AA/G)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ea71ea5813b852d2$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Northville$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_274ad876ec819673$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9e71e26fc9f7e0e3$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_876e205356e0dd22$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c40fecebd4924cd7$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_964bf4bc9617eb98$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Jefferson Elementary School (Schalmont School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c92ea930a41903fd$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_076de6e19e8dc4ab$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_dd7623db74f26286$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b3a7ec7339980234$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_43d27caf8c177501$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_cd8f10d0d7f63edb$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Gardner Dickinson$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3da201554d5db633$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Cohoes High School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_01a3bc0074eacd5e$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$Mother Theresa Academy$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_deacb712040424c1$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  canonical_school = $sch$Duanesburg$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_db850f0e3819174a$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4dd93f064278124c$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Okte Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ae9bc426569b138d$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Milton Terrace Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_0d03b1e86d19fd54$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_cda749b1cea6ca2c$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_07c3e440235e4b16$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$TSL Scotia$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2986b0cd9b5afb61$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  canonical_school = $sch$Waterford Halfmoon Elem$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ad741ea6cc606d39$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2974873b5851f3a8$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_42f98d25179fe262$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Waterford Halfmoon Elem$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4c41a6667b40fd8e$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b0d7841b89eb75b3$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_221409c5da512f4a$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7768b777bbd451b7$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_abaf3ff38532ae1c$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a2f9a6101e2bc429$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$The Academies (AA/G)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_648d1139b0183c34$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_916348f67054001c$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a1cbc907310ba8f9$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Heatly School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_6c056a59f285c0e6$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Shatekon Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_caa4abbedeecc767$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e796472c11f637d4$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9246434b9b111c5f$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_20d2e4eb9f962d0c$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Learning Garden Latham$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_724fef4b5a13dff7$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_57fcc12e491a030e$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Wood Road Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4e9cb603436604ba$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4e0796478d7e200f$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$Waterford Halfmoon Elem$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b760f5fdd5341c47$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Destine Prep Charter School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2a9e9b80cd6b1d88$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_76449f433d0facad$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$The Academies (AA/G)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_dae8c94cf7b3c1a1$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Wildwood$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d5aac90e7cf143c2$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Glencliff Elementary School (Niskayuna School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_26a61ef9a79f3ea5$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a7eae4a7abd360fb$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a8e75f6dfd42a8f9$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Turner's Tots$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9c9032c4a9c3b195$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Gardner Dickinson$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c3483d90ba03acfa$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Kindercare Niskayuna$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_538a2f017a78fa26$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_0d26edfb200749dc$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_eb4f4287370f8d4e$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_56ad3d7141240212$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Heatly School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f08bda6a1de17ae6$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Skano Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c0608846c4911dc7$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_0e1bef52542540c1$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_81fe56b54cf2ac6b$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_1a9ef3c59627a78e$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Kid's Express$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3006d7826eafc727$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ef2414a90fe151e8$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Shatekon Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f0e3560aa87fd4f4$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$TSL Bethlehem$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_86ddd072d7c31994$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d2abfb109399e754$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Karigon Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4ca8d182da382c56$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e6c0285ee9bc250c$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3b6003f8e753c57c$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d1c855c8520a2432$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Stevens Elementary$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b67342677c29c865$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Duanesburg$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4b0947167aace681$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  canonical_school = $sch$Cairo-Durham Elem$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_bb52bfeec559bd9f$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4ce6a1f7c140346a$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Milton Terrace Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c13cf1648a900eda$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a5fe48f369dec2d5$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_6f0ecfe346b22da2$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Heatly School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e1a07971a091077f$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Zoller Elementary$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c1be529c786fa58d$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ebc9e4378b29b309$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Walter B Howard$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_5b3096c71ef96e44$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Malta Avenue Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_73228b65d43b087f$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_bddd49e472029cfd$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Skano Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_6b04a885dce8e8ed$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_5f9e043773689c7f$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_437139d49c60b97a$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_fbcbd1f6f89a1049$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$TSL Guilderland$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_038938800884a785$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_6b7edbdc43b52dbf$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ea8fe345e58f6980$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Gordon Creek Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3f2a790bd5854efc$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$Happy Kids Daycare$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ca29d95895e6dcbe$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4f116c58653e6d09$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_dbd9107591ab4686$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_34699ba97d43bafd$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$Waterford Halfmoon Elem$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_65114e277a989451$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Northville$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_5c0da0684280b201$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_166ba351b8be876a$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_079dfd5edf65b2f2$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Okte Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_659f9af0934f05b1$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$D'burg MS/HS$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_abfa6dd896775121$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$TSL Sacred Heart$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_366b7e8d6152d92d$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_5df13e3849e1b773$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Poohs Corner$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c1b1bd3759b98843$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$TSL Niskayuna UPK$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_930189e4c235c68e$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_1ddb99c96c937221$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Green Tech MS/HS$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7ce939116f581a5d$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Craig Elementary School (Niskayuna School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_0f107d3f38d7af7d$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d4d380a45a9bb622$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Milton Terrace Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c71c7dd8ce88defe$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_87b254896e6b48f2$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4c73bfb611a49b29$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Tesago Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ec928da3e68afb7c$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_5651d9451aae46ef$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Okte Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3fc44a39e9a116bf$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9ec0d1d85984d067$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$TSL Rotterdam$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_980215beae989972$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_004829d0169b1c4b$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Heatly School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a2d6dd4483110633$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$The Academies (AA/G)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d829cc6cedbcee6d$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_959044c2dc827ed5$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Heatly School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7d2fbdde56bd3881$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_31065113d34ad037$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_53a76de258fe72ec$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_192a54f584effd6b$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Duanesburg Seniors$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ddc7fff903375903$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_65cf6c402e212e63$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_13b046e8c15b84cd$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_fb6ab4f10b105222$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Malta Avenue Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3437e73c15555cae$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Little Llamas$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_1cc145d6430eadd7$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Gordon Creek Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c63d15cb5b947b4d$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_db92557c0a19b5c4$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$MLK Jr. Elementary$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e1dadb41370b44e7$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Wood Road Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_52704cebbf600bd9$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_056177f5d6da6cfd$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_892f689450c1dbb6$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_30274c7b3cb31469$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_5797791359039aaa$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a3e4c67803a0276a$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Wood Road Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_945ab9f42ea5701f$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Arongen Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_69b89d1f9f434810$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Wildwood$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d1113a7d309b77a6$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_dde043c32c112b1a$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_5ca863e397cc7237$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Shatekon Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_dc59af754a4182c8$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Karigon Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_80ea29db2de8197f$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_8707ee157ecf29eb$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_89bd4223dbc9d874$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Hudson Valley Consortium$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_8812b64896d13bc2$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7fd947e1b86ecb6d$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Mother Theresa Academy$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d5be947935f41d2e$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Malta Avenue Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_11886a61625facd8$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_17c54046955838ab$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9c50a46184f938e3$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Duanesburg Seniors$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_6811e47d6cb33bde$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Childtime Preschool$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7bb5117445872b72$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  canonical_school = $sch$Duanesburg$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_cd2782f17950ac69$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d6dc5de7f436f911$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3dc1be388c468d8e$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f5d365a790544e4f$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_91e5f0c38ba7da81$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ea084d59b807a831$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Rosendale Elementary School (Niskayuna School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2175041cabcaedfc$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$D'burg Elementary$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_0be3d1512c036dd0$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d954e7e888f9fe1a$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Loudonville Christian$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4d35aff6e190bac1$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$The Academies (AA/G)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2fce7fe400b00b59$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Colonie Community Daycare$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_1d3d161415efc885$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_af4690333f50ecf9$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_005dcad4e4412911$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Stevens Elementary$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_59bfb5e34c35173e$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$D'burg Elementary$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f119b017db7d7b57$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Duanesburg$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b8e1f3784625c885$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d795f96911ab5a4f$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Calvary Methodist$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_89cb61ebea9190c4$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f154e923fa553183$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Hoosic Seniors$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_003cccf46f1a72a7$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Turner's Tots$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_6b870e4ecb1b31dd$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2186d4f005125d98$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e2e41400c213ca89$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c58122532e158b89$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Craig Elementary School (Niskayuna School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_096c95cab11ad3f0$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_260f69e3eb1c24a5$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_edcd9b81a9557ac9$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Saint Madeleine$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_93014c606ddffb50$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a93523fb34331d63$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_93e23498342dbe0c$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Karigon Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_86e54dc462d42dce$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Tesago Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_69967f997ab0c10f$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  canonical_school = $sch$Northville$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_76ad0e9471fea105$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b75240fe4f6b464b$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Malta Avenue Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_666063768cc32f90$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Skano Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f1190c1b00b86a58$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Gordon Creek Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2047d4274844d245$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Hoosic Valley MS/HS$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d2129b13621e58f8$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Tech Valley Seniors$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_0b549e2613e443a6$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Wildwood$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_884acd2df60a5f62$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Glencliff Elementary School (Niskayuna School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_30be45a86ab38807$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_77204a54b9d2d873$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c6366c01b391c433$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_275d15e25d932a4b$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_08f98b2c336ae77a$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Pieter B Coeymans$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e80449590f39259e$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Green Tech Seniors$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_df48348173f4ccbe$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4f726c12df5fccc3$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_91a8c48eaa3bd2c4$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_292423f07890bffe$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_145f887362995569$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_0c6615d7b6d0a74c$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_8a22790d769ff80b$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7d13953463b2735b$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7d05a4adb8e8ad2f$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  canonical_school = $sch$Waterford Halfmoon Elem$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_6a4b737649e8d0fe$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e87d56e5d9b5c16a$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_38fdb5ef982be708$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4486b4017b51397c$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9153d6f2cdd6eea3$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_8009aaf3f973820c$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Duanesburg$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_86552a01b103dc31$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_dab654a32756cdb8$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Jefferson Elementary School (Schalmont School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_582b4c85fa4ee936$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_0ff114bf2e569c71$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  canonical_school = $sch$Northville$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_6208e910c75d7c18$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d5e441f9f26f0719$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_6f80fc077f4c463b$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Green Tech Seniors$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2ef794b3bd4733ae$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Hudson Valley Consortium$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_06057c79efa0835d$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_5222f8759e30f425$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$The Academies (AA/G)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d55bd0bf4db1006e$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$TSL East Greenbush$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_08341884fc9d8141$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Arongen Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d411965e218c9f42$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Heatly School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7df4ffe545224337$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$New Lebanon Jr/Sr$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3f16a3ad5324ceac$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_be5e70610ccca8ea$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$Tesago Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d9c9fa72c7480518$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Gardner Dickinson$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_de4220dfbd3d2f3f$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2d757421f75a3797$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Hudson Valley Consortium$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_932ea3ff5de6c805$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2594f93a0f335beb$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_239ceb24b7cc5242$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_fd42ff854477be03$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Tesago Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_250d307af634dab1$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Waterford Halfmoon Elem$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_6b4dd164dbbb1cef$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Malta Avenue Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3b94eb7225af7549$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_99654dc9cf3ba35a$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_cb8b178a3aad4b71$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Gordon Creek Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_305aad30032dc9e4$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Arongen Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ccfd1b0b7cdfc39e$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  canonical_school = $sch$Duanesburg$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_1d2cd7072bcaa157$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_33f298770b8ab749$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_5067cde7fb9fa074$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a9b96b5e35e701c7$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Wood Road Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_49951bfe9ba80cb8$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7361821d867d2d66$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_fdaf5a85cb5bfa91$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Central Park Middle School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_469a357c9d9dd5a3$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c1189612f3bf5298$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_880c9966d3d3f2c7$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f8871161920e94e5$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Loudonville Christian$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_77fd68479d6e5b46$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Milton Terrace Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f99caba72e4d706c$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Chango Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_18ea7bb3d74cb5c4$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Craig Elementary School (Niskayuna School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_5b232f2dd8fea848$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Green Tech MS/HS$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4c30b227fb471f41$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Maywood Academy$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a995d463a45974e0$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7d22f23552b35e6d$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ccf441a4606d46b8$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c3d56f9630b224f2$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  canonical_school = $sch$The Academies (AA/G)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_8010e63013431ef3$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e30017015441b9cf$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Arongen Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9e92cf8389cf0e6e$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  canonical_school = $sch$Cohoes High School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9f794b8623a1c2cf$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Gardner Dickinson$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_63e6c142f63753f7$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  canonical_school = $sch$Northville$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d3d9b9afd209cef1$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_bbfcef4448d387cc$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a4eef2a7c212431c$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Skano Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_197ae34933b93590$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Pieter B Coeymans$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_1a6ba0e897cc14bc$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Learning Garden Latham$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b45eadbd7371298a$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Craig Elementary School (Niskayuna School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_69ee2d2636d42db5$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_962afbf6500bfa38$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e36360c8106e77d1$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Glencliff Elementary School (Niskayuna School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_47f535a26298d1a3$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Gardner Dickinson$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7ab33257cf4063ef$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3b54af04b5df7aab$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Heatly School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_1690f712fe5e4402$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Wildwood$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7024dc240f057a15$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Northville$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_5536a8930ebe7807$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_131609ee56a26338$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a9c862dd0096fb8e$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_001e925e98593d24$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Arongen Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a1de1e8d914884fe$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Green Tech MS/HS$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_cc94e37bcb6eaa32$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Northville Seniors$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a892c313da821402$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$Precious Hearts$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_831d9ce7c6feac8b$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Maple Leaf - Malta South$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e8f71e6b264b6f85$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_8dc5258c2f4d2875$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$Karigon Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c0f3eb5633c8cac6$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Heatly School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f8ef879049f2fac7$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Jefferson Elementary School (Schalmont School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_bf0d41dfbae2a47e$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2ff5446738c531b7$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_159bb4fb94eef753$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Kid's Express$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_384b508355ca683f$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_1732bc085f924d25$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_69f627ae744a6a1c$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_1634e174a4203dea$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Rosendale Elementary School (Niskayuna School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4edb13794915e9b4$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_8765378e0589ef69$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Wildwood$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4d523a34b1b50570$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Milton Terrace Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_466e5e77e8bf3a7d$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_65311a4b5db7d980$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_904a50b0fd4b9a28$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Our Saviors$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_04cf4b11882d3ba7$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2aa38d8efac111f1$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4a6693700cc1c4ae$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Heatly School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d7b4f990b00425c2$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$TSL Niskayuna UPK$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9bde13e728940eb0$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Duanesburg$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9186e94f4248dc9b$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7f2d54fd4cd72770$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Tesago Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_38d43c8e9ca25beb$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f120d50117696ec6$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Hudson Valley Consortium$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f2b5ecff1e6fa1b5$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  canonical_school = $sch$Sara Marie School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_6e1124ff50e54d61$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_8ad2c31c29ea9b85$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Wildwood$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_bae0c9bda2c501fd$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_6ae16d4fdd938496$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_6759698dbd0175a2$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Glencliff Elementary School (Niskayuna School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7cec079a4463c0a3$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$The Academies (AA/G)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_6508b1b10d7d5032$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_585001d0287d45c1$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ad77c015f160d552$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Pieter B Coeymans$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_631cce25289e16ac$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9ecda600bfe715cc$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Wildwood$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_956c3d779ee6e80f$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ef04782a0acaf724$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9b6ef75476999c63$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ab6da7620dc90ed0$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_31222213c0cb1cf8$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$Blessed Sacrament$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_fb4527bcdcd697d5$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_702bb481e59704a9$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Arongen Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_aa3d517795b44be4$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Karigon Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4fc097879f9bce35$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Malta Avenue Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9ec19425aee0b334$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$Story Place Preschool$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a83c7118d62358b5$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Waterford Halfmoon Elem$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7257d7a56fa50172$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Arongen Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_8b11e4ef4bfa539c$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$Loudonville Christian$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f1c9683e17f83edd$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_60f1c60a3fad18ce$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c571c4d70e43b0f4$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Waterford Halfmoon Elem$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ad771b1ab53c4b72$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Hoosic Valley MS/HS$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b396b48f307d05cf$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_95e74cc12f6a797d$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2a35cbb9fdb20507$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Wood Road Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b86ab7c04d43b5d4$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9f89b967557c4a79$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Shatekon Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2d9afda3fcc5008e$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_dda1677f91666465$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$TSL Scotia$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ff09d6c484e91ef7$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Cohoes Seniors$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_5194f3bdf7780cb7$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Saint Madeleine$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_056fa3fc5e10fb2b$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_04738593e49f6166$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Milton Terrace Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_310603409a130902$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_654b227d5c0dbaf8$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Chango Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_10c2c9df231bf92d$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ffd1f677a79b5cf9$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_51b13d2270ac0301$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$Maple Leaf - Burnt Hills$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_8324e97d0a8fdd73$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Northville$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c197c92fcec037cc$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c1b15c9cb7ff6782$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Cohoes High School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_99e1d829830bef86$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$D'burg Elementary$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d418c6947126a79b$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_49174667c735af89$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  canonical_school = $sch$Cohoes High School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9c144ade5f88270a$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_861f25ca7928d4ab$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7d395aeadb5663d6$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Craig Elementary School (Niskayuna School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a52140f1a08ec317$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_dc646958c4cd649b$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_68e1f2104a6f6d1c$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_8fce0427c6a65240$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$Kindercare Niskayuna$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ca325b4653c087fa$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_1c3d021ee5893393$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_758f631fb97615e3$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Malta Avenue Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3fecdbf4899686d8$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c553343c8fd62802$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_dbd6fbcb0708df00$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  canonical_school = $sch$Waterford Halfmoon Elem$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_40a65bf1693f0857$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Gordon Creek Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_25cce125ed7f5b09$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2a5398522945ca82$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3ad216fec1d91e84$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d88c134c06f9a040$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Central Park Middle School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ac6467fe5f8f6285$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_71a8c9f6a111e08d$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_dddbf042b16d2217$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Duanesburg$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_04393436e985d3d1$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7b8f405904a1230d$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$TSL Bethlehem$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_871c6941499813ca$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_1394d5e7b9fe032b$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_fa596af3fac93a8e$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Waterford Halfmoon Elem$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_6320b9b8d230fff2$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Keane Elementary$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_06277d98d8d11e6c$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_6402b91c390327e6$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$MLK Jr. Elementary$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_aac751074e7419e1$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2f546a4814cfac72$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e612446fc43181b9$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_0e3545abbaa6e5a9$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ae96a247e0051520$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_194384d0d67d0e86$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_82c92b24330733cf$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Shatekon Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_49ef672e7fd2990a$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Wonderland$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3b72a94a3a79e9bf$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$The Academies (AA/G)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_6a5cb9ba121c2b1f$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_368a057192ccc4aa$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4c0f24dd620d8d2d$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_311a90f14debd87b$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Blessed Sacrament$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_85350245eae3c9c9$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Hudson Valley Consortium$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ae97ab633757153b$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Milton Terrace Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c9cef57b26bcdfb9$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_58a2d8cda742a073$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_22fe923d19fed394$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Okte Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_8574aad1a16a3ff9$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Heatly School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4ddf705303697c24$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$Schenectady JCC$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_258d5cec4517459e$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Rosendale Elementary School (Niskayuna School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_04ccfccd8b5e092e$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_90cfa696ce963f7c$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Northville Seniors$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_512ab92cb90d315f$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Chango Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d974ed9aca7c3daa$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$New Dreams Nursery$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2ad9bc040ee52005$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b6eafc1b1b082255$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d89ff710857ce253$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_96787ed60bb352ed$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_75b2638cf67ac321$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_cac863765be2d5f5$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$Pieter B Coeymans$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_9bc4c5c729bc7d4f$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_62b6d7f19e0ab128$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_4f2cccefa4156290$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Wood Road Elementary School (Ballston Spa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c4e4fe1f5521bc63$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Our Saviors$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b575b5bacde5e4b5$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_915d8a7115592c49$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Green Tech MS/HS$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_5a17fceb7b472aea$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_fa28904acd89f5af$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_1c188cf27bd7d883$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f61f7b940def81e8$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_833f833896d4813f$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_dd1ffd7f6d7f1e84$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Albany JCC$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_fdbded31f6f4539d$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Duanesburg$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d94522d8332b28c6$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_864e8637a0eda477$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Skano Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_71d12f371e05b03c$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_384f03ab7c251369$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_298f99c4b193eb7e$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Shatekon Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3f7ccebc4a39123c$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Chango Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_750ec53bca9981c2$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Waterford Halfmoon Elem$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7d08b8dca2c56ba0$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Northville$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_043a0840ed3ccb56$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e4dddc0ed79fd780$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Little Scholars$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_8e3e1a705e02011f$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_79875438fe1adb1a$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_02387b3ca26d7818$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  canonical_school = $sch$Karigon Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c7e0430dbb6e4740$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Craig Elementary School (Niskayuna School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_030cbf5b5f372f53$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Chango Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_012f84d691ee15c8$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f2f4658985c73973$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Heatly School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d30ab2031859b4de$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f29a70816fa6524e$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_58c30093b5ef7e4a$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_5e8453632df1009b$cid$;

UPDATE public.events
SET   event_type = $typ$Call or Meeting$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f5b9d2cd71e9ff40$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Hoosic Valley MS/HS$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_bf2fc216e3c1d940$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b2822a848b8d284d$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Northville$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_d778b2f00e853930$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b8683cbd108d2071$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  canonical_school = $sch$Mother Theresa Academy$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b532401cfb77e31b$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_eb6ef6adb6c17aad$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Little Journeys$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_cdda2614cd86cdad$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_1b2d0a443012fb13$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$New Lebanon Jr/Sr$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_77a67f80cda30873$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_436b4959f3812c85$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_63e0494615825c64$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Cairo-Durham Elem$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3a7737f549d56544$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$Shatekon Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_07051c5660f6d7c2$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_b186649a1bccc571$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_01fd7491f8aadbbe$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Little Achievers$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_e964f6d0defd1b05$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Tesago Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_eca2a11a0e40a9c7$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Duanesburg Seniors$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_61eed6c69f38134d$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  canonical_school = $sch$Waterford MS/HS$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_29b4520768370abc$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_0e4f2e18bf0532f0$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Maple Leaf - Malta North$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2555e938db452fb4$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Karigon Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ee2b5dabd5f3148e$cid$;

UPDATE public.events
SET   event_type = $typ$Rain Date$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_3d4ab7163177f5d1$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_c5646ef7ea894d3e$cid$;

UPDATE public.events
SET   event_type = $typ$Sports$typ$,
  canonical_school = $sch$Cohoes High School$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_f96c0e5935d41ccd$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_850a1a365f8ab92d$cid$;

UPDATE public.events
SET   event_type = $typ$Photo Booth$typ$,
  canonical_school = $sch$The Academies (AA/G)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_aafca9c9e74b312a$cid$;

UPDATE public.events
SET   event_type = $typ$Headshots$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a5f1f5fc69460180$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_8d0c4bff4a103f2c$cid$;

UPDATE public.events
SET   event_type = $typ$Makeup Day$typ$,
  canonical_school = $sch$Skano Elementary School (Shenendehowa School District)$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_7165cc51712f6a51$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Learning Garden Slingerlands$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_10879e76bc2f0fb2$cid$;

UPDATE public.events
SET   event_type = $typ$Spring Picture Day$typ$,
  canonical_school = $sch$TSL New Karner$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_503ed218d0e31f33$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Zoller Elementary$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_a5353eb99f2fc093$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_05a9a160a97b191b$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$Loudonville Christian$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_1b559bebae2ea89f$cid$;

UPDATE public.events
SET   event_type = $typ$Seniors$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_2ccb7c063f7730e9$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_97cae0b1cf64b78a$cid$;

UPDATE public.events
SET   event_type = $typ$Fall Picture Day$typ$,
  canonical_school = $sch$D'burg MS/HS$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_ac04476f3b59fe14$cid$;

UPDATE public.events
SET   event_type = $typ$Special Event$typ$,
  canonical_school = $sch$Blessed Sacrament$sch$,
  updated_at = now()
WHERE source = 'google_calendar_import' AND client_event_id = $cid$ics_050287c9adfba704$cid$;

-- Backfill school_id from canonical_school where an exact school name exists.
UPDATE public.events e
SET school_id = s.id, updated_at = now()
FROM public.schools s
WHERE e.source = 'google_calendar_import'
  AND e.canonical_school = s.name
  AND e.school_id IS DISTINCT FROM s.id;

COMMIT;
