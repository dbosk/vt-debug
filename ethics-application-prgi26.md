# Ethics review application — prgi26 data collection (working draft)

**Status:** draft, not filed. No reference number exists. Nothing here has been
approved, and no research use is made of any collected data until the review is
decided.

**Language:** English working draft; the filed version will be in Swedish
(portal and form to be confirmed — see §12 and §13).

**Covers the data collection behind:** the companion papers
[dbosk/vt-debug](https://github.com/dbosk/vt-debug) (debugging study) and
[dbosk/vt-prog-misconceptions](https://github.com/dbosk/vt-prog-misconceptions)
(concept diagnostics), which share one collection in the same course.

**Synchronised copy.** This file is byte-identical in the two repositories
above. Edit one copy, propagate to the other in the same round, and verify:
`md5sum ../vt-{debug,prog-misconceptions}/ethics-application-prgi26.md`

**Last synchronised:** 2026-08-29

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
  *(Named list: [TO FILL before filing].)*
- **Data controller:** KTH Royal Institute of Technology.
- **Funding:** none specific to the study; conducted within the PI's ordinary
  teaching and research duties. *(Confirm before filing.)*
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
- (RQ6) How does the type of principal (*huvudman*) of the schools a student
  attended before the course relate to the approach to learning they bring to
  it, and to how they fare in it?
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
    type (municipal/independent) per stage. Only the huvudman type enters the
    analysis data; the school names and municipalities stay in the coding
    sheet. No student data is sent anywhere for the lookup — the register
    mirrors are local files.

The teaching is the course's ordinary teaching and is **not varied or
manipulated for research purposes**.

Analysis: debugging episodes are segmented from the learnlog data and coded
for patterns of variation; think-aloud recordings validate the coding (MQ1);
R-SPQ-2F scores, quiz scores and huvudman types enter statistical comparisons;
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
| Background quiz | experience, confidence, open debugging exercise (free text) | ordinary | platform name + login ID | analysis keys on login ID; name only in coding sheet | [TO FILL: KTH retention rule] |
| School-background items | school name + municipality per stage, gymnasieprogram, basår (all optional) | ordinary, but a socio-economic proxy (see §5c, §9) | as above | names/municipalities stay in the coding sheet; only huvudman type enters analysis | as above |
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
  and municipalities never leave the coding sheet and only the per-stage
  huvudman type (a binary/ternary category) enters the analysis. The
  think-aloud subsample is small; its reporting is aggregate and quotes are
  anonymised.

## 6. Consent procedure and non-participation

The consent item is worded (verbatim, the same wording as the institution's
related course diagnostics, so a student who has answered one recognises the
next):

> I consent to my answers in these quizzes, and my submissions in the course,
> being used pseudonymised in computing education research. My participation
> does not affect my grade.

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
  pseudonymised quotation.
- **Teachers and TAs consent separately** for the expert-baseline data (§4).
- **Withdrawal:** a participant can withdraw consent at any time by contacting
  the PI (`dbosk@kth.se`); their rows are removed from research extractions.
  Withdrawal does not affect the course, the grade, or (for staff) employment.
- **Non-participation:** a non-consenting student's data is never extracted
  for research. Course records (grading, platform logs) remain the course's
  own administrative records, as for any course, and are not research data.
- **Known limitation of the current wording:** "these quizzes, and my
  submissions in the course" is narrower than the full scope above (continuous
  learnlog logging, platform activity data, recordings). Proposed improved
  wording, to be adopted once this application is decided (the papers
  deliberately freeze the deployed wording until then):

  > I consent to my answers in the course's quizzes and questionnaires, my
  > course submissions, the logs of my programming work that the course's
  > tools record, and my activity in the course's learning platform, being
  > used pseudonymised in computing education research. Recorded sessions
  > happen only if I separately agree to them. My participation is voluntary,
  > does not affect my grade, and I can withdraw at any time by contacting the
  > responsible researcher.

- A **participant information sheet** (§11) will accompany the consent item
  and spell out — in particular — exactly what learnlog records and when.

## 7. Data management

- **Storage:** [TO FILL: KTH-approved storage; where the coding sheet lives;
  where recordings live; where the learnlog repositories live].
- **Access:** the PI and the coders (course staff acting under the PI's
  direction) access the coding sheet; the pseudonymised analysis data is
  accessed by the research team only.
- **Pseudonym key:** the student's login ID (an institutional identifier). The
  coding sheet is the only artefact where name, login ID and data co-occur.
  The same key joins the two studies' data (§3).
- **Retention and deletion:** [TO FILL per KTH's rules; recordings deleted
  after verified transcription].
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
    separate columns, always human-verified). **[TO FILL: which model/service,
    under what agreement, and whether submitted data is used for training;
    alternative: a locally hosted model.]** Until this is settled, pre-coding
    is not run on real student data.
  - *Skolverket's register* is used as locally mirrored public files; no
    student data is transferred (§3.10).
- No data leaves the EU/EES except as covered by the platform agreements
  above. *(Verify each.)*

## 8. Legal basis (GDPR) — proposed, to be confirmed

Proposed, not asserted: processing is necessary for a task in the public
interest (Art. 6(1)(e) — research at a state university), with the safeguards
of Art. 89 and the Swedish supplementary provisions. Consent per §6 is the
*ethical* basis for participation; it is not necessarily the *legal* basis for
the processing, and the two must not be conflated in the filed version.
**Verify with KTH's data protection officer before filing.**

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
- *School-background re-identification:* mitigated by keeping names and
  municipalities in the coding sheet and analysing only huvudman type (§5c);
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
- Recordings (audio/video) are never published.
- The course and institution are anonymised in the published papers before
  submission (tracked as vt-debug#6).
- No raw data is shared or deposited; [TO DECIDE: whether an anonymised,
  aggregated dataset is deposited, and where].

## 11. Attachments (for the filed version)

1. Participant information sheet — **to be written** (tracked as a follow-up
   issue in the paper repositories); needs a section on learnlog's exact
   recording behaviour, and a staff variant for the teacher/TA baseline.
2. The consent item, verbatim (§6).
3. The instruments: the papers' literate appendices are the authoritative
   definitions (vt-debug `quiz.nw`/`rspq.nw`/`episodes.nw`,
   vt-prog-misconceptions `diagnostics.nw`).
4. Data-management plan (expanded from §7).

## 12. Does this collection require review under the Ethics Review Act? (open question)

**Arguments that it does not:** the collection processes only ordinary
personal data (no special categories are sought); there is no physical
intervention; no method is used that aims to affect the participant physically
or psychologically beyond the course's ordinary teaching, which is not
manipulated for research; there is no obvious risk of harm. Under
etikprövningslagen (2003:460) §§3–4, review is required chiefly for
special-category personal data, data on legal offences, physical or
psychological intervention, or obvious risk of harm — none of which appears to
apply.

**Arguments that it might:** free-text answers, program output and recordings
can incidentally carry sensitive content, and audio/video recordings are
identifiable by nature; the school-background items combined with a register
lookup produce a socio-economic proxy, a linkage a reviewer may want to
assess; the volume and granularity of the behavioural logging (continuous
capture of source code and program interaction) may be argued to go beyond
what students expect of a course; institutional practice may call for review
or an advisory statement for student-subject research regardless of the strict
legal threshold.

**What must be verified, and by whom:** the PI verifies with KTH's
research-ethics support and KTH's data protection officer whether (a) review
by the Swedish Ethical Review Authority is required, (b) an advisory statement
should be requested, or (c) an internal KTH assessment suffices — with the
school-register linkage and the continuous logging put to them explicitly.

*This section states arguments, not a legal conclusion. No filing decision has
been taken.*

## 13. To do before filing

- [ ] Confirm route and form (Ethical Review Authority via Ethix,
      etikprovningsansokan.se — BankID-signed by the PI and an authorized
      representative of KTH — or KTH
      internal route) — depends on §12.
- [ ] Translate to Swedish.
- [ ] Write the participant information sheet (student + staff variants,
      Swedish + English), including the learnlog recording description.
- [ ] Fill all [TO FILL] placeholders: department, personnel, expected N,
      storage systems, retention periods, hosting for learnlog repositories.
- [ ] Settle the language-model pre-coding: model/service, agreement, or local
      hosting (§7).
- [ ] Confirm FeedbackFruits research export and Zoom recording terms (§7).
- [ ] Verify GDPR legal basis with KTH's DPO (§8).
- [ ] Decide data deposition (§10).
