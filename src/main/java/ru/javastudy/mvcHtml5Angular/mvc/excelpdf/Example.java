package ru.javastudy.mvcHtml5Angular.mvc.excelpdf;

public class Example {
    private String name;
    private int weight;
    private String color;

    public Example(String name, int weight, String color) {
        this.name = name;
        this.weight = weight;
        this.color = color;
    }

    public String getName() {
        return name;
    }

    public int getWeight() {
        return weight;
    }

    public String getColor() {
        return color;
    }
}
