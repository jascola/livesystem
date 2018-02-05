package entity;

public class Student {
private Integer sId;//学生号
private String sName;//姓名
private String sPassword;//密码
private String sAcademy;//院系
private String sEmail;//邮箱
private Integer sState;//在线状态

public Integer getsId() {
	return sId;
}
public void setsId(Integer sId) {
	this.sId = sId;
}
public String getsName() {
	return sName;
}
public void setsName(String sName) {
	this.sName = sName;
}
public String getsPassword() {
	return sPassword;
}
public void setsPassword(String sPassword) {
	this.sPassword = sPassword;
}
public String getsAcademy() {
	return sAcademy;
}
public void setsAcademy(String sAcademy) {
	this.sAcademy = sAcademy;
}
public String getsEmail() {
	return sEmail;
}
public void setsEmail(String sEmail) {
	this.sEmail = sEmail;
}
public Integer getsState() {
	return sState;
}
public void setsState(Integer sState) {
	this.sState = sState;
}
@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + ((sAcademy == null) ? 0 : sAcademy.hashCode());
	result = prime * result + ((sEmail == null) ? 0 : sEmail.hashCode());
	result = prime * result + ((sId == null) ? 0 : sId.hashCode());
	result = prime * result + ((sName == null) ? 0 : sName.hashCode());
	result = prime * result + ((sPassword == null) ? 0 : sPassword.hashCode());
	result = prime * result + ((sState == null) ? 0 : sState.hashCode());
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
	Student other = (Student) obj;
	if (sAcademy == null) {
		if (other.sAcademy != null)
			return false;
	} else if (!sAcademy.equals(other.sAcademy))
		return false;
	if (sEmail == null) {
		if (other.sEmail != null)
			return false;
	} else if (!sEmail.equals(other.sEmail))
		return false;
	if (sId == null) {
		if (other.sId != null)
			return false;
	} else if (!sId.equals(other.sId))
		return false;
	if (sName == null) {
		if (other.sName != null)
			return false;
	} else if (!sName.equals(other.sName))
		return false;
	if (sPassword == null) {
		if (other.sPassword != null)
			return false;
	} else if (!sPassword.equals(other.sPassword))
		return false;
	if (sState == null) {
		if (other.sState != null)
			return false;
	} else if (!sState.equals(other.sState))
		return false;
	return true;
}
@Override
public String toString() {
	return "Student [sId=" + sId + ", sName=" + sName + ", sPassword=" + sPassword + ", sAcademy=" + sAcademy
			+ ", sEmail=" + sEmail + ", sState=" + sState + "]";
}
public Student(Integer sId, String sName, String sPassword, String sAcademy, String sEmail, Integer sState) {
	super();
	this.sId = sId;
	this.sName = sName;
	this.sPassword = sPassword;
	this.sAcademy = sAcademy;
	this.sEmail = sEmail;
	this.sState = sState;
}

public Student() {
	super();
	// TODO Auto-generated constructor stub
}
}
