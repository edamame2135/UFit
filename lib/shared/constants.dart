//workout constants
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
    Workout(1, "Bench Press", "Push bar up i guess", "path")
  ],
  "Cardio": [
    Workout(2, "Running", "run i guess", "path")
  ],
  "Weight Training": [
    Workout(3, "Curls", "lift", "path")
  ],
  "Sports": [
    Workout(4, "Football", "footbal", "path")
  ],
  "Flexibility Training": [
    Workout(5, "Butterflies", "stretchyy", "path")
  ],
};

class Workout {
  final int wid; // workout id
  final String name;
  final String desc;
  final String imagepath;

  const Workout(this.wid, this.name, this.desc, this.imagepath);
}