package paincare.dao.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import paincare.dao.DAOFactory;
import paincare.dao.TestDao;
import paincare.entities.TestEntity;
import paincare.entities.UserEntity;

public class TestDaoImp implements TestDao{
	private DAOFactory daoFactory;

    public TestDaoImp(DAOFactory daoFactory) {

        this.daoFactory = daoFactory;
    }
    
    private static TestEntity map( ResultSet resultSet ) throws SQLException {
        TestEntity testEntity = new TestEntity();

        testEntity.setIdUser(resultSet.getInt("id"));
        testEntity.setIdUser(resultSet.getInt("iduser"));
        testEntity.setResultatTest(resultSet.getString("resultatTest"));
        //System.out.println(userEntity);
        return testEntity;
    }
    public static PreparedStatement initRequestPrepare( Connection connexion, String sql, Object... objets ) throws SQLException {
        PreparedStatement preparedStatement = connexion.prepareStatement( sql );
        for ( int i = 0; i < objets.length; i++ ) {
            preparedStatement.setObject( i + 1, objets[i] );
        }
        return preparedStatement;
    }

	@Override
	public void saveResultatTest(TestEntity test) {
		// TODO Auto-generated method stub
		try (Connection connection = daoFactory.getConnection()) {
            String sql = "INSERT INTO test (iduser, resultatTest) VALUES (?, ?)";
            try (PreparedStatement preparedStatement = initRequestPrepare(connection, sql, test.getIdUser(),
                    test.getResultatTest())) {
                preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace(); // À remplacer par une gestion appropriée des exceptions dans un environnement de production
        }
	}

	@Override
	public TestEntity afficherDernierResultatTestByIdUser(int idUser) {
		// TODO Auto-generated method stub
		 TestEntity dernierResultat = null;
	        try (Connection connection = daoFactory.getConnection()) {
	            String sql = "SELECT * FROM test WHERE iduser = ? ORDER BY id DESC LIMIT 1";
	            try (PreparedStatement preparedStatement = initRequestPrepare(connection, sql, idUser);
	                    ResultSet resultSet = preparedStatement.executeQuery()) {
	                if (resultSet.next()) {
	                    dernierResultat = map(resultSet);
	                }
	            }
	        } catch (SQLException e) {
	            e.printStackTrace(); // À remplacer par une gestion appropriée des exceptions dans un environnement de production
	        }
	        return dernierResultat;
	    }
	
    
}
