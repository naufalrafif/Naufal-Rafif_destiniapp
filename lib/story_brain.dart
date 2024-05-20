import 'story.dart';

//TOTO: Step 5 - membuat class StoryBrain
class StoryBrain {
  //TODO: Step 7 - membuat storyData sebagai private properties
  final List<Story> _storyData = [
    Story(
        storyTitle:
        'You are Khadija, a successful businesswoman in Mecca. You hear rumors about a newborn named Muhammad, known as the "Praised One." Curiosity stirs within you. What do you do?.',
        choice1: 'Seek out his family and learn more about this special child.',
        choice2: 'Focus on your business, dismissing the rumors as mere gossip..'),
    Story(
        storyTitle: 'Years pass. Muhammad SAW is known for his honesty and trustworthiness. You, Khadija (RA), need someone reliable to manage your caravans. Who do you choose?',
        choice1: 'Muhammad SAW, based on his reputation for integrity..',
        choice2: 'A more established merchant, despite the risk of dishonesty.'),
    Story(
        storyTitle:
        'Muhammad (PBUH) is known for seeking solitude in prayer. One night, he receives a revelation from Angel Gabriel (AS) on the mountain. What do you do when he returns, shaken but determined?',
        choice1: 'Offer support and listen to his incredible experience.',
        choice2: 'Doubt his words and question his sanity.'),
    Story(
        storyTitle:
        'Muhammad (PBUH) begins sharing his message of one God and just treatment for all. A few close friends, including Khadija (RA), embrace his teachings. What do you do?',
        choice1: 'Stand by Muhammad (PBUH) and believe in his message.',
        choice2: 'Fear the potential consequences of defying established traditions.'),
    Story(
        storyTitle:
        'Years of persecution force Muslims to leave Mecca for Medina. You, Khadija (RA), are old and cannot make the journey. What message do you send with Muhammad (PBUH)?',
        choice1: 'A message of unwavering faith and hope for the future.',
        choice2:'A message of despair and fear for the unknown.'),
    Story(
        storyTitle:
        'Years later, performing the Hajj pilgrimage, Muhammad (PBUH) delivers his final sermon. He emphasizes unity, forgiveness, and justice. What do you take away from his message?',
        choice1: 'A renewed commitment to living by the Prophet teachings',
        choice2: 'A sense of relief that the journey is nearing its end'),
  ];

  //TODO: Step 8 - membuat method getStory() yang return first storyTitle dari _storyData.
  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  //TODO: Step 11 membuat method getChoice1 yang returnnya adalah choice1 dari _storyData
  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  //TODO: Step 12 membuat method getChoice1 yang returnnya adalah choice2 dari _storyData
  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  //TODO: Step 16 - Membuat property storyNumber yang dimulai dari nol (0).
  // Digunakan untuk tracking story yang sedang dilihat

  //TODO: Step 25 - ganti storyNumber property ke private property sehingga hanya
  // story_brain.dart yang bisa mengakses
  int _storyNumber = 0;

  void restart() {
    _storyNumber = 0;
  }

  //TODO: Step 17 - membuat method nextStory()
  void nextStory(int choiceNumber) {
    //TODO: Step 21 - menggunakan story plan, update nextStory ganti storyNumber
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    }

    //TODO: Step 22 - di nextStory() jika storyNumber 3 atau 4 atau 5,
    // artinya game berakhir dan panggil method restart()
    else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  //TODO: Step 27 - membuat method buttonShouldBeVisible() untuk mengecek apakah storyNumber is 0 or 1 or 2
  bool buttonShouldBeVisible() {
    //You could also just check if (_storyNumber < 3)
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}