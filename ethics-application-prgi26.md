# Ethics assessment and data-protection documentation — prgi26 data collection (not subject to the Ethics Review Act)

**Status:** assessed 2026-09-01 — the collection is **not subject to the
Ethics Review Act**, so no application is filed and no reference number will
exist (§12). This document is the internal ethics self-assessment of the
collection and the basis for the participant information
(`participant-information-prgi26.md` and
`participant-information-prgi26-staff.md`, §11). It was drafted as a review
application, which is why it keeps an application's structure.

**Language:** English; the student information sheet is in Swedish (the
teacher's reviewed wording), the staff sheet in Swedish and English.

**Covers the data collection behind:** the companion papers
[dbosk/vt-debug](https://github.com/dbosk/vt-debug) (debugging study) and
[dbosk/vt-prog-misconceptions](https://github.com/dbosk/vt-prog-misconceptions)
(concept diagnostics), which share one collection in the same course.

**Synchronised copy.** This file is byte-identical in the two repositories
above. Edit one copy, propagate to the other in the same round, and verify:
`md5sum ../vt-{debug,prog-misconceptions}/ethics-application-prgi26.md`

**Last synchronised:** 2026-09-08

---

## 1. Project and responsible researcher

- **Project title:** Debugging as self-directed learning and misconceptions in
  introductory programming: a variation-theoretic study of an introductory
  programming course.
- **Principal investigator:** Daniel Bosk, KTH Royal Institute of Technology
  (`dbosk@kth.se`). *School/department affiliation: [TO FILL].*
- **Other personnel:** the course's teachers and teaching assistants — both as
  course staff, as coders of research data under the PI's direction, and (for
  the expert-baseline part) as *participants in their own right* (§4).
  *(Named list: [TO FILL].)*
- **Data controller:** KTH Royal Institute of Technology.
- **Funding:** none specific to the study; conducted within the PI's ordinary
  teaching and research duties. *(Confirm.)*
- **Collection:** the "prgi26 data collection" — the autumn 2026 instance of
  the introductory programming course DD1317 (prgi26) at KTH.
- **Period:** autumn term 2026, with think-aloud sessions at several points in
  the course.
- **Papers fed:** vt-debug (the debugging study) and vt-prog-misconceptions
  (whose diagnostic concept quizzes run in the same course and whose scores
  the debugging study uses as a control variable). From the students' point of
  view this is **one** collection, and it is described here as one.

## 2. Background and purpose

The debugging study develops a variation-theoretic theory of debugging —
debugging is self-directed learning, and debugging skill is the ability to
generate the patterns of variation (contrast, generalisation, fusion) for
oneself — and tests it empirically in prgi26. The companion misconceptions
paper catalogues documented misconceptions in introductory programming,
derives critical aspects and patterns of variation from them analytically, and
prepares diagnostic instruments to evaluate the derived patterns in the
classroom.

The debugging study's research questions (verbatim):

- (RQ1) Which patterns of variation (contrast, generalisation, fusion), if
  any, can be observed in students' recorded debugging episodes?
- (RQ2) Is a deep approach to learning associated with generating more, and
  more complete, patterns of variation while debugging?
- (RQ3) Is debugging success associated with the deep approach and with the
  completeness of the generated patterns?
- (RQ4) Which patterns of variation do expert debuggers exhibit while
  debugging, and how do the students' patterns compare to theirs?
- (RQ5) Do students who have experienced the course material's patterns of
  variation generate more, and more complete, patterns of variation in their
  debugging than students who study on their own?
- (RQ6) How do the schools a student attended before the course — their
  type of principal (*huvudman*), and the schools themselves — relate to the
  approach to learning they bring to it, and to how they fare in it?
- Methodological: (MQ1) Do the patterns of variation coded from the recorded
  edit–run cycles correspond to the patterns in the debugger's reasoning?
  (MQ2) Do the different classifications of the students' approaches to
  learning — the questionnaire scores, the interview accounts and the coded
  open-text answers — agree?

The concept diagnostics answer, for the companion paper, which of the
analytically derived critical aspects the students discern before and after
the course and its topics.

## 3. Study design and methods

Chronologically:

1. **Background quiz** at course start, whose first item is the consent item
   (§6): prior programming experience and languages (free text), how they
   learned, a five-point confidence item, an open debugging exercise (free
   text), and six *optional* school-background items (school name and
   municipality per stage of Swedish schooling, gymnasieprogram, basår).
2. **Concept diagnostics** (companion paper): a course-level pre/post quiz
   pair plus seven topic-level pairs — sixteen quizzes bracketing the course
   and its topics. The course-level start quiz opens with its own consent item
   in the same wording (§6). The two studies share the instrument so students
   are not tested twice on the same concepts.
3. **Debugging quizzes** at course start and end (graded course elements;
   scores retained for the study).
4. **R-SPQ-2F questionnaire** (validated 20-item deep/surface
   approach-to-learning instrument), administered at the start (about studying
   in general) and the end (about this course). Consent is not asked again
   there; the background quiz's consent covers it.
5. **learnlog instrumentation** throughout the course: the students' every
   edit–run cycle — source code and its changes, command-line arguments,
   standard input/output/error, unhandled exceptions, with timestamps — logged
   locally and pushed to per-student repositories or submitted as bundles.
   This is the study's most granular source; it runs continuously, so it may
   capture self-study runs and not only lab work. It contains no more *kinds*
   of data than the students already submit with their lab solutions, but it
   is continuous, and the students are told exactly what it records.
6. **Think-aloud sessions** with a volunteer subsample, at several points in
   the course: Zoom audio and video plus learnlog, under separate explicit
   consent (§6). The most identifiable data in the collection.
7. **Course-material use:** Canvas activity data (pages, modules, embedded
   activities), FeedbackFruits interaction data, and a self-report item
   alongside the R-SPQ-2F.
8. **Teacher/TA expert baseline:** the course's teachers and teaching
   assistants are recorded with learnlog during material preparation and
   live-coding, take part in think-aloud sessions, and report their
   programming experience (§4).
9. **AI-agent comparison:** a coding agent's learnlog-recorded debugging
   episodes are coded identically as a further comparison point. They contain
   no personal data and are listed for completeness.
10. **Register lookup** (RQ6): each student-supplied school name and
    municipality is looked up in locally mirrored yearly exports of
    Skolverket's school-unit register to determine the school's *huvudman*
    type (municipal/independent) per stage and the school unit itself. What
    enters the analysis data is the huvudman type per stage and a
    pseudonymous code per school unit, so that classes of schools and, where
    enough students attended the same school, individual schools can be
    compared; the school names and municipalities, and the key from code to
    unit, stay in the coding sheet. No student data is sent anywhere for the
    lookup — the register mirrors are local files.

The teaching is the course's ordinary teaching and is **not varied or
manipulated for research purposes**.

Analysis: debugging episodes are segmented from the learnlog data and coded
for patterns of variation; think-aloud recordings validate the coding (MQ1);
R-SPQ-2F scores, quiz scores, huvudman types and school codes enter
statistical comparisons;
free-text answers are coded by hand, with a language model drafting suggested
codes in separate columns, always human-verified (§7). The two studies' data
are joined on the pseudonym key (login ID); each study's analysis filters by
the consent its own instrument collected (§6).

## 4. Participants and recruitment

- **Population:** students of prgi26 (first-year students, Python-based
  introductory programming, DD1317). Expected cohort: approximately [TO FILL].
- **Recruitment:** the background quiz and the course-level concept quiz are
  course elements; their first items ask for research consent (§6).
  Think-aloud volunteers are recruited from consenting students.
- **Dependency relationship (students):** the participants are the PI's own
  students. Mitigations: opt-in participation; the consent item states that
  participation does not affect the grade; grading and teaching run
  identically regardless of consent; research extraction happens afterwards
  and filters by consent; the school-background items are individually
  optional.
- **Teachers and TAs as participants:** the expert-baseline data makes the
  course staff data subjects too, and the PI is their course responsible, so
  their voluntariness needs its own protection: their participation is opt-in
  under separate consent, declining has no bearing on their employment or
  duties, and their data is pseudonymised like the students'.
- **Compensation:** none.

## 5. Data collected

| Source | Content | Personal-data category | Identifiers | Pseudonymisation | Retention |
|---|---|---|---|---|---|
| Background quiz | experience, confidence, open debugging exercise (free text) | ordinary | platform name + login ID | analysis keys on login ID; name only in coding sheet | archived securely for at least 10 years (KTH's rule, in the wording of KTH's consent template) |
| School-background items | school name + municipality per stage, gymnasieprogram, basår (all optional) | ordinary, but a socio-economic proxy (see §5c, §9) | as above | names/municipalities and the school key stay in the coding sheet; huvudman type and a pseudonymous school code enter analysis | as above |
| Concept diagnostics (16 quizzes) | chosen alternatives, scores | ordinary (study performance) | as above | login ID key | as above |
| Debugging quizzes | answers, scores | ordinary (study performance) | as above | login ID key | as above |
| R-SPQ-2F (twice) | 20 Likert items per administration | ordinary (learning approach; not a clinical instrument) | as above | login ID key | as above |
| learnlog | source code and edits, argv, stdin/stdout/stderr, exceptions, timestamps, continuously | ordinary (student-written code and program interaction) | repository identity → login ID | login ID key | as above |
| Think-aloud sessions | Zoom audio + video + learnlog | ordinary; audio/video identifiable by nature | participant identity | transcripts pseudonymised; recordings never published | recordings deleted after verified transcription [TO CONFIRM] |
| Material use | Canvas activity data, FeedbackFruits interactions, self-report item | ordinary | platform identity → login ID | login ID key | as above |
| Teacher/TA baseline | learnlog, think-aloud recordings, self-reported experience | ordinary | staff identity | pseudonymised like student data | as above |
| AI-agent episodes | learnlog of a coding agent | no personal data | — | — | — |

Explicit statements:

- **(a)** No special categories of personal data (GDPR Art. 9) are sought by
  any instrument. School huvudman type is not a special category; the R-SPQ-2F
  measures approach to learning, not health.
- **(b)** Free-text answers, captured program output, and think-aloud
  recordings could in principle contain special-category data volunteered
  incidentally. The handling rule is redaction at the point of transcription
  or coding: incidental sensitive content is removed from the analysis data
  and never quoted.
- **(c)** Indirect identifiability: name and login ID make a row directly
  identifiable and stay in the coding sheet, the only place they meet the
  data. The school-background answers, in combination, could indirectly
  identify a student with an unusual school path; this is why the raw names
  and municipalities never leave the coding sheet. The analysis data carries
  the per-stage huvudman type and a pseudonymous school code, which together
  with the other columns could still single out such a student inside the
  analysis data — data that is itself pseudonymised and access-restricted
  (§7). No school is named in anything published; results for single
  schools are reported, if at all, under their codes and only for schools
  that at least five students of the cohort attended. The think-aloud
  subsample is small; its reporting is aggregate and quotes are anonymised.

## 6. Consent procedure and non-participation

The consent item opens the debugging study's background quiz and, in the
same wording, the concept diagnostics' course-level start quiz. Wording
adopted 2026-09-08, before deployment (the earlier draft used the narrower
wording of the datintro26 collection — see the last bullet):

> I consent to my answers in the course's quizzes and questionnaires, my
> course submissions, the logs of my programming work that the course's
> tools record, and my activity in the course's learning platform, being
> used pseudonymised in computing education research. Recorded sessions
> happen only if I separately agree to them. My participation is voluntary,
> does not affect my grade, and I can withdraw at any time by contacting
> the responsible researcher. I have read the information page about the
> study.

The item links to the participant information page (§11) in the course's
Canvas, which describes — in particular — exactly what learnlog records and
when.

- The item is answered Yes/No, carries no points, and the course proceeds
  identically either way.
- The student meets the item **twice**, deliberately: once opening the
  debugging study's background quiz and once opening the concept diagnostics'
  course-level start quiz. Each instrument family stands alone and filters by
  the consent it holds, so a "No" excludes that family's data; the identical
  wording means the student is never asked two different things.
- The background quiz's consent covers the debugging study's sources: the
  background quiz itself (school items included, each individually optional),
  the debugging quizzes, the R-SPQ-2F administrations, the learnlog data, the
  material-use data, and being asked about think-aloud participation. The
  concept quizzes' consent covers the sixteen diagnostics.
- **Think-aloud sessions get separate, explicit consent** before any
  recording, covering the audio/video recording, transcription, and
  pseudonymised quotation (KTH's consent-form template, adapted).
- **Teachers and TAs consent separately** for the expert-baseline data (§4),
  with the staff variant of the information sheet (§11).
- **Withdrawal:** a participant can withdraw consent at any time by contacting
  the PI (`dbosk@kth.se`); their rows are removed from research extractions.
  Withdrawal does not affect the course, the grade, or (for staff) employment.
- **Non-participation:** a non-consenting student's data is never extracted
  for research. Course records (grading, platform logs) remain the course's
  own administrative records, as for any course, and are not research data.
- **Relation to the datintro26 wording:** the earlier draft used the
  datintro26 collection's wording ("I consent to my answers in these
  quizzes, and my submissions in the course, being used pseudonymised in
  computing education research. My participation does not affect my
  grade."), which is narrower than the scope above (continuous learnlog
  logging, platform activity data, recordings). Since this collection had
  not been deployed when the ethics route was decided, the fuller wording is
  adopted from the start; the datintro26 collection keeps its deployed
  wording for the HT26 cohort and adopts the fuller wording for the next.
  The prgi26 students also meet the datintro26 terminal pre-/post-tests,
  which run in the same Canvas course; that consent covers only those
  quizzes, and its information sheet reaches them by the datintro26 route.

## 7. Data management

- **Storage:** [TO FILL: KTH-approved storage; where the coding sheet lives;
  where recordings live; where the learnlog repositories live].
- **Access:** the PI and the coders (course staff acting under the PI's
  direction) access the coding sheet; the pseudonymised analysis data is
  accessed by the research team only.
- **Pseudonym key:** the student's login ID (an institutional identifier). The
  coding sheet is the only artefact where name, login ID and data co-occur.
  The same key joins the two studies' data (§3).
- **Retention and deletion:** the data is archived securely for at least
  10 years per KTH's rules (the wording of KTH's consent template);
  recordings are deleted after verified transcription.
- **Third-party processing:**
  - *Canvas* and *FeedbackFruits* host the quizzes and the interactive
    material as the course's ordinary platforms; research extraction happens
    via their APIs. [TO CONFIRM: that FeedbackFruits data may be exported for
    research under KTH's agreement.]
  - *Zoom* records the think-aloud sessions under KTH's agreement. [CONFIRM.]
  - *Git hosting* for the per-student learnlog repositories: [TO FILL — KTH
    infrastructure or course server].
  - *Language-model pre-coding:* the analysis programs can send free-text
    answers to a large language model to draft suggested codes (kept in
    separate columns, always human-verified). **Decided 2026-09-08:** the
    analysis program anonymises the text *before* the model sees it — it
    strips the login ID and the name, applies the redaction rule of §5(b),
    sends the text under an opaque index, and joins the suggested codes back
    onto the pseudonymised rows itself. The model thus sees only what could
    be published (§10), so no personal data is disclosed and no processor
    agreement is needed. Until that pipeline is implemented in the analysis
    programs, pre-coding is not run on real student data.
  - *Skolverket's register* is used as locally mirrored public files; no
    student data is transferred (§3.10).
- No data leaves the EU/EES except as covered by the platform agreements
  above. *(Verify each.)*

## 8. Legal basis (GDPR)

Processing is necessary for a task in the public interest (Art. 6(1)(e) —
research at a state university), with the safeguards of Art. 89 and the
Swedish supplementary provisions (lagen (2018:218) med kompletterande
bestämmelser till EU:s dataskyddsförordning). Consent per §6 is the
*ethical* basis for participation; it is not the *legal* basis for the
processing, and the two are not conflated in the participant information
(which nevertheless keeps KTH's template wording on withdrawing consent).
KTH is the data controller. The student data is processed on KTH's own
platforms as course data (Canvas; FeedbackFruits and Zoom under KTH's
agreements), which KTH already covers as platforms for student data; no
separate notification of the processing to KTH's data protection officer
is made (decision 2026-09-08). The participant information gives
dataskyddsombud@kth.se as the contact for the data subjects' rights, as
KTH's template does.

## 9. Risks and benefits

Risks:

- *Perceived pressure* from the teacher–student dependency, and from the
  PI–staff dependency for the teacher/TA baseline (mitigations in §4).
- *Granular behavioural logging:* learnlog records continuously and may catch
  self-study runs; a student may not anticipate the extent. Mitigations: the
  information sheet describes exactly what is recorded and when; the recorded
  kinds of data do not exceed what lab submissions already contain; consent is
  opt-in.
- *Identifiability in small subsamples:* the think-aloud and staff groups are
  small; reporting is aggregate and quotes anonymised.
- *School-background re-identification:* mitigated by keeping names,
  municipalities and the school key in the coding sheet, analysing schools
  under pseudonymous codes, and reporting them only as classes of schools
  or, for single schools, anonymised and above a minimum group size (§5c);
  every school item is individually optional.
- *Incidental disclosure* in free text, program output, or recordings
  (redaction rule, §5b).

Benefits:

- The diagnostic quizzes teach as well as measure (the end quizzes explain
  their items after submission).
- The findings improve the course for later cohorts and inform how debugging
  is taught.
- The study contributes theory, instruments and analyses to
  computing-education research.

Overall assessment: low risk, with the mitigations listed; the continuous
logging and the recordings are the points a reviewer should weigh most.

## 10. Publication and anonymisation plan

- Results are reported in aggregate; free-text answers, commit content and
  transcript excerpts are quoted only anonymised.
- Schools are never named; school-level results appear only as classes of
  schools (huvudman type, programme, basår) or, for single schools, under
  pseudonymous codes and only for groups of at least five students.
- Recordings (audio/video) are never published.
- The course and institution are anonymised in the published papers before
  submission (tracked as vt-debug#6).
- No raw data is shared or deposited; [TO DECIDE: whether an anonymised,
  aggregated dataset is deposited, and where].

## 11. Accompanying documents

1. Participant information sheets — `participant-information-prgi26.md`
   (students; Swedish, as reviewed by the teacher in Canvas; a Canvas page in
   the course, placed right before the consent quiz and linked from the
   consent item) and
   `participant-information-prgi26-staff.md` (teachers and TAs of the
   expert baseline; handed over as a file). Both are synchronised copies in
   the two repositories, built to KTH's recipe (§12): the purpose of the
   research plus the GDPR wording of KTH's consent-form template. The
   student sheet describes exactly what learnlog records and when.
2. The consent item, verbatim (§6).
3. The instruments: the papers' literate appendices are the authoritative
   definitions (vt-debug `quiz.nw`/`rspq.nw`/`episodes.nw`,
   vt-prog-misconceptions `diagnostics.nw`).
4. Data management: §7 stands in for a separate data-management plan.

## 12. Assessment under the Ethics Review Act

**Checklist run (2026-09-08).** KTH's "Checklist for legally required ethics
review" (Research Support Office; intranet page "Forskningsetik — stöd till
forskare"), applied to this collection:

| Question | Answer |
|---|---|
| 1. Information about living persons collected or processed? | Yes |
| 1.1 Traceable to a person through an identifier? | Yes — login ID; the name in the coding sheet |
| 1.2 Traceable by combining pieces of information? | Yes — e.g. the school-background answers in combination (§5c), or a free-text answer with the course context |
| 2. Processed for research purposes? | Yes |
| 3.1–3.8 Ethnic background, religious or philosophical beliefs, political opinions, union membership, health, sexual life or orientation, genetic or biometric data, offences? | No — none is sought by any instrument (§5a). A school's huvudman type is not a special category (it is a socio-economic proxy, handled by §5c and §9); the R-SPQ-2F measures approach to learning, not health; think-aloud audio/video is not biometric data in the GDPR sense, since it is not processed to identify a person; incidental sensitive content in free text, program output or recordings is handled by the redaction rule (§5b). |
| 4.1 Obvious risk of harm? | No (§9) |
| 4.2 Physical procedures on human beings? | No |
| 4.3 Method intended to affect participants physically or psychologically? | No — the teaching is the course's own and is not manipulated for research (§3) |
| 4.4 Traceable biological samples? | No |

Result: personal data is processed, so the GDPR applies (§8) and the
participants must be informed and access restricted (§7, §11); none of the
criteria of §§3–4 of etikprövningslagen (2003:460) is met, so the Ethics
Review Act does not apply and no approval from Etikprövningsmyndigheten is
required. Per the checklist's appendix, the research ethics of such a
project "are handled internally by the group performing the research".

**Confirmation by KTH's research-ethics support.** On 2026-08-31 the PI put
the collection to researchethics@kth.se (Research Support Office): quizzes
that are course elements anyway, the voluntary school-background items and
the intent to relate schooling to course results with anonymised
reporting, the code-writing logs that the students submit themselves, and
the consent item and its terms (voluntary, no effect on the grade),
together with the checklist assessment above. KTH's research-ethics advisor
answered on 2026-09-01:

> Nej, det låter inte som att du behöver ha etikgodkännande för den
> forskningen. Försäkra dig bara om att du informerar studenterna på ett
> sätt som gör GDPR nöjd. I sidfoten på samtyckesblankettmallen så ser du
> ett exempel på en GDPR-formulering som är ok. Komplettera den med att
> beskriva forskningens syfte för deltagarna så borde det vara
> tillräckligt.

(No, it does not sound as if you need ethics approval for that research.
Just make sure you inform the students in a way that satisfies the GDPR:
the footer of the consent-form template has a GDPR wording that is fine;
supplement it with a description of the research purpose for the
participants, and that should be sufficient.) The participant information
(§11) follows that recipe.

**Caveats recorded.**

- (a) The description sent to RSO did not mention the think-aloud
  recordings, the teacher/TA baseline, the R-SPQ-2F or the platform
  activity data. The checklist assessment above covers them — audio/video
  and questionnaire answers are ordinary personal data — but the advisor's
  answer should not be read as an assessment of the recordings specifically
  (decision 2026-09-08: no follow-up query).
- (b) The earlier draft's arguments that review *might* be required
  (incidental sensitive content; the school-register linkage as a
  socio-economic proxy; the granularity of the continuous logging;
  institutional practice) were weighed and do not change the outcome: the
  linkage and the logging were described to RSO explicitly, incidental
  content is handled by the redaction rule (§5b), the logging is described
  to the students in full before they consent (§6, §11), and the
  institution's own research-ethics support answered the question of
  institutional practice.
- (c) KTH's Ethics Committee (Etikutskottet) offers advisory opinions on
  research-ethically controversial projects; this collection is not one,
  and no opinion is requested (decision 2026-09-08).

*Decision trail: nytid #243 (Daniel Bosk's task list); the RSO email is
kept in the PI's mailbox, not in the repository.*

## 13. Remaining work

- [x] Route: not subject to the Ethics Review Act (§12) — no filing, no
      translation, no Etikutskottet opinion.
- [x] Legal basis and data-protection officer: stated in §8; no separate
      notification (decision 2026-09-08).
- [x] Language-model pre-coding: anonymise-then-map-back in the analysis
      program (§7); the implementation is tracked in nytid, and pre-coding
      stays off until it lands.
- [x] Participant information sheets written (§11), the consent item
      reworded and linked to the student sheet (§6).
- [ ] Deploy: publish the information page in the course's Canvas, then
      the background quiz and the course-level concept quiz with the new
      consent item; hand the staff sheet to the teachers and TAs.
- [ ] Consent form for the recorded sessions (students and staff): adapt
      KTH's template — *deferred 2026-09-08: recordings will most likely not
      happen; worked out if and when they do.*
- [ ] Fill the remaining [TO FILL] placeholders: department, personnel,
      expected N, storage systems, hosting for the learnlog repositories.
- [ ] Confirm FeedbackFruits research export and Zoom recording terms (§7).
- [ ] Decide data deposition (§10).
