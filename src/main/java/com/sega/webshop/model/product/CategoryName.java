package com.sega.webshop.model.product;

public enum CategoryName {

    TSHIRTS("T-SHIRTS"),
    COSTUMES("COSTUMES"),
    HATS("HATS"),
    OTHER("OTHER");

    String categoryName;

    private CategoryName(String categoryName){
        this.categoryName =categoryName;
    }

    public String getCategoryName(){return categoryName;}

}
