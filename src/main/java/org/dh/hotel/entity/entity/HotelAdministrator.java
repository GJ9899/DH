package org.dh.hotel.entity.entity;

public class HotelAdministrator {
    private Integer id;

    private String name;

    private String password;

    private String reallyName;

    private Integer permissionsId;

    public HotelAdministrator(Integer id, String name, String password, String reallyName, Integer permissionsId) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.reallyName = reallyName;
        this.permissionsId = permissionsId;
    }

    public HotelAdministrator() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getReallyName() {
        return reallyName;
    }

    public void setReallyName(String reallyName) {
        this.reallyName = reallyName == null ? null : reallyName.trim();
    }

    public Integer getPermissionsId() {
        return permissionsId;
    }

    public void setPermissionsId(Integer permissionsId) {
        this.permissionsId = permissionsId;
    }
}