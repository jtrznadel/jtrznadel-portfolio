import 'package:flutter/material.dart';
import 'package:jtrznadel_portfolio/features/core/data/models/project_model.dart';
import 'package:jtrznadel_portfolio/features/core/data/projects_mock.dart';
import 'package:jtrznadel_portfolio/utils/app_colors.dart';
import 'package:jtrznadel_portfolio/utils/app_keys.dart';
import 'package:jtrznadel_portfolio/utils/app_text_styles.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = ProjectsMock.getSampleProjects();
    final size = MediaQuery.of(context).size;
    return SizedBox(
      key: AppKeys.projectKey,
      height: size.height * 0.9,
      width: double.infinity, // - height of the navbar
      child: Padding(
        padding: EdgeInsets.only(top: size.height * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width * 0.5,
              child: Row(
                children: [
                  Text(
                    'PROJECTS',
                    style: AppTextStyles.headingStyle(),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: AppColors.primaryColor,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  final project = projects[index];
                  return ProjectCard(project: project);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(
            'https://dreamwalk.com.au/wp-content/uploads/2022/02/app-ui-design-with-rounded-corners.jpeg',
            fit: BoxFit.fill,
            errorBuilder: (context, error, stackTrace) {
              return Image.asset('put and image here');
            },
          ),
          ListTile(
            title: Text(project.name),
            subtitle: Text(project.description),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
