const WORKOUT_DATA = [
  {
    "name": "What's Hot",
    "image": "ayy what"
  },
  {
    "name": "Cardio",
    "image": "huh what",
  },
  {
    "name": "Weight Training",
    "image": "huh what"
  },
  {
    "name": "Sports",
    "image": "porawerwa"
  },
  {
    "name": "Flexibility Training",
    "image": "porawerwa"
  },
];

const WORKOUT_CATELOG = 
{
  "What's Hot": [
    Workout("Bench Press", "Push bar up i guess", "path")
  ],
  "Cardio": [
    Workout("Running", "run i guess", "path")
  ],
  "Weight Training": [
    Workout("Curls", "lift", "path")
  ],
  "Sports": [
    Workout("Football", "footbal", "path")
  ],
  "Flexibility Training": [
    Workout("Butterflies", "stretchyy", "path")
  ],
};

class Workout {
  final String name;
  final String desc;
  final String imagepath;

  const Workout(this.name, this.desc, this.imagepath);
}