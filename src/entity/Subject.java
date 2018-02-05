package entity;
//对应class表
public class Subject {
private Integer cId; //课程号
private Teacher tea;//教师号
private String cName;//课程名称
private Integer cOnline;//在线人数
private String cShare ;//课程分享内容
private Integer cFlowers;//课程鲜花数
public Subject() {
	super();
	// TODO Auto-generated constructor stub
}
public Subject(Integer cId, Teacher tea, String cName, Integer cOnline, String cShare, Integer cFlowers) {
	super();
	this.cId = cId;
	this.tea = tea;
	this.cName = cName;
	this.cOnline = cOnline;
	this.cShare = cShare;
	this.cFlowers = cFlowers;
}
@Override
public String toString() {
	return "Subject [cId=" + cId + ", tea=" + tea + ", cName=" + cName + ", cOnline=" + cOnline + ", cShare=" + cShare
			+ ", cFlowers=" + cFlowers + "]";
}
@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + ((cFlowers == null) ? 0 : cFlowers.hashCode());
	result = prime * result + ((cId == null) ? 0 : cId.hashCode());
	result = prime * result + ((cOnline == null) ? 0 : cOnline.hashCode());
	result = prime * result + ((cShare == null) ? 0 : cShare.hashCode());
	result = prime * result + ((cName == null) ? 0 : cName.hashCode());
	result = prime * result + ((tea == null) ? 0 : tea.hashCode());
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
	Subject other = (Subject) obj;
	if (cFlowers == null) {
		if (other.cFlowers != null)
			return false;
	} else if (!cFlowers.equals(other.cFlowers))
		return false;
	if (cId == null) {
		if (other.cId != null)
			return false;
	} else if (!cId.equals(other.cId))
		return false;
	if (cOnline == null) {
		if (other.cOnline != null)
			return false;
	} else if (!cOnline.equals(other.cOnline))
		return false;
	if (cShare == null) {
		if (other.cShare != null)
			return false;
	} else if (!cShare.equals(other.cShare))
		return false;
	if (cName == null) {
		if (other.cName != null)
			return false;
	} else if (!cName.equals(other.cName))
		return false;
	if (tea == null) {
		if (other.tea != null)
			return false;
	} else if (!tea.equals(other.tea))
		return false;
	return true;
}
public Integer getcId() {
	return cId;
}
public void setcId(Integer cId) {
	this.cId = cId;
}
public Teacher getTea() {
	return tea;
}
public void setTea(Teacher tea) {
	this.tea = tea;
}
public String gettName() {
	return cName;
}
public void settName(String tName) {
	this.cName = tName;
}
public Integer getcOnline() {
	return cOnline;
}
public void setcOnline(Integer cOnline) {
	this.cOnline = cOnline;
}
public String getcShare() {
	return cShare;
}
public void setcShare(String cShare) {
	this.cShare = cShare;
}
public Integer getcFlowers() {
	return cFlowers;
}
public void setcFlowers(Integer cFlowers) {
	this.cFlowers = cFlowers;
}


}
