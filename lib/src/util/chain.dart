T chain<T>(T thisRef, Function fn) {
  fn();
  return thisRef;
}
