package com.techgels.controller;

import com.techgels.dao.ProductDao;
import com.techgels.model.Product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@Controller
public class HomeController {

    private Path path;

    @Autowired
    private ProductDao productDao;

    @RequestMapping("/")
    public String home(){
        return "index";
    }

    @RequestMapping("/productList")
    public String getProducts(Model model){
        List<Product> products = productDao.getAllProducts();
        model.addAttribute("products",products);

        return "productList";
    }

    @RequestMapping("/productList/viewProduct/{productId}")
    public String viewProduct(@PathVariable int productId, Model model) throws IOException {
        Product product = productDao.getProductById(productId);
        model.addAttribute(product);

        return "viewProduct";
    }

    @RequestMapping("/admin")
    public String adminPage(){
        return "admin";
    }

    @RequestMapping("/admin/productInventory")
    public String productInventory(Model model){
        List<Product> products = productDao.getAllProducts();
        model.addAttribute("products",products);

        return "productInventory";
    }

    @RequestMapping("/admin/productInventory/addProduct")
    public String addProduct(Model model){
        Product product = new Product();
        //product.setProductName();
        //product.setProductBrand();
        product.setProductCategory("Car");
        //product.setProductDescription();
        //product.setUnitInStock();
        //product.setProductPrice();
        product.setProductStatus("Available");

        model.addAttribute("product",product);

        return "addProduct";
    }

    @RequestMapping(value = "/admin/productInventory/addProduct", method = RequestMethod.POST)
    public String addProductPost(@Valid @ModelAttribute("product") Product product, BindingResult bindingResult, HttpServletRequest request){

        if(bindingResult.hasErrors()){
            return "addProduct";
        }

        productDao.addProduct(product);

        MultipartFile productImage = product.getProductImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory+"\\WEB-INF\\resources\\images\\"+product.getProductId()+".png");

        if(productImage != null && !productImage.isEmpty()){
            try{
                productImage.transferTo(new File(path.toString()));
            }catch (Exception exception){
                exception.printStackTrace();
                throw new RuntimeException("Product image saving process failed!",exception);
            }
        }

        return "redirect:/admin/productInventory";
    }

    @RequestMapping("/admin/productInventory/deleteProduct/{id}")
    public String deleteProduct(@PathVariable int id, Model model, HttpServletRequest request) throws IOException {

        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory+"\\WEB-INF\\resources\\images\\"+id+".png");

        if(Files.exists(path)){
            try{
                Files.delete(path);
            }catch (Exception exception) {
                exception.printStackTrace();
                throw new RuntimeException("Product image delete process failed!", exception);
            }
        }

        productDao.deleteProduct(id);

        return "redirect:/admin/productInventory";
    }

    @RequestMapping("/admin/productInventory/updateProduct/{id}")
    public String updateProduct(@PathVariable("id") int id,Model model){

        Product product = productDao.getProductById(id);

        model.addAttribute(product);

        return "updateProduct";
    }

    @RequestMapping(value = "/admin/productInventory/updateProduct", method = RequestMethod.POST)
    public String updateProductPost(@Valid @ModelAttribute("product") Product product,BindingResult bindingResult, Model model, HttpServletRequest request){

        if(bindingResult.hasErrors()){
            return "updateProduct";
        }

        MultipartFile productImage = product.getProductImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory+"\\WEB-INF\\resources\\images\\"+product.getProductId()+".png");

        if(productImage != null && !productImage.isEmpty()){
            try{
                productImage.transferTo(new File(path.toString()));
            }catch (Exception exception){
                exception.printStackTrace();
                throw new RuntimeException("Product image update process failed!",exception);
            }
        }

        productDao.updateProduct(product);
        return "redirect:/admin/productInventory";
    }

}
