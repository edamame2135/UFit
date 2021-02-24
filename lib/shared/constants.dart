import 'package:pretty/models/workout.dart';
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
    Workout(id: 1, name: "Bench Press", description: "Push bar up i guess", imagepath: "path")
  ],
  "Cardio": [
    Workout(id: 2, name: "Running", description: "run i guess", imagepath:"path")
  ],
  "Weight Training": [
    Workout(id: 3, name: "Curls", description: "lift", imagepath: "path")
  ],
  "Sports": [
    Workout(id: 4, name: "Football", description: "footbal", imagepath: "path")
  ],
  "Flexibility Training": [
    Workout(id: 5, name: "Butterflies", description: "stretchyy", imagepath: "path")
  ],
};
