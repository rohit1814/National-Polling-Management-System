/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nationalpolling;

import java.awt.BorderLayout;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTable;

/**
 *
 * @author rohit
 */
public class CandidateInformation {
    
    private boolean status;
    

	public CandidateInformation() {

		// Creating Window using JFrame
		JFrame frame = new JFrame();
		frame.setTitle("Candidate Information Table");
		frame.setSize(800, 500);

		// Adding Table View
		frame.add(getTablePanel());

		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setVisible(true);
	}

   /* CandidateInformation() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }*/

	private JPanel getTablePanel() {

		JPanel tableJPanel = new JPanel();
		
		tableJPanel.setLayout(new BorderLayout());
		
		// Column Header
		String[] columns = {

		"C_Id", "FirstName", "LastName","Party", "City","State","ContactNo", "Address","Email" };

		// Getting Data for Table from Database
		Object[][] data = getCandidateInformation();

		// Creating JTable object passing data and header
		JTable candidateTable = new JTable(data, columns);
		
		
		tableJPanel.add(candidateTable.getTableHeader(), BorderLayout.NORTH);
		tableJPanel.add(candidateTable, BorderLayout.CENTER);
		
		return tableJPanel;
	}

	private Object[][] getCandidateInformation() {

		Object[][] data = null;

		
		

		try{
                        Statement st = DatabaseHelper.connect();
                        String QUERY = "SELECT C_Id,FirstName,LastName,Party,City,State,ContactNo,Address,Email FROM Candidate_Reg";
			ResultSet rs = st.executeQuery(QUERY);

			int rowCount = getRowCount(rs); // Row Count
			int columnCount = getColumnCount(rs); // Column Count

			data = new Object[rowCount][columnCount];

			// Starting from First Row for Iteration
			rs.beforeFirst();

			int i = 0;
			
			while (rs.next()) {

				int j = 0;

				data[i][j++] = rs.getInt("C_Id");
				data[i][j++] = rs.getString("FirstName");
				data[i][j++] = rs.getString("LastName");
				data[i][j++] = rs.getString("Party");
				data[i][j++] = rs.getString("City");
                                data[i][j++] = rs.getString("State");
                                data[i][j++] = rs.getString("ContactNo");
                                data[i][j++] = rs.getString("Address");
                                data[i][j++] = rs.getString("Email");
				i++;
			}

			status = true;
		} catch (Exception e) {

			e.printStackTrace();
		}

		return data;
	}

	// Method to get Row Count from ResultSet Object
	private int getRowCount(ResultSet rs) {

		try {
			
			if(rs != null) {
				
				rs.last();
				
				return rs.getRow(); 
			}
			
		} catch (SQLException e) {

			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		
		return 0;
	}

	// Method to get Column Count from ResultSet Object
	private int getColumnCount(ResultSet rs) {

		try {

			if(rs != null)
				return rs.getMetaData().getColumnCount();

		} catch (SQLException e) {

			System.out.println(e.getMessage());
			e.printStackTrace();
		}

		return 0;
	}

	@Override
	public String toString() {
		
		return (status) ? "Data Listed Successfully" : "Application Error Occured";
	}
	
	/*public static void main(String[] args) {

		String title = "Candidate Information Table";

		 CandidateInformation candidateInformation = new CandidateInformation(title);

		System.out.println(candidateInformation);
	}*/

    void setVisible(boolean b) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
}
