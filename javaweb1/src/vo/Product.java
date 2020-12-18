package vo;

public class Product {

    private String id;

    private String barcode;

    private String name;

    public Product(String id, String barcode, String name) {
        this.id = id;
        this.barcode = barcode;
        this.name = name;
    }
    private String category;

    private String reclassify;

    private Integer price;

    private Integer minsaleprice;

    private Integer maxsaleprice;

    private String specifications;

    private String origin;

    private String company;

    public Product() {

    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getReclassify() {
        return reclassify;
    }

    public void setReclassify(String reclassify) {
        this.reclassify = reclassify;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getMinsaleprice() {
        return minsaleprice;
    }

    public void setMinsaleprice(Integer minsaleprice) {
        this.minsaleprice = minsaleprice;
    }

    public Integer getMaxsaleprice() {
        return maxsaleprice;
    }

    public void setMaxsaleprice(Integer maxsaleprice) {
        this.maxsaleprice = maxsaleprice;
    }

    public String getSpecifications() {
        return specifications;
    }

    public void setSpecifications(String specifications) {
        this.specifications = specifications;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getBarcode() {
        return barcode;
    }

    public void setBarcode(String barcode) {
        this.barcode = barcode;
    }
}
