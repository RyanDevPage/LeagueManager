package application;

import java.net.URL;
import java.text.DecimalFormat;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.control.ListView;
import javafx.scene.control.TextField;
import javafx.scene.control.TextInputControl;

public class Controller implements Initializable {
	
	@FXML
	private ListView<String> listView;
	
	@FXML
	private Label myLabel;
	
	String[] result = {};
	
	@Override
	public void initialize(URL arg0, ResourceBundle arg1) {
		listView.getItems().addAll(result);
		
	}
	
	
}
