// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Mingyun Kang",
  title: "Mingyun Kang - CV",
  footer: context { [#emph[Mingyun Kang -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Apr 2026] ],
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
    month: 4,
    day: 15,
  ),
)


= Mingyun Kang

  #headline([Researcher in Architectural Engineering & Automation])

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

    #emph[Master] #emph[in] #emph[Architectural Engineering]

  ],
  [
    #emph[Seoul, Republic of Korea]

    #emph[Mar 2024 – Aug 2025]

  ],
  main-column-second-row: [
    - Integrated Bachelor-Master Program

    - GPA : 4.22 \/4.5

    - Thesis : Computer Vision-based Adhesion Quality Inspection Model for Exterior Insulation and Finishing System

  ],
)

== Experience

#regular-entry(
  [
    #strong[Graduate Research Assistant]

    #emph[CONICT Lab, Seoul National University of Science and Technology]

  ],
  [
    #emph[Seoul, Republic of Korea]

    #emph[June 2022 – Aug 2025]

  ],
  main-column-second-row: [
    #summary[Conducted research on computer vision-based automated construction supervision, 3D reconstruction, and human-robot collaboration at construction sites under Prof. Taehoon Kim.]

    - Developed a computer vision-based adhesion quality inspection model for Exterior Insulation and Finishing System (EIFS)

    - Published 3 SCIE journal papers and 2 SCOPUS conference papers as first\/co-author

    - Filed 5 domestic patent applications related to construction automation and vision-based inspection

    - Participated in 3 national R&D projects funded by NRF and the Ministry of Land, Infrastructure and Transport (MOLIT)

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

== Publications

  #regular-entry(
  [
    #strong[Computer Vision-Based Adhesion Quality Inspection Model for Exterior Insulation and Finishing System]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Applied Sciences, 15(1), 125. (SCIE)]

    Mingyun Kang, Sebeen Yoon, Taehoon Kim

  ],
)

  #regular-entry(
  [
    #strong[Approach to Enhancing Panoramic Segmentation in Indoor Construction Sites Based on a Perspective Image Segmentation Foundation Model]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Applied Sciences, 15(9), 4875. (SCIE)]

    Juho Han, Sebeen Yoon, Mingyun Kang, Taehoon Kim

  ],
)

  #regular-entry(
  [
    #strong[Automated Vision-based Location Monitoring for Jack Support]

  ],
  [
  ],
  main-column-second-row: [
    #summary[KSCE Journal of Civil Engineering, 100374. (SCIE)]

    Sebeen Yoon, Mingyun Kang, Minhyung Kim, Taehoon Kim

  ],
)

  #regular-entry(
  [
    #strong[Instance Segmentation of Exterior Insulation Finishing System using Synthetic Datasets]

  ],
  [
  ],
  main-column-second-row: [
    #summary[ISARC Vol. 41, pp. 1176-1181. IAARC Publications. (SCOPUS)]

    Mingyun Kang, Sebeen Yoon, Juho Han, Sanghyeon Na, Taehoon Kim

  ],
)

  #regular-entry(
  [
    #strong[Comparative Study of Structure from Motion on Construction Site]

  ],
  [
  ],
  main-column-second-row: [
    #summary[ISARC Vol. 42, pp. 1395-1400. IAARC Publications. (SCOPUS)]

    Mingyun Kang, Sangmin Lee, Sebeen Yoon, Taehoon Kim

  ],
)

== Skills

  #regular-entry(
  [
    #strong[Computer Vision]

  ],
  [
  ],
  main-column-second-row: [
  ],
)

== Languages

  #regular-entry(
  [
    #strong[Korean]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Native speaker]

  ],
)

  #regular-entry(
  [
    #strong[English]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Proficient — TOEIC Speaking 160, Advanced Low (Valid: Nov. 2023 – Nov. 2025)]

  ],
)

== Interests

  #regular-entry(
  [
    #strong[Architectural Engineering & AI]

  ],
  [
  ],
  main-column-second-row: [
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

  #regular-entry(
  [
    #strong[Professor Jane Smith]

  ],
  [
  ],
  main-column-second-row: [
  ],
)
