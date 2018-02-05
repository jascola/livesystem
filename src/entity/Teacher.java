package entity;

public class Teacher {
private Integer tId ;//教师号
private String tName ;//姓名
private String tPassword ;//密码
private String tEmail ;//邮箱
private String tAcademy; //院系
private Integer tFlowers;//鲜花数

public Integer gettId() {
	return tId;
}
public void settId(Integer tId) {
	this.tId = tId;
}
public String gettName() {
	return tName;
}
public void settName(String tName) {
	this.tName = tName;
}
public String gettPassword() {
	return tPassword;
}
public void settPassword(String tPassword) {
	this.tPassword = tPassword;
}
public String gettEmail() {
	return tEmail;
}
public void settEmail(String tEmail) {
	this.tEmail = tEmail;
}
public String gettAcademy() {
	return tAcademy;
}
public void settAcademy(String tAcademy) {
	this.tAcademy = tAcademy;
}
public Integer gettFlowers() {
	return tFlowers;
}
public void settFlowers(Integer tFlowers) {
	this.tFlowers = tFlowers;
}
@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + ((tAcademy == null) ? 0 : tAcademy.hashCode());
	result = prime * result + ((tEmail == null) ? 0 : tEmail.hashCode());
	result = prime * result + ((tFlowers == null) ? 0 : tFlowers.hashCode());
	result = prime * result + ((tId == null) ? 0 : tId.hashCode());
	result = prime * result + ((tName == null) ? 0 : tName.hashCode());
	result = prime * result + ((tPassword == null) ? 0 : tPassword.hashCode());
	return result;
}
@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	Teacher other = (Teacher) obj;
	if (tAcademy == null) {
		if (other.tAcademy != null)
			return false;
	} else if (!tAcademy.equals(other.tAcademy))
		return false;
	if (tEmail == null) {
		if (other.tEmail != null)
			return false;
	} else if (!tEmail.equals(other.tEmail))
		return false;
	if (tFlowers == null) {
		if (other.tFlowers != null)
			return false;
	} else if (!tFlowers.equals(other.tFlowers))
		return false;
	if (tId == null) {
		if (other.tId != null)
			return false;
	} else if (!tId.equals(other.tId))
		return false;
	if (tName == null) {
		if (other.tName != null)
			return false;
	} else if (!tName.equals(other.tName))
		return false;
	if (tPassword == null) {
		if (other.tPassword != null)
			return false;
	} else if (!tPassword.equals(other.tPassword))
		return false;
	return true;
}
@Override
public String toString() {
	return "Teacher [tId=" + tId + ", tName=" + tName + ", tPassword=" + tPassword + ", tEmail=" + tEmail
			+ ", tAcademy=" + tAcademy + ", tFlowers=" + tFlowers + "]";
}
public Teacher(Integer tId, String tName, String tPassword, String tEmail, String tAcademy, Integer tFlowers) {
	super();
	this.tId = tId;
	this.tName = tName;
	this.tPassword = tPassword;
	this.tEmail = tEmail;
	this.tAcademy = tAcademy;
	this.tFlowers = tFlowers;
}

public Teacher() {
	super();
	// TODO Auto-generated constructor stub
}
}
