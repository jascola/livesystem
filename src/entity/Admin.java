package entity;
public class Admin {
	private Integer aId; //管理员id
	private String aPassword;//管理员密码
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getaId() {
		return aId;
	}
	public void setaId(Integer aId) {
		this.aId = aId;
	}
	public String getaPassword() {
		return aPassword;
	}
	public void setaPassword(String aPassword) {
		this.aPassword = aPassword;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((aId == null) ? 0 : aId.hashCode());
		result = prime * result + ((aPassword == null) ? 0 : aPassword.hashCode());
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
		Admin other = (Admin) obj;
		if (aId == null) {
			if (other.aId != null)
				return false;
		} else if (!aId.equals(other.aId))
			return false;
		if (aPassword == null) {
			if (other.aPassword != null)
				return false;
		} else if (!aPassword.equals(other.aPassword))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Admin [aId=" + aId + ", aPassword=" + aPassword + "]";
	}
	public Admin(Integer aId, String aPassword) {
		super();
		this.aId = aId;
		this.aPassword = aPassword;
	}
}
