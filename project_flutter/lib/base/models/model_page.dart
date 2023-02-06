class ModelPage{
  String name;
  String path;
  int status;

  ModelPage(this.name, this.path, this.status);




  static List<ModelPage> getList(){

    List<ModelPage> listModelPage =[];
    listModelPage.add(ModelPage('Home page','homge-page',0));
    listModelPage.add(ModelPage('Profile page','profile-page',0));
    listModelPage.add(ModelPage('Shop page','shop-page',0));
    listModelPage.add(ModelPage('Login page','login-page',0));


    return listModelPage;
  }
}