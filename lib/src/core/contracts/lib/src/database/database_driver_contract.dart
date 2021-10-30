abstract class DatabaseDriverContract 
{
  Future connect();

  Future close();
}