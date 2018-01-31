package com.sook.cs.letitgo.item;

import com.google.gson.annotations.SerializedName;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Customer implements Serializable {
    public int seq;
    public String name;
    public String phone;
    public String sextype;
    public String birthday;
    @SerializedName("img") public String img;

    public int getSeq() {
        return seq;
    }

    public String getName() {
        return name;
    }

    public String getPhone() {
        return phone;
    }

    public String getSextype() {
        return sextype;
    }

    public String getBirthday() {
        return birthday;
    }

    public String getImg() {
        return img;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "seq=" + seq +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", sextype='" + sextype + '\'' +
                ", birthday='" + birthday + '\'' +
                ", img='" + img + '\'' +
                '}';
    }
}