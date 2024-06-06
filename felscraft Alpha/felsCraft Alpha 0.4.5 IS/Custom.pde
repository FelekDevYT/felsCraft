class Custom implements BSL_mod {
  BSL basic = new BSL();
  public void register() {
    basic.register_BSL(true);
    basic.register_mod("exemplemod");
  }

  public void mod() {
    println("Fels mod loaded!");
    basic.registration_block((byte)10, "tea", color(0, 64, 0));
    basic.generation_block((byte)10, (byte)6, 0, 14);
    basic.generation_biome(15,17,11,9,8,12,14,9,13,1);//forest level(forest port for Basic Script Loader)
  }

  public void Start() {
    register();
    mod();
  }
}
