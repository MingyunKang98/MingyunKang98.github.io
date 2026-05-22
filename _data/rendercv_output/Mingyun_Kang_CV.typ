// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Mingyun Kang",
  title: "Mingyun Kang - CV",
  footer: context { [#emph[Mingyun Kang -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in May 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "a4",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: true,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 0, 0),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 0, 0),
  colors-links: rgb(0, 0, 0),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "New Computer Modern",
  typography-font-family-name: "New Computer Modern",
  typography-font-family-headline: "New Computer Modern",
  typography-font-family-connections: "New Computer Modern",
  typography-font-family-section-titles: "New Computer Modern",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: true,
  links-show-external-link-icon: true,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "◦" ,
  entries-highlights-nested-bullet:  "◦" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 5,
    day: 22,
  ),
)


= Mingyun Kang

  #headline([Researcher in Construction Management & Automation])

#connections(
  [#link("mailto:kmg54312@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[kmg54312\@gmail.com]]],
  [#link("https://mingyunkang98.github.io/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[mingyunkang98.github.io]]],
  [#link("https://github.com/mingyunkang98", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[mingyunkang98]]],
  [#link("https://scholar.google.com/citations?user=ZIYW21AAAAAJ", icon: false, if-underline: false, if-color: false)[#connection-with-icon("graduation-cap")[Google Scholar]]],
)


== Education

#education-entry(
  [
    #strong[Seoul National University of Science and Technology]

    #emph[Bachelor] #emph[in] #emph[Architectural Engineering, School of Architecture]

  ],
  [
    #emph[Seoul, Republic of Korea]

    #emph[Mar 2017 – Feb 2024]

  ],
  main-column-second-row: [
    - Double Major: Business Administration

    - GPA : 3.8 \/ 4.5

  ],
)

#education-entry(
  [
    #strong[Seoul National University of Science and Technology]

    #emph[Master] #emph[in] #emph[Architectural Engineering (Integrated Bachelor-Master Program)]

  ],
  [
    #emph[Seoul, Republic of Korea]

    #emph[Mar 2024 – Aug 2025]

  ],
  main-column-second-row: [
    - GPA : 4.22 \/4.5

    - Thesis : Computer Vision-based Adhesion Quality Inspection Model for Exterior Insulation and Finishing System (Advisor : Prof. Taehoon Kim)

  ],
)

== Research Experience

#regular-entry(
  [
    #strong[Research Assistant]

    #emph[CONICT Lab, Seoul National University of Science and Technology]

  ],
  [
    #emph[Seoul, Republic of Korea]

    #emph[Dec 2021 – Aug 2025]

  ],
  main-column-second-row: [
    #summary[Conducted research on computer vision-based automated construction supervision, 3D reconstruction, and human-robot collaboration at construction sites.]

    - Published 3 SCIE journal papers and 2 SCOPUS conference papers as first\/co-author

    - Filed 5 domestic patent applications related to construction automation and vision-based inspection

    - Participated in 3 national R&D projects funded by NRF and the Ministry of Land, Infrastructure and Transport (MOLIT)

  ],
)

#regular-entry(
  [
    #strong[Post-Master's Researcher]

    #emph[Korea Institute of Civil Engineering and Building Technology (KICT)]

  ],
  [
    #emph[Goyang, Republic of Korea]

    #emph[Nov 2025 – present]

  ],
  main-column-second-row: [
    #summary[Post-Construction Evaluation & Management Center, Conducted research on Post-Evaluation of SOC in Republic of Korea]

  ],
)

== Publications (SCIE)

#regular-entry(
  [
    #strong[Computer Vision-Based Adhesion Quality Inspection Model for Exterior Insulation and Finishing System]

  ],
  [
    Dec 2024

  ],
  main-column-second-row: [
    #summary[Applied Sciences, 15(1), 125.]

    Mingyun Kang, Sebeen Yoon, Taehoon Kim

    #link("https://doi.org/10.3390/app15010125")[10.3390\/app15010125] (Applied Sciences)

  ],
)

#regular-entry(
  [
    #strong[Approach to Enhancing Panoramic Segmentation in Indoor Construction Sites Based on a Perspective Image Segmentation Foundation Model]

  ],
  [
    Apr 2025

  ],
  main-column-second-row: [
    #summary[Applied Sciences, 15(9), 4875.]

    Juho Han, Sebeen Yoon, Mingyun Kang, Taehoon Kim

    #link("https://doi.org/10.3390/app15094875")[10.3390\/app15094875] (Applied Sciences)

  ],
)

#regular-entry(
  [
    #strong[Automated Vision-based Location Monitoring for Jack Support]

  ],
  [
    Jan 2025

  ],
  main-column-second-row: [
    #summary[KSCE Journal of Civil Engineering, 100374.]

    Sebeen Yoon, Mingyun Kang, Minhyung Kim, Taehoon Kim

    #link("https://doi.org/10.1016/j.kscej.2025.100374")[10.1016\/j.kscej.2025.100374] (KSCE Journal of Civil Engineering)

  ],
)

== Publications (SCOPUS)

#regular-entry(
  [
    #strong[Instance Segmentation of Exterior Insulation Finishing System using Synthetic Datasets]

  ],
  [
    June 2024

  ],
  main-column-second-row: [
    #summary[ISARC Vol. 41, pp. 1176-1181. IAARC Publications.]

    Mingyun Kang, Sebeen Yoon, Juho Han, Sanghyeon Na, Taehoon Kim

    #link("https://doi.org/10.22260/ISARC2024/0152")[10.22260\/ISARC2024\/0152] (ISARC 2024 — International Symposium on Automation and Robotics in Construction)

  ],
)

#regular-entry(
  [
    #strong[Comparative Study of Structure from Motion on Construction Site]

  ],
  [
    July 2025

  ],
  main-column-second-row: [
    #summary[ISARC Vol. 42, pp. 1395-1400. IAARC Publications.]

    Mingyun Kang, Sangmin Lee, Sebeen Yoon, Taehoon Kim

    (ISARC 2025 — International Symposium on Automation and Robotics in Construction)

  ],
)

== Publications (International Conference)

#regular-entry(
  [
    #strong[Computer Vision-Based Tile Counting Model for Automated Progress Monitoring]

  ],
  [
    June 2023

  ],
  main-column-second-row: [
    #summary[CCC 2023, Keszthely, Hungary.]

    Mingyun Kang, Wooseok Lee, Junsang Yoo, Sebeen Yoon, Taehoon Kim

    (Creative Construction Conference (CCC 2023))

  ],
)

#regular-entry(
  [
    #strong[A Preliminary Study on Automatic Jack Support Installation Interval Measurement Model]

  ],
  [
    June 2023

  ],
  main-column-second-row: [
    #summary[CCC 2023, Keszthely, Hungary.]

    Sebeen Yoon, Mingyun Kang, Taehoon Kim

    (Creative Construction Conference (CCC 2023))

  ],
)

#regular-entry(
  [
    #strong[Approach for Improving Panoramic Image Segmentation Quality on Construction Sites using SAM]

  ],
  [
    June 2024

  ],
  main-column-second-row: [
    #summary[CCC 2024, Prague, Czech Republic.]

    Juho Han, Sanghyeon Na, Mingyun Kang, Sebeen Yoon, Taehoon Kim

    (Creative Construction Conference (CCC 2024))

  ],
)

== Publications (Domestic)

#regular-entry(
  [
    #strong[Computer Vision-based Adhesion Quality Inspection Automation Model for Exterior Insulation and Finishing System]

  ],
  [
    Mar 2023

  ],
  main-column-second-row: [
    #summary[JKIBC, 23(2), 165-173. (KCI)]

    Sebeen Yoon, Mingyun Kang, Hyeonseung Jang, Taehoon Kim

    (Journal of the Korean Institute of Building Construction (JKIBC))

  ],
)

#regular-entry(
  [
    #strong[Preliminary Study on Semantic Segmentation-based Quality Inspection Model for Exterior Insulation]

  ],
  [
    Oct 2022

  ],
  main-column-second-row: [
    #summary[AIK, 42(2), 704-705.]

    Sebeen Yoon, Mingyun Kang, Byeongmin Lee, Taehoon Kim

    (Proceedings of the Architectural Institute of Korea)

  ],
)

#regular-entry(
  [
    #strong[A Basic Study on Image-based Numerical Measurement Model for Construction Sites]

  ],
  [
    May 2023

  ],
  main-column-second-row: [
    #summary[KIBC Spring 2023, 23(1), 287-288. \[Best Paper Award\]]

    Sebeen Yoon, Mingyun Kang, Taehoon Kim

    (Proceedings of KIBC Spring Conference)

  ],
)

#regular-entry(
  [
    #strong[Applicability Enhancement of Deep Learning-based Computer Vision Models for 360° Panoramic Images]

  ],
  [
    Nov 2023

  ],
  main-column-second-row: [
    #summary[KICEM 2023, Goseong, 205-206.]

    Mingyun Kang, Junsang Yoo, Wooseok Lee, Taehoon Kim

    (Proceedings of KICEM Annual Conference)

  ],
)

#regular-entry(
  [
    #strong[A Basic Study on Rebar Spacing Measurement Method Based on Single Image Information]

  ],
  [
    May 2024

  ],
  main-column-second-row: [
    #summary[KIBC Spring 2024, Gunsan, 243-244.]

    Cheolhun Park, Jieun Lee, Jihyeon Lee, Yunjae Jeon, Mingyun Kang, Taehoon Kim

    (Proceedings of KIBC Spring Conference)

  ],
)

#regular-entry(
  [
    #strong[Performance Comparison Study on Image-based 3D Space Generation]

  ],
  [
    Oct 2024

  ],
  main-column-second-row: [
    #summary[AIK Autumn 2024, Gyeongju, 974-975.]

    Mingyun Kang, Sebeen Yoon, Taehoon Kim

    (Proceedings of Architectural Institute of Korea Autumn Conference)

  ],
)

#regular-entry(
  [
    #strong[A Basic Study on 3D Reconstruction Performance Improvement Using 360° Camera]

  ],
  [
    Nov 2024

  ],
  main-column-second-row: [
    #summary[KIBC Autumn 2024, 203-204.]

    Mingyun Kang, Juho Han, Sebeen Yoon, Taehoon Kim

    (Proceedings of KIBC Autumn Conference)

  ],
)

#regular-entry(
  [
    #strong[Construction of High-Resolution 360° Image Dataset Using Image Super-Resolution Technology]

  ],
  [
    Nov 2024

  ],
  main-column-second-row: [
    #summary[National Student Conference 2024, 177-178.]

    Minhyung Lee, Mingyun Kang, Taehoon Kim

    (Proceedings of National University Student Academic Conference)

  ],
)

#regular-entry(
  [
    #strong[A Basic Study on Image Analysis-based Crackdown on Illegal Rooftop Buildings]

  ],
  [
    May 2025

  ],
  main-column-second-row: [
    #summary[KIBC Spring 2025, Gyeongju, 309-310.]

    Yeon Choi, Seonwoo Lee, Yujin Oh, Gangmin Bae, Mingyun Kang, Taehoon Kim

    (Proceedings of KIBC Spring Conference)

  ],
)

== Patents

#regular-entry(
  [
    #strong[Automatic Supervision Method and Device for Adhesive Application Quality]

  ],
  [
    Apr 2023

  ],
  main-column-second-row: [
    #summary[Domestic Patent Application No. 10-2023-0053756. Seoul National University of Science and Technology Industry-Academic Cooperation Foundation.]

    Taehoon Kim, Sebeen Yoon, Mingyun Kang

  ],
)

#regular-entry(
  [
    #strong[Automated Construction Site Supervision System]

  ],
  [
    Sept 2023

  ],
  main-column-second-row: [
    #summary[Domestic Patent Application No. 10-2023-0125464. Seoul National University of Science and Technology Industry-Academic Cooperation Foundation.]

    Taehoon Kim, Sebeen Yoon, Mingyun Kang

  ],
)

#regular-entry(
  [
    #strong[Tile Quantity Counting System]

  ],
  [
    Oct 2023

  ],
  main-column-second-row: [
    #summary[Domestic Patent Application No. 10-2023-0135013. Seoul National University of Science and Technology Industry-Academic Cooperation Foundation.]

    Taehoon Kim, Sebeen Yoon, Mingyun Kang, Wooseok Lee, Junsang Yoo

  ],
)

#regular-entry(
  [
    #strong[Method for Measuring Rebar Spacing Based on Single Image Information]

  ],
  [
    Sept 2024

  ],
  main-column-second-row: [
    #summary[Domestic Patent Application No. 10-2024-0127210. Seoul National University of Science and Technology Industry-Academic Cooperation Foundation.]

    Taehoon Kim, Mingyun Kang, Cheolhun Park, Jihyeon Lee, Jieun Lee, Yunjae Jeon

  ],
)

#regular-entry(
  [
    #strong[Method for Detecting Illegal Rooftop Buildings Based on Video Image Analysis]

  ],
  [
    Aug 2025

  ],
  main-column-second-row: [
    #summary[Domestic Patent Application No. 10-2025-0117608. Seoul National University of Science and Technology Industry-Academic Cooperation Foundation.]

    Taehoon Kim, Mingyun Kang, Seonwoo Lee, Yeon Choi, Yujin Oh, Gangmin Bae

  ],
)

== Projects

#regular-entry(
  [
    #strong[Digital Mapping-based Platform Research Laboratory for Healthy Construction Lifecycle]

  ],
  [
    #emph[June 2022 – Feb 2025]

  ],
  main-column-second-row: [
    #summary[National R&D project exploring digital mapping-based platforms for the full construction lifecycle. Focused on computer vision applications for automated construction supervision.]

    - Vision-based adhesive application quality inspection for EIFS

    - Tile quantity counting via computer vision

  ],
)

#regular-entry(
  [
    #strong[Development of Digital-based Architectural Supervision and Construction Automation Robot Technology]

  ],
  [
    #emph[Apr 2022 – Dec 2026]

  ],
  main-column-second-row: [
    #summary[Large-scale national R&D project (KRW 24,490M) funded by MOLIT aimed at developing digital architectural supervision systems and construction automation robots.]

    - Instance segmentation of insulation finishing systems using synthetic datasets

    - Panoramic image segmentation for indoor construction sites

  ],
)

#regular-entry(
  [
    #strong[Development of Human-Robot Collaboration Technology and Integrated Operation System for High-Altitude Work at Construction Sites]

  ],
  [
    #emph[Apr 2025 – Dec 2027]

  ],
  main-column-second-row: [
    #summary[Ongoing national R&D project (KRW 17,000M) funded by MOLIT developing XR-based human-robot collaboration platforms for multipurpose high-altitude construction work.]

    - XR-based human-robot collaboration interface

    - Integrated robot operation system for construction sites

  ],
)

== Awards

#regular-entry(
  [
    #strong[Best Paper Award (최우수학술상)]

  ],
  [
    May 2023

  ],
  main-column-second-row: [
    #summary[Awarded at the Spring Conference 2023 for the paper: A Basic Study on Image-based Numerical Measurement Model for Construction Sites]

    Korean Institute of Building Construction (KIBC)

  ],
)

#regular-entry(
  [
    #strong[Best Paper Award (최우수학술상)]

  ],
  [
    May 2024

  ],
  main-column-second-row: [
    #summary[Awarded at the Spring Conference 2024 for the paper: A Basic Study on Rebar Spacing Measurement Method Based on Single Image Information]

    Korean Institute of Building Construction (KIBC)

  ],
)

#regular-entry(
  [
    #strong[Excellence Paper Award (우수학술상)]

  ],
  [
    May 2025

  ],
  main-column-second-row: [
    #summary[Awarded at the Spring Conference 2025 for the paper: A Basic Study on Image Analysis-based Crackdown on Illegal Buildings on Rooftops]

    Korean Institute of Building Construction (KIBC)

  ],
)

#regular-entry(
  [
    #strong[Outstanding Thesis Award (우수논문상)]

  ],
  [
    Aug 2025

  ],
  main-column-second-row: [
    #summary[Awarded for the Master's thesis: Computer Vision-based Adhesion Quality Inspection Model for Exterior Insulation and Finishing System]

    Seoul National University of Science and Technology

  ],
)

== Languages & Skills

- Korean (Native)   ·   English (Advanced)   ·   Python (Advanced)

== Hobbies

- Golf   ·   Running   ·   Snowboarding

== Military Service

#regular-entry(
  [
    #strong[Sergeant (병장), Rifleman]

    #emph[Capital Defense Command, 1st Security Battalion, Republic of Korea Army]

  ],
  [
    #emph[Republic of Korea]

    #emph[Dec 2018 – Sept 2021]

  ],
  main-column-second-row: [
    #summary[Completed mandatory military service as an infantry rifleman. Honorably discharged at the rank of Sergeant.]

  ],
)

== Certificates

#regular-entry(
  [
    #strong[Architectural Engineer License (건축기사)]

  ],
  [
    #emph[June 2025]

  ],
  main-column-second-row: [
  ],
)

#regular-entry(
  [
    #strong[TOEIC Speaking — Advanced Low (Score 160)]

  ],
  [
    #emph[Nov 2023]

  ],
  main-column-second-row: [
  ],
)

== References

  #regular-entry(
  [
    #strong[Professor Taehoon Kim]

  ],
  [
  ],
  main-column-second-row: [
  ],
)
