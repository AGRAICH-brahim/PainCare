package paincare.dao;
import paincare.entities.TestEntity;

public interface TestDao {
	 void saveResultatTest(TestEntity test);

	    TestEntity afficherDernierResultatTestByIdUser(int idUser);
}
