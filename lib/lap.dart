enum lapType {
  walk,
  run,
  cooldown
}
class Lap {
  final lapType _type;
  final int duration;

  Lap(this._type, this.duration);
  
}