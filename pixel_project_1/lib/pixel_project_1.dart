
import 'dart:io';

class Opportunity {
  String title;
  String description;

  Opportunity(this.title, this.description);
}

class VolunteerApp {
  List<Opportunity> opportunities = [];

  void addOpportunity(String title, String description) {
    opportunities.add(Opportunity(title, description));
    print('Opportunity added successfully!');
  }

  void listOpportunities() {
    if (opportunities.isEmpty) {
      print('No opportunities available.');
      return;
    }

    print('Available Volunteer Opportunities:');
    for (var i = 0; i < opportunities.length; i++) {
      print('${i + 1}. ${opportunities[i].title} - ${opportunities[i].description}');
    }
  }
}

void main() {
  final app = VolunteerApp();

  while (true) {
    print('\nWelcome to Volunteer Connect!');
    print('1. Add Opportunity');
    print('2. List Opportunities');
    print('3. Exit');
    stdout.write('Choose an option: ');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write('Enter Opportunity Title: ');
        String? title = stdin.readLineSync();
        stdout.write('Enter Opportunity Description: ');
        String? description = stdin.readLineSync();
        if (title != null && description != null) {
          app.addOpportunity(title, description);
        }
        break;

      case '2':
        app.listOpportunities();

        
        break;

      case '3':
        print('Exiting...');
        return;

      default:
        print('Invalid option. Please try again.');
    }
  }
}
