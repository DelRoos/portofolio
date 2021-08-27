import 'package:flutter/material.dart';
import 'package:porto_folio/constant.dart';
import 'package:porto_folio/models/Project.dart';
import 'package:porto_folio/responsive.dart';
import 'package:porto_folio/screens/home/components/project_card.dart';

class ListProjects extends StatelessWidget {
  const ListProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: ProjectGridBuilder(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          mobileLarge: ProjectGridBuilder(
            crossAxisCount: 2,
            // childAspectRatio: 3,
          ),
          tablet: ProjectGridBuilder(
            childAspectRatio: 1.1,
          ),
          desktop: ProjectGridBuilder(),
        ),
      ],
    );
  }
}

class ProjectGridBuilder extends StatelessWidget {
  const ProjectGridBuilder({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) =>
          ProjectCard(project: demo_projects[index]),
    );
  }
}
