package org.itsci.shop.controller;

import org.itsci.shop.model.Cart;
import org.itsci.shop.model.Product;
import org.itsci.shop.service.CartService;
import org.itsci.shop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/cart")
public class CartController {

    private String title = "ตะกร้าสินค้า";
    @Autowired
    private CartService cartService ;

    @Autowired
    private ProductService productService;

    @GetMapping("/list")
    public String listCart(Model model) {
        model.addAttribute("title", "รายการ" + title);
        model.addAttribute("carts", cartService.getCarts());
        return "cart/list";
    }
    @InitBinder
    public void initBinder(WebDataBinder dataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

    @GetMapping("/{id}/delete")
    public String deleteProduct(@PathVariable("id") int id) {
        cartService.deleteCart(id);
        return "redirect:/cart/list";
    }

    @GetMapping("/{id}/view-products")
    public String shopViewProduct(@PathVariable("id") int id, Model model) {
        Cart cart = cartService.getCart(id);
        model.addAttribute("title", title + " - รายการสินค้า");
        model.addAttribute("cart", cart);
        model.addAttribute("products", cart.getProducts());
        return "cart/cart-view-products";
    }

    @GetMapping("/{id}/product/add")
    public String showProductForAdd(@PathVariable("id") int id, Model model) {
        Cart cart = cartService.getCart(id);
        List<Product> products = productService.getProductDoesNotHaveShop(id);
        model.addAttribute("title", "เพิ่มสินค้า");
        model.addAttribute("cart", cart);
        model.addAttribute("products", products);
        return "cart/product-list";
    }
    @PostMapping("/{id}/product/add")
    public String addProduct(@PathVariable("id") int cartId, @RequestParam("product") int productId) {
        cartService.addProductToCart(cartId , productId);
        return "redirect:/cart/" + cartId+ "/product/add";
    }
    @GetMapping("/{id}/product/{product}/remove")
    public String shopRemoveProduct(@PathVariable("id") int cartId, @PathVariable("product") int productId) {
        cartService.removeProductFromCart(cartId , productId);
        return "redirect:/cart/" + cartId + "/view-products";
    }
}

