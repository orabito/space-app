class Planet {
  String spaceName;
  String image;
  String model;
  String title;
  String about;
  String distanceFromSun;
  String lengthOfDay;
  String orbitalPeriod;
  String radius;
  String mass;
  String gravity;
  String surfaceArea;

  Planet({
    required this.image,
    required this.spaceName,
    required this.model,
    required this.title,
    required this.about,
    required this.distanceFromSun,
    required this.gravity,
    required this.lengthOfDay,
    required this.mass,
    required this.orbitalPeriod,
    required this.radius,
    required this.surfaceArea,
  });
   static List<Planet> planets = [
    Planet(
      image: "sun.png",
      spaceName: "Sun",
      title: "The Sun: Our Solar System's Star",
      about:
      "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
      distanceFromSun: "0",
      lengthOfDay: "0",
      gravity: "274",
      mass: "1.989 × 10³⁰",
      orbitalPeriod: "0",
      radius: "695700",
      surfaceArea: "6.09 × 10¹²",
      model: 'sun.glb',
    ),
    Planet(
      image: "mercury.png",
      spaceName: "Mercury",
      title: "Mercury: The Closest Planet",
      about:
      "Mercury is the smallest planet in our solar system and closest to the Sun. Its surface is heavily cratered, and it has no significant atmosphere, making it subject to extreme temperature variations.",
      distanceFromSun: "57909227",
      lengthOfDay: "1407.6",
      gravity: "3.7",
      mass: "3.301 × 10²³",
      orbitalPeriod: "0.24",
      radius: "2439.7",
      surfaceArea: "7.48 × 10⁷",
      model: 'mercury.glb',
    ),
    Planet(
      model: "venus.glb",
      image: "venus.png",
      spaceName: "Venus",
      title: "Venus: Earth's Toxic Twin",
      about:
      "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead.",
      distanceFromSun: "108209072",
      lengthOfDay: "5832.2",
      gravity: "8.87",
      mass: "4.867 × 10²⁴",
      orbitalPeriod: "0.62",
      radius: "6051.8",
      surfaceArea: "4.60 × 10⁸",
    ),
    Planet(
      image: "earth.png",
      spaceName: "Earth",
      title: "Earth: Our Blue Marble",
      about:
      "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
      distanceFromSun: "149598026",
      lengthOfDay: "23.93",
      gravity: "9.81",
      mass: "5.972 × 10²⁴",
      orbitalPeriod: "1",
      radius: "6371",
      surfaceArea: "5.10 × 10⁸",
      model: 'earth.glb',
    ),
    Planet(
      image: "mars.png",
      spaceName: "Mars",
      title: "Mars: The Red Planet",
      about:
      "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate.",
      distanceFromSun: "227943824",
      lengthOfDay: "24.62",
      gravity: "3.71",
      mass: "6.417 × 10²³",
      orbitalPeriod: "1.88",
      radius: "3389.5",
      surfaceArea: "1.44 × 10⁸",
      model: 'mars.glb',
    ),
    Planet(
      image: "jupiter.png",
      spaceName: "Jupiter",
      title: "Jupiter: The Gas Giant",
      about:
      "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere.",
      distanceFromSun: "778547669",
      lengthOfDay: "9.92",
      gravity: "24.79",
      mass: "1.898 × 10²⁷",
      orbitalPeriod: "11.86",
      radius: "69911",
      surfaceArea: "6.14 × 10¹⁰",
      model: 'jupiter.glb',
    ),
    Planet(
      image: "saturn.png",
      spaceName: "Saturn",
      title: "Saturn: The Ringed Planet",
      about:
      "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance.",
      distanceFromSun: "1426666422",
      lengthOfDay: "10.66",
      gravity: "10.44",
      mass: "5.683 × 10²⁶",
      orbitalPeriod: "29.46",
      radius: "58232",
      surfaceArea: "4.27 × 10¹⁰",
      model: 'saturn.glb',
    ),
    Planet(
        image: "uranus.png",
      spaceName: "Uranus",
      title: "Uranus: The Tilted Planet",
      about:
      "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain.",
      distanceFromSun: "2870990000",
      lengthOfDay: "17.24",
      gravity: "8.69",
      mass: "8.681 × 10²⁵",
      orbitalPeriod: "84.01",
      radius: "25362",
      surfaceArea: "8.08 × 10⁹",
      model: 'uranus.glb',
    ),
    Planet(
      image: "neptune.png",
      spaceName: "Neptune",
      title: "Neptune: The Distant World",
      about:
      "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane.",
      distanceFromSun: "4498252900",
      lengthOfDay: "16.11",
      gravity: "11.15",
      mass: "1.024 × 10²⁶",
      orbitalPeriod: "164.8",
      radius: "24622",
      surfaceArea: "7.64 × 10⁹",
      model: 'neptune.glb',
    ),
  ];
}

