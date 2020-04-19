class Energy {
  int joules;

  Energy(this.joules);

  Energy .fromWind(int windBlows){
    final joules = _convertWindToEnergy(windBlows);
    Energy(joules);
  }

  int _convertWindToEnergy(int c){
    return c * 4;
  }


}