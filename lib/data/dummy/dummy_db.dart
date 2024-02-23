class DummyDb {
  static List images = [
    'https://images.pexels.com/photos/1520760/pexels-photo-1520760.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1812634/pexels-photo-1812634.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/698532/pexels-photo-698532.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/15019490/pexels-photo-15019490/free-photo-of-portrait-of-a-smiling-man.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/14995438/pexels-photo-14995438/free-photo-of-portrait-of-woman-in-hat.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2748239/pexels-photo-2748239.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2738919/pexels-photo-2738919.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2748242/pexels-photo-2748242.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1003979/pexels-photo-1003979.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2649165/pexels-photo-2649165.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1003979/pexels-photo-1003979.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1988686/pexels-photo-1988686.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3054535/pexels-photo-3054535.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3756985/pexels-photo-3756985.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3762802/pexels-photo-3762802.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3328058/pexels-photo-3328058.jpeg?auto=compress&cs=tinysrgb&w=600',
  ];

  static List dummyChatList = [
    {
      'username': 'Dr. Alex Antony',
      'last_message': 'Hey there! How has your day been so far?',
      'time': '1:15 am',
      'count': 0,
      'profile_image': images[0],
    },
    {
      'username': 'Dr. Samuel John',
      'last_message':
          "Ever tried a new hobby lately? It can be quite refreshing!",
      'time': '12:45 am',
      'count': 1,
      'profile_image': images[1],
    },
    {
      'username': 'Dr. Ashna Pappachan',
      'last_message': 'Any exciting plans for the day? Share your thoughts!',
      'time': '11:55 am',
      'count': 5,
      'profile_image': images[2],
    },
    {
      'username': 'Dr. Antony Varghese',
      'last_message': 'Have you explored any interesting places recently?',
      'time': '10:15 am',
      'count': 8,
      'profile_image': images[3],
    },
    {
      'username': 'Dr. Clara M',
      'last_message':
          'Thinking of trying out a new recipe for lunch. Any suggestions?',
      'time': '9:26 am',
      'count': 0,
      'profile_image': images[4],
    },
    {
      'username': 'Dr. Sandra Jose',
      'last_message': 'Any favorite books or movies you would recommend?',
      'time': '8:25 am',
      'count': 0,
      'profile_image': images[5],
    },
    {
      'username': 'Dr. Agnus George',
      'last_message': 'Remember to take short breaks and stretch during work!',
      'time': '8:24 am',
      'count': 5,
      'profile_image': images[6],
    },
    {
      'username': 'Dr. Lismy PT',
      'last_message':
          'Excited about any upcoming plans or events? Share your enthusiasm!',
      'time': '8:20 am',
      'count': 2,
      'profile_image': images[7],
    },
    {
      'username': 'Dr. Elisa Jacob',
      'last_message':
          'Any recent achievements or proud moments you\'d like to celebrate?',
      'time': '8:20 am',
      'count': 0,
      'profile_image': images[8],
    },
    {
      'username': 'Dr. Vivina Jose',
      'last_message': 'Helloo! How are you doing today?',
      'time': '8:15 am',
      'count': 4,
      'profile_image': images[9],
    },
    {
      'username': 'Dr. Stephy Jude',
      'last_message': 'Helloo! What\'s on your mind right now?',
      'time': '8:14 am',
      'count': 7,
      'profile_image': images[10],
    },
    {
      'username': 'Dr. Joshna Mary',
      'last_message': 'Helloo! Anything exciting happening in your world?',
      'time': '8:10 am',
      'count': 0,
      'profile_image': images[11],
    },
    {
      'username': 'Dr. Ann Mariya',
      'last_message': 'Helloo! How\'s your day shaping up?',
      'time': '8:08 am',
      'count': 8,
      'profile_image': images[12],
    },
    {
      'username': 'Dr. Anu Varghese',
      'last_message': 'Helloo! Any interesting plans for the day?',
      'time': '8:07 am',
      'count': 2,
      'profile_image': images[13],
    },
    {
      'username': 'Dr. Anupam Patel',
      'last_message': 'Helloo! What\'s the latest in your world?',
      'time': '8:06 am',
      'count': 11,
      'profile_image': images[14],
    },
    {
      'username': 'Dr. Andriya Sam',
      'last_message': 'Helloo! Hope you have a fantastic day ahead!',
      'time': '8:04 am',
      'count': 0,
      'profile_image': images[15],
    },
  ];

  static List dummyMessageList = [
    {'message': 'Hey there!', 'is_current_user': true},
    {'message': 'How are you?', 'is_current_user': false},
    {'message': 'What\'s up?', 'is_current_user': true},
    {'message': 'Good morning!', 'is_current_user': false},
    {'message': 'I hope you have a great day!', 'is_current_user': true},
    {'message': 'Any plans for today?', 'is_current_user': false},
    {'message': 'Lorem ipsum dolor sit amet.', 'is_current_user': true},
    {'message': 'Random message here.', 'is_current_user': false},
    {'message': 'Flutter is awesome!', 'is_current_user': true},
    {'message': 'Have a fantastic day!', 'is_current_user': false},
    {'message': 'Hey there! How are you doing today?', 'is_current_user': true},
    {
      'message':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'is_current_user': false
    },
    {
      'message': 'What\'s up? Anything exciting happening?',
      'is_current_user': true
    },
    {
      'message': 'Good morning! I hope your day is off to a great start.',
      'is_current_user': false
    },
    {
      'message': 'I hope you have a fantastic day ahead!',
      'is_current_user': true
    },
    {'message': 'Any plans for today? Let me know!', 'is_current_user': false},
    {'message': 'Lorem ipsum dolor sit amet.', 'is_current_user': true},
    {
      'message': 'Just wanted to say hi! Random message here.',
      'is_current_user': false
    },
    {
      'message':
          'Flutter is awesome! Have you been working on any cool projects lately?',
      'is_current_user': true
    },
    {
      'message': 'Have a fantastic day! Keep spreading positive vibes!',
      'is_current_user': false
    },
    {
      'message': 'Exciting news! I just got a new job opportunity.',
      'is_current_user': true
    },
    {
      'message':
          'I\'m feeling a bit under the weather today. Hoping for a quick recovery.',
      'is_current_user': false
    },
    {
      'message': 'Just finished reading a great book. Highly recommend it!',
      'is_current_user': true
    },
    {
      'message':
          'What\'s your favorite movie? I\'m in the mood for a good film.',
      'is_current_user': false
    },
    {
      'message': 'Did you try the new restaurant in town? The food is amazing!',
      'is_current_user': true
    },
    {'message': 'No!', 'is_current_user': false},
    {'message': ' Sending good vibes your way!', 'is_current_user': true},
    {
      'message':
          'I\'m planning a trip next month. Any suggestions for a great destination?',
      'is_current_user': false
    },
    {'message': 'Hope you\'re having a great day!', 'is_current_user': true},
    {
      'message': 'Just got a promotion at work! Feeling grateful and excited.',
      'is_current_user': false
    },
    {'message': ' How\'s everything on your end?', 'is_current_user': true},
    {
      'message': 'How\'s your day going? Anything new and interesting?',
      'is_current_user': false
    },
    {
      'message': 'Reflecting on the day and looking forward to tomorrow.',
      'is_current_user': true
    },
    {
      'message': 'Remember to take breaks and relax! Self-care is important.',
      'is_current_user': false
    },
    {
      'message': 'Anything on your mind? I\'m here to chat!',
      'is_current_user': true
    },
    {
      'message':
          'It\'s been a while since we caught up. Let\'s plan something soon!',
      'is_current_user': false
    },
    {
      'message': 'Hey there! How has life been treating you?',
      'is_current_user': true
    },
    {
      'message': 'Hey! Long time no talk. How have you been lately?',
      'is_current_user': false
    },
    {
      'message': 'Looking forward to catching up with you!',
      'is_current_user': true
    }
  ];

  static List dummyActiveList = [...dummyChatList]..shuffle();
}
