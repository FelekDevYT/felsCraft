class Custom implements BSL_mod {
  BSL basic = new BSL();
  public void register() {
    basic.register_BSL(true);
    basic.register_mod("exemplemod");
  }

  public void mod() {
    basic.registration_block((byte)10, "tea", color(0, 64, 0));
    basic.generation_block((byte)10, (byte)6, 0, 14);
  }

  public void Start() {
    register();
    mod();
  }
}
