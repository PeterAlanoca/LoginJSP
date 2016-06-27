package model;

import com.mysql.jdbc.PreparedStatement;
import com.sun.xml.messaging.saaj.soap.SAAJMetaFactoryImpl;
import conf.database.Conexion;

import java.sql.ResultSet;

public class LoginModel extends Conexion{
    
    public boolean autenticacion(String username, String password){
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            String query = "select * from usuario where username = ? and password = ?";
            statement = (PreparedStatement) getConnection().prepareStatement(query);
            statement.setString(1, username);
            statement.setString(2, password);
            resultSet = statement.executeQuery();
            if (resultSet.absolute(1)) {
                return true;
            }
            
        } catch (Exception e) {
            System.out.print(e);
        } finally {
            try {
                if (getConnection() != null) {getConnection().close();}
                if (statement != null) {statement.close();}
                if (resultSet != null) {resultSet.close();}
            } catch (Exception e) {
                System.out.print(e);
            }
        }
        return false;
    }
    
   
    
}
