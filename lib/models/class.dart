class Class {
  late String title;
  late String description;
  late double percentage;
  late double rating;
  bool isStarted = false;
  late String fileName;

  Class();
}

List<Class> getClasses() => [
      Class()
        ..title = 'Docker Mastery: with Kubernetes +Swarm from a Docker Captain'
        ..description = 'Bret Fisher, Docker Captain and DevOps Sysadmin'
        ..percentage = 0.01
        ..rating = 0
        ..isStarted = true
        ..fileName = 'docker.jpeg',
      Class()
        ..title = 'React - The Complete Guide (incl Hooks, Reach Router, Redux)'
        ..description = 'Academind by Maximilian Schwarzmüller, Online Education'
        ..percentage = 0.01
        ..rating = 0
        ..isStarted = true
        ..fileName = 'react.png',
      Class()
        ..title = 'Flutter & Dart - The Complete Flutter App Development Course'
        ..description = 'Paulo Dichone | Android, Java, Flutter Developer and Teacher, Software Engineer - Android, Java, Flutter, Dart and Teacher'
        ..percentage = 0.01
        ..rating = 0
        ..isStarted = true
        ..fileName = 'flutter.png',
      Class()
        ..title = 'iOS 11 & Swift 4 - The Complete iOS App Development Bootcamp'
        ..description = 'Dr. Angela Yu, Developer and Lead Instructor'
        ..percentage = 0.01
        ..rating = 0
        ..isStarted = true
        ..fileName = 'swift.png',
      Class()
        ..title = 'NodeJS - The Complete Guide (MVC, REST APIs, GraphQL, Deno)'
        ..description = 'Academind by Maximilian Schwarzmüller, Online Education'
        ..percentage = 0.01
        ..rating = 0
        ..isStarted = true
        ..fileName = 'node.png',
      Class()
        ..title = 'MongoDB - The Complete Developer\'s Guide 2021'
        ..description = 'Academind by Maximilian Schwarzmüller, Online Education'
        ..percentage = 0.01
        ..rating = 0
        ..isStarted = true
        ..fileName = 'mongodb.jpeg',
      Class()
        ..title = 'React Native - The Practical Guide [2021 Edition]'
        ..description = 'Academind by Maximilian Schwarzmüller, Online Education'
        ..percentage = 0.01
        ..rating = 0
        ..fileName = 'rnative.png',
      Class()
        ..title = 'PHP with Laravel for beginners - Become a Master in Laravel'
        ..description = 'Edwin Diaz, Web Developer & Premium Instructor - 700,000 students'
        ..percentage = 0.01
        ..rating = 0
        ..fileName = 'laravel.jpg',
    ];
