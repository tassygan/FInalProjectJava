package portal;

public class Club {

    private int id;
    private String name;
    private String instagram;
    private String information;
    private String president;

    public Club(int id, String name, String instagram, String information, String president) {
        this.id = id;
        this.name = name;
        this.instagram = instagram;
        this.information= information;
        this.president = president;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getInstagram() {
        return instagram;
    }

    public void setInstagram(String instagram) {
        this.instagram = instagram;
    }

    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information;
    }

    public String getPresident() {
        return president;
    }

    public void setPresident(String president) {
        this.president = president;
    }
}
