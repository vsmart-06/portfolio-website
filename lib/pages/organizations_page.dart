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

  List<Map<String, String>> organizations = [
    {
      "heading": "Research Assistant at McKechnie LIFE Home",
      "subheading":
          "- Integrated GPT-3.5 into the Misty Robot, enabling human-robot experiments and multi-robot coordination in the lab\n- Automated the LIFE Home tour experience by enabling Misty to independently guide visitors",
      "organization": "University of Illinois Urbana-Champaign",
    },
    {
      "heading": "Mobile App Developer",
      "subheading":
          "- Built Flutter mobile app for Illini Dads Association, used by 40,000+ parents to navigate campus during Dads Weekend\n- Added scheduling and merchandise features to the Dads Weekend app, streamlining logistics and user experience\n- Integrated Google Maps and Firebase for real-time navigation and push notifications, enhancing parent experience",
      "organization": "Illini Dads Association",
    },
    {
      "heading": "Software Intern",
      "subheading":
          "- Built a Python-based reporting suite that automated analysis, reducing manual effort and making insights more accessible\n- Migrated backend to Laravel, improving performance and scalability and introduced new features for franchise operations",
      "organization": "Bricks 4 Kidz"
    },
    {
      "heading": "Course Assistant for CS 233",
      "subheading":
          "- Led in-person discussion sections to guide students through challenging concepts and assessments in computer architecture\n- Held weekly office hours to provide individualized support and deepen student understanding of course material",
      "organization": "University of Illinois Urbana-Champaign",
    },
    {
      "heading": "Course Assistant for CS 128",
      "subheading":
          "- Led weekly office hours and discussion sessions, supporting 1,000+ students in mastering C++ programming\n- Validated and stress-tested machine problems to ensure fair, accurate, and scalable assessment for 1,000+ students",
      "organization": "University of Illinois Urbana-Champaign",
    },
    {
      "heading": "Research Assistant at RoboTouch Lab",
      "subheading":
          "- Developed core modules for the GelSight sensor simulation toolbox, enabling more accurate tactile sensing experiments\n- Created a Blender plugin to simulate tactile sensors, reducing repetitive modeling and speeding up GelSight simulations",
      "organization": "University of Illinois Urbana-Champaign",
    },
    {
      "heading": "Software Intern",
      "subheading":
          "- Developed REST API using JIRA platform to track issues & tickets in the organization to speed up workflow\n- Built API with Flask in Python",
      "organization": "Labra.io",
    },
    {
      "heading": "Head of Technology for EHR",
      "subheading":
          "- Led development of cross-platform Flutter + Django app to serve as an all-in-one health data resource\n- Implemented UHI authentication for secure medical record access, ensuring compliance and enabling broader adoption\n- Built centralized encrypted storage for health data, providing a secure foundation for future clinical deployment",
      "organization": "University of Illinois Urbana-Champaign",
    },
    {
      "heading": "Senior Bot Developer",
      "subheading":
          "- Built a Discord bot to automate announcements, reminders, and event workflows, improving coordination in core teams\n- Expanded the bot with onboarding, task tracking, and attendance tools, helping teams increase productivity",
      "organization": "STEMist Education",
    },
    {
      "heading": "Head of Technology for IGNITE 2023",
      "subheading":
          "- Developed the website for IGNITE 2023 (annual inter-school cultural fest) with 1300+ participants\n- Led a team of 4 to develop the website within 2 months\n- Coordinated with departments to get specific requirements",
      "organization": "Greenwood High International School",
    },
    {
      "heading": "Undersecretary General of Technology for GWHMUN 2023",
      "subheading":
          "- Built the website for GWHMUN 2023, the largest inter-school MUN in Bangalore\n- Led a team of 4 to develop the website\n- Coordinated with school departments and organizing committee to get specific requirements",
      "organization": "Greenwood High International School",
    },
    {
      "heading": "President of the Math Club",
      "subheading":
          "- Led club of 10 members through weekly-problem solving sessions on advanced math concepts\n- Hosted annual quiz competitions and published a biannual school math magazine\n- Organized annual Pi Day events (quiz, treasure hunt, integration bee) for a community of 600 high school students",
      "organization": "Greenwood High International School",
    },
    {
      "heading": "Co-founder of Excel Core Robotics",
      "subheading":
          "- Created a lesson to help students program and build robots\n- Taught motor control, sensing, and team building skills\n- Capstone project: robotic floor sweeper",
      "organization": "Excel Core Robotics",
    },
    {
      "heading": "AwesomeMath Summer Program",
      "subheading":
          "- Advanced mathematics for gifted students\n- Explored complex math topics such as Cauchy-Shwarz inequality, Newton sums and Newton's theorem, analytical trigonometry, roots of unity, and more",
      "organization": "AwesomeMath",
    },
  ];

  Widget generateGrid() {
    List<Widget> rows = [];
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      rows.add(Header());
      List<Widget> row = [];
      for (int i = 0; i < organizations.length; i++) {
        if (i % 3 == 0) {
          rows.add(Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: row,
          ));
          row = [];
        }

        row.add(ItemCard(
          heading: organizations[i]["heading"]!,
          subheading: organizations[i]["subheading"]!,
          organization: organizations[i]["organization"],
        ));
      }

      rows.add(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: row,
      ));
    } else {
      for (Map organization in organizations) {
        rows.add(ItemCard(
          heading: organization["heading"]!,
          subheading: organization["subheading"]!,
          organization: organization["organization"],
        ));
      }
    }

    return Column(
      children: rows,
    );
  }

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
                  children: [generateGrid(), Footer()],
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
                  child: generateGrid()),
            ),
          ));
    }
  }
}
