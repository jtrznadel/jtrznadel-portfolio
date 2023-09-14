import 'package:jtrznadel_portfolio/features/core/data/models/project_model.dart';

class ProjectsMock {
  static List<Project> getSampleProjects() {
    return [
      Project(
        id: '1',
        name: 'Przykładowy projekt 1',
        description: 'To jest opis przykładowego projektu 1.',
        tags: ['Tag1', 'Tag2'],
        imageUrl:
            'https://img.freepik.com/darmowe-wektory/rozne-ekrany-aplikacji-mobilnej-violet-public-transport_23-2148704862.jpg?w=2000',
      ),
      Project(
        id: '2',
        name: 'Przykładowy projekt 2',
        description: 'To jest opis przykładowego projektu 2.',
        tags: ['Tag3', 'Tag4'],
        imageUrl:
            'https://dreamwalk.com.au/wp-content/uploads/2022/02/app-ui-design-with-rounded-corners.jpeg',
      ),
      // Możesz dodać więcej przykładowych projektów według tego wzoru
    ];
  }
}
