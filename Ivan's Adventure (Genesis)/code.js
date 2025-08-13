onEvent("button37", "click", function( ) {
  stopSound("assets/Game-over-2.mp3");
  playSound("assets/House.mp3", true);
  setScreen("House");
});
//Intro
onEvent("image44", "click", function( ) {
  stopSound("assets/Shocked_sound_effect.mp3");
  playSound("assets/Shocked_sound_effect.mp3", false);
});
onEvent("image43", "click", function( ) {
  stopSound("assets/Ohhh-My-God-Sound-effect.mp3");
  playSound("assets/Ohhh-My-God-Sound-effect.mp3", false);
});
playSound("assets/Intro.mp3", true);
onEvent("button54", "click", function( ) {
  playSound("assets/House.mp3", true);
  setScreen("House");
  stopSound("assets/Intro.mp3");
});
onEvent("button47", "click", function( ) {
  showElement("button54");
});
onEvent("button52", "click", function( ) {
  setScreen("Soundtracklistener");
  stopSound("assets/Intro.mp3");
});
//game over screen of death
onEvent("label19", "click", function( ) {
  playSpeech("You are really stupid", "male", "English");
});
//Start Of the game
onEvent("button2", "click", function( ) {
  stopSound("assets/House.mp3");
  playSound("assets/Gamer-over.mp3", true);
  setScreen("Gameover1");
});
onEvent("button5", "click", function( ) {
  stopSound("assets/Gamer-over.mp3");
  playSound("assets/House.mp3", true);
  setScreen("House");
});
onEvent("button19", "click", function( ) {
  playSpeech("Hello Ivan. How are you doing?", "female", "English (UK)");
  hideElement("button2");
  hideElement("button19");
  showElement("button21");
  showElement("button22");
});
onEvent("button21", "click", function( ) {
  hideElement("button22");
  hideElement("button21");
  playSpeech("I'm doing good. Thank you for asking!", "female", "English (UK)");
  showElement("button29");
  showElement("button13");
  showElement("button30");
});
onEvent("button13", "click", function( ) {
  hideElement("button29");
  hideElement("button13");
  hideElement("button30");
  showElement("button19");
  showElement("button2");
  showElement("label16");
  playSpeech("Yeah sure. Oh! and don't forget the shortcut of clicking a tree!", "female", "English (UK)");
});
onEvent("button30", "click", function( ) {
  hideElement("button30");
  hideElement("button29");
  hideElement("button13");
  showElement("button19");
  showElement("button2");
});
onEvent("button29", "click", function( ) {
  hideElement("button13");
  hideElement("button30");
  hideElement("button29");
  showElement("button19");
  showElement("button2");
  playSpeech("Oh ok. have a great walk I guess.", "female", "English (UK)");
});
onEvent("button22", "click", function( ) {
  hideElement("button22");
  hideElement("button21");
  showElement("button2");
  playSpeech("No, I don't want to go with you.", "female", "English (UK)");
  showElement("button19");
});
//Soundtrack Listiner
onEvent("button3", "click", function( ) {
  stopSound("assets/House.mp3");
  setScreen("Soundtracklistener");
});
onEvent("button7", "click", function( ) {
  stopSound("assets/Gamer-over.mp3");
  stopSound("assets/elatrednu.mp3");
  stopSound("assets/House.mp3");
  stopSound("assets/Fight.mp3");
  stopSound("assets/Game-over-2.mp3");
  playSound("assets/House.mp3", true);
});
onEvent("button8", "click", function( ) {
  stopSound("assets/elatrednu.mp3");
  stopSound("assets/House.mp3");
  stopSound("assets/Gamer-over.mp3");
  stopSound("assets/Game-over-2.mp3");
  stopSound("assets/Fight.mp3");
  playSound("assets/Gamer-over.mp3", true);
});
onEvent("button9", "click", function( ) {
  stopSound("assets/House.mp3");
  stopSound("assets/Gamer-over.mp3");
  stopSound("assets/elatrednu.mp3");
  stopSound("assets/Fight.mp3");
  stopSound("assets/Game-over-2.mp3");
  playSound("assets/elatrednu.mp3", true);
});
onEvent("button15", "click", function( ) {
  stopSound("assets/Gamer-over.mp3");
  stopSound("assets/House.mp3");
  stopSound("assets/elatrednu.mp3");
  stopSound("assets/Game-over-2.mp3");
  stopSound("assets/Fight.mp3");
  playSound("assets/Fight.mp3", true);
});
onEvent("button16", "click", function( ) {
  stopSound("assets/elatrednu.mp3");
  stopSound("assets/Gamer-over.mp3");
  stopSound("assets/House.mp3");
  stopSound("assets/Game-over-2.mp3");
  stopSound("assets/Fight.mp3");
  playSound("assets/Game-over-2.mp3", true);
});
onEvent("button11", "click", function( ) {
  stopSound("assets/Gamer-over.mp3");
  stopSound("assets/elatrednu.mp3");
  stopSound("assets/House.mp3");
  setScreen("House");
  stopSound("assets/Fight.mp3");
  stopSound("assets/Game-over-2.mp3");
  playSound("assets/House.mp3", true);
});
onEvent("button23", "click", function( ) {
  stopSound("assets/Gamer-over.mp3");
  stopSound("assets/Game-over-2.mp3");
  stopSound("assets/elatrednu.mp3");
  stopSound("assets/House.mp3");
  stopSound("assets/Fight.mp3");
});
//Outside 1
onEvent("label2", "click", function( ) {
  playSpeech("Huh? why is there futuristic  robots here in a open world? I need to see what's happening. but first.", "male", "English");
});
onEvent("button1", "click", function( ) {
  stopSound("assets/House.mp3");
  playSound("assets/elatrednu.mp3", true);
  hideElement("label16");
  setScreen("OutOfHouse");
});
onEvent("button", "click", function( ) {
  setScreen("Fight1AboutToHappen");
});
onEvent("button14", "click", function( ) {
  stopSound("assets/elatrednu.mp3");
  playSound("assets/House.mp3", false);
  setScreen("House");
});
onEvent("button31", "click", function( ) {
  setScreen("poopeyes");
});
onEvent("button32", "click", function( ) {
  stopSound("assets/elatrednu.mp3");
  playSound("assets/Ivan-Theme.mp3", false);
  setScreen("poopeyes2");
});
onEvent("button33", "click", function( ) {
  stopSound("assets/Ivan-Theme.mp3");
  playSound("assets/Song.mp3", true);
  setScreen("HouseWithChicken!");
});
onEvent("button34", "click", function( ) {
  stopSound("assets/Song.mp3");
  playSound("assets/House.mp3", true);
  setScreen("House");
});
//Fight1
onEvent("button4", "click", function( ) {
  stopSound("assets/elatrednu.mp3");
  playSound("assets/Fight.mp3", true);
  setScreen("fight1");
});
onEvent("button10", "click", function( ) {
  showElement("button27");
  showElement("button26");
  hideElement("label27");
});
onEvent("button27", "click", function( ) {
  hideElement("button27");
  hideElement("button26");
  setScreen("fight1act");
});
onEvent("button26", "click", function( ) {
  hideElement("button27");
  hideElement("button26");
  showElement("label27");
});
onEvent("button17", "click", function( ) {
  setScreen("Fight1act2");
});
onEvent("button18", "click", function( ) {
  stopSound("assets/Fight.mp3");
  playSound("assets/Game-over-2.mp3", true);
  setScreen("Gameover2");
});
onEvent("button48", "click", function( ) {
  setScreen("fight1attack");
});
onEvent("button49", "click", function( ) {
  setScreen("fight1win");
  stopSound("assets/Fight.mp3");
  playSound("assets/WIn-theme.mp3", true);
  playSpeech("You won!. You got 10 xp from Kale. plus 1 level!", "female", "English");
});
onEvent("button46", "click", function( ) {
  setScreen("fight1act");
});
onEvent("button45", "click", function( ) {
  showElement("label43");
  hideElement("button45");
  hideElement("button46");
});
onEvent("button44", "click", function( ) {
  showElement("button46");
  showElement("button45");
});
onEvent("button43", "click", function( ) {
  showElement("button48");
  showElement("button49");
});
onEvent("button6", "click", function( ) {
  showElement("button41");
  showElement("button42");
});
onEvent("button41", "click", function( ) {
  setScreen("fight1attack");
});
onEvent("button42", "click", function( ) {
  setScreen("punch1");
});
onEvent("button24", "click", function( ) {
  stopSound("assets/Fight.mp3");
  playSound("assets/WIn-theme.mp3", true);
  playSpeech("You won!. You got 10 xp from Kale. plus 1 level!", "female", "English");
  setScreen("fight1win");
});
onEvent("button25", "click", function( ) {
  stopSound("assets/WIn-theme.mp3");
  playSound("assets/Music.mp3", true);
  setScreen("fight2abouttohappen");
});
//fight2
onEvent("button12", "click", function( ) {
  stopSound("assets/Music.mp3");
  playSound("assets/Fight.mp3", true);
  setScreen("Fight2");
});
onEvent("button51", "click", function( ) {
  setScreen("fight2sword");
});
onEvent("button59", "click", function( ) {
  playSound("assets/boom.mp3", false);
  setScreen("fight2sword2");
});
onEvent("button60", "click", function( ) {
  stopSound("assets/Fight.mp3");
  playSound("assets/Game-over-2.mp3", true);
  setScreen("Gameover2");
});
onEvent("button38", "click", function( ) {
  setScreen("shoo!");
});
//???
onEvent("button28", "click", function( ) {
  setScreen("???1");
  stopSound("assets/Fight.mp3");
  playSound("assets/Soundtrack-secret-song.mp3", false);
});
onEvent("image22", "click", function( ) {
  stopSound("assets/Soundtrack-secret-song.mp3");
  setScreen("fight1win");
  playSound("assets/Win.mp3", true);
});
onEvent("button36", "click", function( ) {
  showElement("button38");
  showElement("button51");
});
onEvent("button20", "click", function( ) {
  stopSound("assets/Fight.mp3");
  playSound("assets/WIn-theme.mp3", true);
  playSpeech("You won! You got 20 xp from Little Lads. plus 1 level.", "female", "English");
  setScreen("Fight2Win");
});
// END 
onEvent("button35", "click", function( ) {
  stopSound("assets/WIn-theme.mp3");
  playSound("assets/FunniSong1.mp3", true);
  playSpeech("Thanks for playing! But please play the real game on scratch!", "male", "English");
  setScreen("Win");
});
onEvent("button39", "click", function( ) {
  stopSound("assets/FunniSong1.mp3");
  playSound("assets/Intro.mp3", true);
  hideElement("button54");
  setScreen("Intro1");
});
