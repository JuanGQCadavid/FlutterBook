class LoggerV2 {
  final String name;
  bool mute = false;

  // As it is static it is define a class level
  // It does no change when creating a new object
  // See this as a global variable that belongs
  // to the class, but an object
  static final Map<String, LoggerV2> _cache =
      <String, LoggerV2>{
          "default": new LoggerV2._internalLogger("default")
      };
  // Why this {} ? -> for defining elements.

  /*
    This factory works more than a warehouse of loggers

    The factory itself is a code pattern, it is design for
    returning subtypes of this class as a builder.
   */
  factory LoggerV2(String name){
    if (_cache.containsKey(name)){ // If the logger is already
      return _cache[name]; // Then return it.
    }else{
      final logger = LoggerV2._internalLogger(name); // Otherwise, just create one as final
      _cache[name] = logger; // Assign a logger to tha name and
      return logger; // return it.
    }
  }

  // Internal constructor
  // _ stands for private but just a formal way
  // there is no private on dart.
  LoggerV2._internalLogger(this.name);



}
