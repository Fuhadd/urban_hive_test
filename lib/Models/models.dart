//import 'dart:html';

class User {
  final String name;

  final String commitment;

  final String imageUrl;
  final String hasIdea;
  final String hasTechical;
  final String state;
  final String country;
  final String city;
  final String bio;

  User(
      {required this.name,
      required this.commitment,
      required this.imageUrl,
      required this.hasIdea,
      required this.hasTechical,
      required this.state,
      required this.country,
      required this.city,
      required this.bio});

  static List<User> users = [
    User(
        name: 'Anita Ike',
        commitment: '20 hours',
        imageUrl:
            'https://images.unsplash.com/photo-1502685104226-ee32379fefbe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDIwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
        hasIdea: 'Yes',
        hasTechical: 'Yes',
        state: 'Lagos',
        bio:
            'Hey! I am passionate about technology and love to build things. I am obsessed with learning new things everyday. I am a self taught software dev and i have always been a tech geek. I would love to find someone as passionate about changing education industry with techology.',
        country: 'Nigeria',
        city: 'Lekki'),
  ];
}

class Conversation {
  final String name;

  final String duration;

  final String imageUrl;

  final String content;

  Conversation({
    required this.name,
    required this.imageUrl,
    required this.duration,
    required this.content,
  });

  static List<Conversation> conversations = [
    Conversation(
      name: 'Frank Kalu',
      imageUrl:
          'https://images.unsplash.com/photo-1520943219761-6ca840e2e585?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
      duration: '3 weeks',
      content: 'Great, I look forward to...',
    ),
    Conversation(
      name: 'Adam Kanayo',
      imageUrl:
          'https://images.unsplash.com/photo-1530021232320-687d8e3dba54?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      duration: '1 month',
      content: 'Great, I look forward to...',
    ),
    Conversation(
      name: 'Peter Leno',
      imageUrl:
          'https://images.unsplash.com/flagged/photo-1558085140-c899b1bc1ce5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTB8MjMwMjQzODd8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
      duration: '1 month',
      content: 'Great, I look forward to...',
    ),
    Conversation(
      name: 'Nkethi Ann',
      imageUrl:
          'https://images.unsplash.com/photo-1623954360656-c259d5be351c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTF8MjMwMjQzODd8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
      duration: '2 months',
      content:
          'Great, I look forward to connecting and going over the different possibilities. Please find my details below \n \n \nSkype: NkethiAnn \n \n \n \nSent on July 16, 2021',
    ),
    Conversation(
      name: 'Alex Pierre',
      imageUrl:
          'https://images.unsplash.com/photo-1639928758287-db12413453c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80',
      duration: '3 months',
      content: 'Great, I look forward to...',
    ),
  ];
}
