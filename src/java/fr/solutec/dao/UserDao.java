/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.bean.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Joel B
 */
public class UserDao {

    public static User getByLoginPass(String login, String mdp) throws SQLException {
        User resultat = null;

        String sql = "SELECT * FROM user WHERE mail=?AND mdp=?";
        Connection connexion = AccessBD.getConnection();

        PreparedStatement requette = connexion.prepareStatement(sql);
        requette.setString(1, login);
        requette.setString(2, mdp);

        ResultSet rs = requette.executeQuery();

        if (rs.next()) {
            resultat = new User();
            resultat.setId(rs.getInt("iduser"));
            resultat.setNom(rs.getString("nom"));
            resultat.setPrenom(rs.getString("prenom"));
            resultat.setMail(rs.getString("mail"));
        }
        return resultat;
    }

    public static void insert(User person) throws SQLException {
        String sql = "INSERT INTO user (nom, prenom, mail, mdp) VALUES (?, ?, ?, ?)";
        Connection connexion = AccessBD.getConnection();
        PreparedStatement requette = connexion.prepareStatement(sql);
        requette.setString(1, person.getNom());
        requette.setString(2, person.getPrenom());
        requette.setString(3, person.getMail());
        requette.setString(4, person.getMdp());

        requette.execute();
    }

    public static List<User> getAllUsers() throws SQLException {
        List<User> result = new ArrayList<>();

        String sql = "SELECT * FROM user";
        Connection connexion = AccessBD.getConnection();

        Statement requette = connexion.createStatement();

        ResultSet rs = requette.executeQuery(sql);

        while (rs.next()) {
            User u = new User();
            u.setId(rs.getInt("iduser"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setMail(rs.getString("mail"));

            result.add(u);
        }

        return result;
    }

}
