class Pizza {
  String cheese = 'cheddar';
}

/// How would you make cheese private?
/// How would you make it a global variable?
/// When should you use globals?

/// solution

class PizzaAns {
  // ignore: unused_field
  String _cheese = 'cheddar'; // now private
}

/// 2. move the cheese outside of class that will global variable
/// 3. add const[better] then use global or [singletons]

const String cheese = "cheddar";
