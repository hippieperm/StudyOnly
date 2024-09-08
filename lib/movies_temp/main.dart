import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  final List<Map<String, String>> popularMovies = [
    {
      'title': 'Deadpool & Wolverine',
      'image':
          'https://image.tmdb.org/t/p/w500/8cdWjvZQUExUUTzyp4t6EDMubfO.jpg',
      'description':
          'A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine.',
      'duration': 'N/A',
      'genre': 'Action, Comedy, Sci-Fi'
    },
    {
      'title': 'Borderlands',
      'image':
          'https://image.tmdb.org/t/p/w500/865DntZzOdX6rLMd405R0nFkLmL.jpg',
      'description':
          'Returning to her home planet, an infamous bounty hunter forms an unexpected alliance with a team of unlikely heroes. Together, they battle monsters and dangerous bandits to protect a young girl who holds the key to unimaginable power.',
      'duration': 'N/A',
      'genre': 'Action, Sci-Fi, Comedy, Adventure, Thriller'
    },
    {
      'title': 'Inside Out 2',
      'image':
          'https://image.tmdb.org/t/p/w500/vpnVM9B6NMmQpWeZvzLvDESb2QY.jpg',
      'description':
          'Teenager Riley\'s mind headquarters is undergoing a sudden demolition to make room for something entirely unexpected: new Emotions! Joy, Sadness, Anger, Fear and Disgust, who’ve long been running a successful operation by all accounts, aren’t sure how to feel when Anxiety shows up. And it looks like she’s not alone.',
      'duration': 'N/A',
      'genre': 'Animation, Family, Adventure, Comedy'
    },
    {
      'title': 'Beetlejuice Beetlejuice',
      'image':
          'https://image.tmdb.org/t/p/w500/kKgQzkUCnQmeTPkyIwHly2t6ZFI.jpg',
      'description':
          'After a family tragedy, three generations of the Deetz family return home to Winter River. Still haunted by Beetlejuice, Lydia\'s life is turned upside down when her teenage daughter, Astrid, accidentally opens the portal to the Afterlife.',
      'duration': 'N/A',
      'genre': 'Comedy, Horror, Fantasy'
    },
    {
      'title': 'Twilight of the Warriors: Walled In',
      'image': 'https://image.tmdb.org/t/p/w500/PywbVPeIhBFc33QXktnhMaysmL.jpg',
      'description':
          'Set in the 1980s, troubled youth Chan Lok-kwun accidentally enters the Walled City, discovers the order amidst its chaos, and learns important life lessons along the way. In the Walled City, he becomes close friends with Shin, Twelfth Master and AV. Under the leadership of Cyclone, they resist against the invasion of villain Mr. Big in a series of fierce battles. Together, they vow to protect the safe haven that is Kowloon Walled City.',
      'duration': 'N/A',
      'genre': 'Action, Crime, Thriller'
    },
    {
      'title': 'Despicable Me 4',
      'image':
          'https://image.tmdb.org/t/p/w500/wWba3TaojhK7NdycRhoQpsG0FaH.jpg',
      'description':
          'Gru and Lucy and their girls—Margo, Edith and Agnes—welcome a new member to the Gru family, Gru Jr., who is intent on tormenting his dad. Gru also faces a new nemesis in Maxime Le Mal and his femme fatale girlfriend Valentina, forcing the family to go on the run.',
      'duration': 'N/A',
      'genre': 'Animation, Family, Comedy, Action'
    },
    {
      'title': 'The Killer',
      'image':
          'https://image.tmdb.org/t/p/w500/6PCnxKZZIVRanWb710pNpYVkCSw.jpg',
      'description':
          'Zee is a feared contract killer known as "the Queen of the Dead," but when she refuses to murder a young blind woman, she finds herself hunted both by criminal colleagues and a determined police detective.',
      'duration': 'N/A',
      'genre': 'Action, Thriller, Crime'
    },
    {
      'title': 'Bad Boys: Ride or Die',
      'image':
          'https://image.tmdb.org/t/p/w500/oGythE98MYleE6mZlGs5oBGkux1.jpg',
      'description':
          'After their late former Captain is framed, Lowrey and Burnett try to clear his name, only to end up on the run themselves.',
      'duration': 'N/A',
      'genre': 'Action, Crime, Thriller, Comedy'
    },
    {
      'title': 'Twisters',
      'image':
          'https://image.tmdb.org/t/p/w500/pjnD08FlMAIXsfOLKQbvmO0f0MD.jpg',
      'description':
          'As storm season intensifies, the paths of former storm chaser Kate Carter and reckless social-media superstar Tyler Owens collide when terrifying phenomena never seen before are unleashed. The pair and their competing teams find themselves squarely in the paths of multiple storm systems converging over central Oklahoma in the fight of their lives.',
      'duration': 'N/A',
      'genre': 'Action, Adventure, Thriller'
    },
    {
      'title': 'Trap',
      'image':
          'https://image.tmdb.org/t/p/w500/jwoaKYVqPgYemFpaANL941EF94R.jpg',
      'description':
          'A father and teen daughter attend a pop concert, where they realize they\'re at the center of a dark and sinister event.',
      'duration': 'N/A',
      'genre': 'Crime, Thriller'
    },
  ];

  final List<Map<String, String>> nowInCinemas = [
    // Add your current 'Now in Cinemas' movies here,
    {
      'title': 'Borderlands',
      'image':
          'https://image.tmdb.org/t/p/w500/865DntZzOdX6rLMd405R0nFkLmL.jpg',
      'description':
          'Returning to her home planet, an infamous bounty hunter forms an unexpected alliance with a team of unlikely heroes. Together, they battle monsters and dangerous bandits to protect a young girl who holds the key to unimaginable power.',
      'duration': 'N/A',
      'genre': 'Action, Sci-Fi, Comedy, Adventure, Thriller'
    },
    {
      'title': 'Twilight of the Warriors: Walled In',
      'image': 'https://image.tmdb.org/t/p/w500/PywbVPeIhBFc33QXktnhMaysmL.jpg',
      'description':
          'Set in the 1980s, troubled youth Chan Lok-kwun accidentally enters the Walled City, discovers the order amidst its chaos, and learns important life lessons along the way. In the Walled City, he becomes close friends with Shin, Twelfth Master and AV. Under the leadership of Cyclone, they resist against the invasion of villain Mr. Big in a series of fierce battles. Together, they vow to protect the safe haven that is Kowloon Walled City.',
      'duration': 'N/A',
      'genre': 'Action, Crime, Thriller'
    },
    {
      'title': 'Inside Out 2',
      'image':
          'https://image.tmdb.org/t/p/w500/vpnVM9B6NMmQpWeZvzLvDESb2QY.jpg',
      'description':
          'Teenager Riley\'s mind headquarters is undergoing a sudden demolition to make room for something entirely unexpected: new Emotions! Joy, Sadness, Anger, Fear and Disgust, who’ve long been running a successful operation by all accounts, aren’t sure how to feel when Anxiety shows up. And it looks like she’s not alone.',
      'duration': 'N/A',
      'genre': 'Animation, Family, Adventure, Comedy'
    },
    {
      'title': 'Despicable Me 4',
      'image':
          'https://image.tmdb.org/t/p/w500/wWba3TaojhK7NdycRhoQpsG0FaH.jpg',
      'description':
          'Gru and Lucy and their girls—Margo, Edith and Agnes—welcome a new member to the Gru family, Gru Jr., who is intent on tormenting his dad. Gru also faces a new nemesis in Maxime Le Mal and his femme fatale girlfriend Valentina, forcing the family to go on the run.',
      'duration': 'N/A',
      'genre': 'Animation, Family, Comedy, Action'
    },
    {
      'title': 'Beetlejuice Beetlejuice',
      'image':
          'https://image.tmdb.org/t/p/w500/kKgQzkUCnQmeTPkyIwHly2t6ZFI.jpg',
      'description':
          'After a family tragedy, three generations of the Deetz family return home to Winter River. Still haunted by Beetlejuice, Lydia\'s life is turned upside down when her teenage daughter, Astrid, accidentally opens the portal to the Afterlife.',
      'duration': 'N/A',
      'genre': 'Comedy, Horror, Fantasy'
    },
    {
      'title': 'The Killer',
      'image':
          'https://image.tmdb.org/t/p/w500/6PCnxKZZIVRanWb710pNpYVkCSw.jpg',
      'description':
          'Zee is a feared contract killer known as "the Queen of the Dead," but when she refuses to murder a young blind woman, she finds herself hunted both by criminal colleagues and a determined police detective.',
      'duration': 'N/A',
      'genre': 'Action, Thriller, Crime'
    },
    {
      'title': 'Twisters',
      'image':
          'https://image.tmdb.org/t/p/w500/pjnD08FlMAIXsfOLKQbvmO0f0MD.jpg',
      'description':
          'As storm season intensifies, the paths of former storm chaser Kate Carter and reckless social-media superstar Tyler Owens collide when terrifying phenomena never seen before are unleashed. The pair and their competing teams find themselves squarely in the paths of multiple storm systems converging over central Oklahoma in the fight of their lives.',
      'duration': 'N/A',
      'genre': 'Action, Adventure, Thriller'
    },
    {
      'title': 'Trap',
      'image':
          'https://image.tmdb.org/t/p/w500/jwoaKYVqPgYemFpaANL941EF94R.jpg',
      'description':
          'A father and teen daughter attend a pop concert, where they realize they\'re at the center of a dark and sinister event.',
      'duration': 'N/A',
      'genre': 'Crime, Thriller'
    },
  ];

  final List<Map<String, String>> comingSoon = [
    // Add your upcoming 'Coming Soon' movies here,
    {
      'title': 'Beetlejuice Beetlejuice',
      'image':
          'https://image.tmdb.org/t/p/w500/kKgQzkUCnQmeTPkyIwHly2t6ZFI.jpg',
      'description':
          'After a family tragedy, three generations of the Deetz family return home to Winter River. Still haunted by Beetlejuice, Lydia\'s life is turned upside down when her teenage daughter, Astrid, accidentally opens the portal to the Afterlife.',
      'duration': 'N/A',
      'genre': 'Comedy, Horror, Fantasy'
    },
    {
      'title': 'Trap',
      'image':
          'https://image.tmdb.org/t/p/w500/jwoaKYVqPgYemFpaANL941EF94R.jpg',
      'description':
          'A father and teen daughter attend a pop concert, where they realize they\'re at the center of a dark and sinister event.',
      'duration': 'N/A',
      'genre': 'Crime, Thriller'
    },
    {
      'title': 'Kill',
      'image':
          'https://image.tmdb.org/t/p/w500/m2zXTuNPkywdYLyWlVyJZW2QOJH.jpg',
      'description':
          'When an army commando finds out his true love is engaged against her will, he boards a New Dehli-bound train in a daring quest to derail the arranged marriage. But when a gang of knife-wielding thieves begin to terrorize innocent passengers on his train, the commando takes them on himself in a death-defying kill-spree to save those around him — turning what should have been a typical commute into an adrenaline-fueled thrill ride.',
      'duration': 'N/A',
      'genre': 'Action, Crime'
    },
    {
      'title': 'It Ends with Us',
      'image':
          'https://image.tmdb.org/t/p/w500/4TzwDWpLmb9bWJjlN3iBUdvgarw.jpg',
      'description':
          'When a woman\'s first love suddenly reenters her life, her relationship with a charming, but abusive neurosurgeon is upended, and she realizes she must learn to rely on her own strength to make an impossible choice for her future.',
      'duration': 'N/A',
      ',genre': 'Romance, Drama'
    },
    {
      'title': 'Harold and the Purple Crayon',
      'image':
          'https://image.tmdb.org/t/p/w500/dEsuQOZwdaFAVL26RjgjwGl9j7m.jpg',
      'description':
          'Inside of his book, adventurous Harold can make anything come to life simply by drawing it. After he grows up and draws himself off the book\'s pages and into the physical world, Harold finds he has a lot to learn about real life.',
      'duration': 'N/A',
      'genre': 'Animation, Family'
    },
  ];

  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Popular Movies Section
            sectionTitle('Popular Movies'),
            horizontalMovieList(context, popularMovies),

            // Now in Cinemas Section
            sectionTitle('Now in Cinemas'),
            horizontalMovieList(context, nowInCinemas),

            // Coming Soon Section
            sectionTitle('Coming Soon'),
            horizontalMovieList(context, comingSoon),
          ],
        ),
      ),
    );
  }

  // Helper method for section titles
  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }

  // Helper method to create a horizontal scrolling movie list
  Widget horizontalMovieList(
      BuildContext context, List<Map<String, String>> movies) {
    return SizedBox(
      height: 220, // Adjust height as necessary
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return GestureDetector(
            
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(movie: movie),
                ),
              );
            },
            child: Container(
              width: 150,
              margin: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Hero(
                    tag: movie['title']!,
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.network(
                        movie['image']!,
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    movie['title']!,
                    style: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Map<String, String> movie;

  const DetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie['title']!),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: movie['title']!,
              child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.network(movie['image']!, fit: BoxFit.cover)),
            ),
            const SizedBox(height: 16),
            Text(
              movie['title']!,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '${movie['duration']} | ${movie['genre']}',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            const SizedBox(height: 16),
            Text(
              movie['description']!,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add your ticket booking action here
                },
                child: const Text('Buy Ticket'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
