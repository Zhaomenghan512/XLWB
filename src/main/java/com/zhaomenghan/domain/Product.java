package com.zhaomenghan.domain;

import java.io.Serializable;

public class Product implements Serializable {
    private Integer id; //产品编号
    private Integer typeId; //产品类型
    private String name; //产品名称
    private String surface; //产品表面处理
    private String standard; //产品特征
    private Double diameter; //产品半径
    private String image; //产品图片

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurface() {
        return surface;
    }

    public void setSurface(String surface) {
        this.surface = surface;
    }

    public String getStandard() {
        return standard;
    }

    public void setStandard(String standard) {
        this.standard = standard;
    }

    public Double getDiameter() {
        return diameter;
    }

    public void setDiameter(Double diameter) {
        this.diameter = diameter;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", typeId=" + typeId +
                ", name='" + name + '\'' +
                ", surface='" + surface + '\'' +
                ", standard='" + standard + '\'' +
                ", diameter=" + diameter +
                ", image='" + image + '\'' +
                '}';
    }
}
