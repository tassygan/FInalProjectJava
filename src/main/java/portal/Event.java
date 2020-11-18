package portal;

import java.util.Date;
//jdbc connection needed when inserting an event or club!!!


public class Event {

    private String eventName;
    private Date date;
    private String organiser;
    private int cost;

    protected Event() {
    }

    public Event(String eventName, Date date, String organiser, int cost) {
        this.eventName = eventName;
        this.date = date;
        this.organiser = organiser;
        this.cost = cost;
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getOrganiser() {
        return organiser;
    }

    public void setOrganiser(String organiser) {
        this.organiser = organiser;
    }

    public int getCost() {
        return cost;
    }

    public void setCost(int cost) {
        this.cost = cost;
    }
}
