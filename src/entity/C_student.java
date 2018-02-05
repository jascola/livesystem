package entity;

public class C_student {
	private Integer id; //自增主键
	private Subject sub;//课程号
	private Student student;//学生号
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Subject getSub() {
		return sub;
	}
	public void setSub(Subject sub) {
		this.sub = sub;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((student == null) ? 0 : student.hashCode());
		result = prime * result + ((sub == null) ? 0 : sub.hashCode());
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
		C_student other = (C_student) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (student == null) {
			if (other.student != null)
				return false;
		} else if (!student.equals(other.student))
			return false;
		if (sub == null) {
			if (other.sub != null)
				return false;
		} else if (!sub.equals(other.sub))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "C_student [id=" + id + ", sub=" + sub + ", student=" + student + "]";
	}
	public C_student(Integer id, Subject sub, Student student) {
		super();
		this.id = id;
		this.sub = sub;
		this.student = student;
	}
	public C_student() {
		super();
		// TODO Auto-generated constructor stub
	}
}
