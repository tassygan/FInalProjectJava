package portal;

public class Student {
    private int id;
    private String first_name;
    private String last_name;
    private String group;
    private String major;
    private String year;
    private String email;

    public Student(int id, String first_name, String last_name, String group, String major, String year, String email) {
        this.id = id;
        this.first_name = first_name;
        this.last_name = last_name;
        this.group = group;
        this.major = major;
        this.year = year;
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
