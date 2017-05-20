<%@


String db_url = "jdbc:oracle:thin:@sgremedydb.scigames.at:7262:remdydb";
String db_usr = "usr";
String db_pw = "pwd";

Connection conn;

try {
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());

conn = DriverManager.getConnection(db_url, db_usr, db_pw);
String call = "{ ? = call split_rc_worklog_to_ref_all (P_REMEDY_NR => ? " +
" , P_ISSUE_TYP => ?) } ";
CallableStatement cstmt = conn.prepareCall(call);
cstmt.setQueryTimeout(1800);
cstmt.registerOutParameter(1, OracleTypes.CURSOR);
cstmt.setString(2, remedy_nr);
cstmt.setString(3, issuetyp);
cstmt.executeUpdate();
ResultSet rset = (ResultSet)cstmt.getObject (1);
//System.out.println("From RD" + Remedy_id + " to " + jira_id);
// Dump the cursor

while (rset.next ())
{
String Worklog = rset.getString("WORKLOG");
comment_for_admins = false;
String newdate = new SimpleDateFormat("dd.MM.yyyy hh:mm:ss").format(rset.getTimestamp("DATUM"));
}

// Close all the resources
cstmt.close();
rset.close();
conn.close();
} catch (Exception e) {
// TODO Auto-generated catch block
e.printStackTrace();
}


    %>
