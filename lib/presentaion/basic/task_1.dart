/// Convert makeMilkshake() to a getter called milkshake using the shorthand “fat arrow” syntax.
library;

class Recipe {
  int cows;
  int trampolines;

  Recipe(this.cows, this.trampolines);

  int makeMilkshake() {
    return cows + trampolines;
  }
}

// solution

class RecipeAns {
  int cows;
  int trampolines;

  RecipeAns(this.cows, this.trampolines);

 int get makeMilkshake => cows + trampolines;

}

