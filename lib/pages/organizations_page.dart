import "package:flutter/material.dart";
import "package:personal_website/widgets/appbar.dart";
import "package:personal_website/widgets/drawer.dart";
import "package:personal_website/widgets/footer.dart";
import "package:personal_website/widgets/header.dart";
import "package:personal_website/widgets/item_card.dart";

class Organizations extends StatefulWidget {
  const Organizations({super.key});

  @override
  State<Organizations> createState() => _OrganizationsState();
}

class _OrganizationsState extends State<Organizations> {
  List<Color> theme = [
    Color(0xFFF7F0F0),
    Color(0xFF5FE3E7),
    Color(0xFF0DB9BF),
    Color(0xFF006494),
    Color(0xFF003554),
    Color(0xFF051923)
  ];

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return Scaffold(
          backgroundColor: theme[5],
          body: Container(
            height: MediaQuery.of(context).size.height,
            color: theme[5],
            child: SingleChildScrollView(
              child: Container(
                constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      Header(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ItemCard(
                            heading: "Research Assistant at RoboTouch Lab",
                            subHeading:
                                "- Contributed to the development of the simulation toolbox for the GelSight Tactile Sensors\n- Developed a custom rendering environment using Qt in C++ to simulate the function of the GelSight sensors",
                            organization: "University of Illinois Urbana-Champaign",
                          ),
                          ItemCard(
                            heading: "Research Assistant at McKechnie LIFE Home",
                            subHeading:
                                "- Programmed a pair of spectacles that could control the Stretch Robot using head movements\n- Integrated the GPT-3.5 model into the Misty Robot, enabling it to communicate with other robots in the lab",
                            organization:
                                "University of Illinois Urbana-Champaign",
                          ),
                          ItemCard(
                            heading: "Course Assistant for CS 128",
                            subHeading:
                                "- Managed office hours and discussion sessions for 1000+ students at the University of Illinois\n- Validated the machine problems used to test the programming proficiency of the students throughout the semester",
                            organization: "University of Illinois Urbana-Champaign",
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ItemCard(
                            heading: "Software Intern",
                            subHeading:
                                "- Developed REST API using JIRA platform to track issues & tickets in the organization to speed up workflow\n- Built API with Flask in Python",
                            organization: "Labra.io",
                          ),
                          ItemCard(
                            heading: "Senior Bot Developer",
                            subHeading:
                                "- Developed STEMMie bot to manage organization Discord server\n- Implemented features like task management, on/off boarding members, reminders, attendance, etc.\n- Used Python and the Discord API",
                            organization: "STEMist Education",
                          ),
                          ItemCard(
                            heading: "Head of Technology for EHR",
                            subHeading:
                                "- Developed a full-stack cross-platform health locker application\n- Leveraged the Indian Government's Unified Health Interface to connect with national health care providers\n- Led a team of 10 to develop a mobile application to display radiology reports, blood tests, etc.",
                            organization:
                                "University of Illinois Urbana-Champaign",
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ItemCard(
                            heading: "President of the Math Club",
                            subHeading:
                                "- Led club of 10 members through weekly-problem solving sessions on advanced math concepts\n- Hosted annual quiz competitions and published a biannual school math magazine\n- Organized annual Pi Day events (quiz, treasure hunt, integration bee) for a community of 600 high school students",
                            organization: "Greenwood High International School",
                          ),
                          ItemCard(
                            heading: "Head of Technology for IGNITE 2023",
                            subHeading:
                                "- Developed the website for IGNITE 2023 (annual inter-school cultural fest) with 1300+ participants\n- Led a team of 4 to develop the website within 2 months\n- Coordinated with departments to get specific requirements",
                            organization: "Greenwood High International School",
                          ),
                          ItemCard(
                            heading: "Undersecretary General of Technology for GWHMUN 2023",
                            subHeading:
                                "- Built the website for GWHMUN 2023, the largest inter-school MUN in Bangalore\n- Led a team of 4 to develop the website\n- Coordinated with school departments and organizing committee to get specific requirements",
                            organization: "Greenwood High International School",
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ItemCard(
                            heading: "Co-founder of Excel Core Robotics",
                            subHeading:
                                "- Created a lesson to help students program and build robots\n- Taught motor control, sensing, and team building skills\n- Capstone project: robotic floor sweeper",
                            organization: "Excel Core Robotics",
                          ),
                          ItemCard(
                            heading: "AwesomeMath Summer Program",
                            subHeading:
                                "- Advanced mathematics for gifted students\n- Explored complex math topics such as Cauchy-Shwarz inequality, Newton sums and Newton's theorem, analytical trigonometry, roots of unity, and more",
                            organization: "AwesomeMath",
                          ),
                        ],
                      ),
                    ]),
                    Footer()
                  ],
                ),
              ),
            ),
          ));
    } else {
      return Scaffold(
          backgroundColor: theme[5],
          appBar: TopBar(),
          drawer: SideBar(),
          body: Container(
            width: MediaQuery.of(context).size.width,
            color: theme[5],
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(children: [
                  ItemCard(
                    heading: "Research Assistant at RoboTouch Lab",
                    subHeading:
                        "- Contributed to the development of the simulation toolbox for the GelSight Tactile Sensors\n- Developed a Python plugin for a custom rendering environment in Blender to simulate the function of the sensors",
                    organization: "University of Illinois Urbana-Champaign",
                  ),
                  ItemCard(
                    heading: "Research Assistant at McKechnie LIFE Home",
                    subHeading:
                        "- Integrated the GPT-3.5 model into the Misty Robot, enabling it to communicate with other robots in the lab\n- Programmed the Misty Robot to give a fully automated and detailed tour of the LIFE Home to visitors",
                    organization:
                        "University of Illinois Urbana-Champaign",
                  ),
                  ItemCard(
                    heading: "Course Assistant for CS 128",
                    subHeading:
                        "- Managed office hours and discussion sessions for 1000+ students at the University of Illinois\n- Validated the machine problems used to test the programming proficiency of the students throughout the semester",
                    organization: "University of Illinois Urbana-Champaign",
                  ),
                  ItemCard(
                    heading: "Software Intern",
                    subHeading:
                        "- Developed REST API using JIRA platform to track issues & tickets in the organization to speed up workflow\n- Built API with Flask in Python",
                    organization: "Labra.io",
                  ),
                  ItemCard(
                    heading: "Senior Bot Developer",
                    subHeading:
                        "- Developed STEMMie bot to manage organization Discord server\n- Implemented features like task management, on/off boarding members, reminders, attendance, etc.\n- Used Python and the Discord API",
                    organization: "STEMist Education",
                  ),
                  ItemCard(
                    heading: "Head of Technology for EHR",
                    subHeading:
                        "- Developed a full-stack cross-platform health locker application\n- Leveraged the Indian Government's Unified Health Interface to connect with national health care providers\n- Led a team of 10 to develop a mobile application to display radiology reports, blood tests, etc.",
                    organization: "University of Illinois Urbana-Champaign",
                  ),
                  ItemCard(
                    heading: "President of the Math Club",
                    subHeading:
                        "- Led club of 10 members through weekly-problem solving sessions on advanced math concepts\n- Hosted annual quiz competitions and published a biannual school math magazine\n- Organized annual Pi Day events (quiz, treasure hunt, integration bee) for a community of 600 high school students",
                    organization: "Greenwood High International School",
                  ),
                  ItemCard(
                    heading: "Head of Technology for IGNITE 2023",
                    subHeading:
                        "- Developed the website for IGNITE 2023 (annual inter-school cultural fest) with 1300+ participants\n- Led a team of 4 to develop the website within 2 months\n- Coordinated with departments to get specific requirements",
                    organization: "Greenwood High International School",
                  ),
                  ItemCard(
                    heading: "Undersecretary General of Technology for GWHMUN 2023",
                    subHeading:
                        "- Built the website for GWHMUN 2023, the largest inter-school MUN in Bangalore\n- Led a team of 4 to develop the website\n- Coordinated with school departments and organizing committee to get specific requirements",
                    organization: "Greenwood High International School",
                  ),
                  ItemCard(
                    heading: "Co-founder of Excel Core Robotics",
                    subHeading:
                        "- Created a lesson to help students program and build robots\n- Taught motor control, sensing, and team building skills\n- Capstone project: robotic floor sweeper",
                    organization: "Excel Core Robotics",
                  ),
                  ItemCard(
                    heading: "AwesomeMath Summer Program",
                    subHeading:
                        "- Advanced mathematics for gifted students\n- Explored complex math topics such as Cauchy-Shwarz inequality, Newton sums and Newton's theorem, analytical trigonometry, roots of unity, and more",
                    organization: "AwesomeMath",
                  ),
                ]),
              ),
            ),
          ));
    }
  }
}
