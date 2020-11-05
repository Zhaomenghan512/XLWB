package com.zhaomenghan.controller;

import com.zhaomenghan.domain.Product;
import com.zhaomenghan.domain.Type;
import com.zhaomenghan.service.ProductService;
import com.zhaomenghan.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

@Controller
@RequestMapping("/product")
public class ProductController {
    @Autowired
    private ProductService service;
    @Autowired
    private TypeService typeService;
    @RequestMapping("/selectByType")
    public ModelAndView selectProductByType(Integer typeId) {
        Type type = new Type();
        type.setTypeId(typeId);
        List<Product> products = service.selectProductByType(type);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("ProductByType");
        mv.addObject("productList",products);
        return mv;
    }
    @RequestMapping("/productDetail")
    public ModelAndView productDetail(Integer id) {
        ModelAndView mv = new ModelAndView();
        Product product = service.selectProductById(id);
        String typeName = typeService.selectTypeName(product.getTypeId());
        mv.addObject("detail",product);
        Type type = new Type();
        type.setTypeId(product.getTypeId());
        type.setTypeName(typeName);
        mv.addObject("type",type);
        mv.setViewName("ProductDetail");
        return mv;
    }
    @RequestMapping("/deleteById")
    @ResponseBody
    public void deleteProductById(HttpServletRequest request,Integer id) {
        Integer flag = service.deleteProduct(id);
        if (flag != 0) {
            request.setAttribute("msg","删除成功！");
        } else {
            request.setAttribute("msg","删除失败,请重试！");
        }
    }
    @RequestMapping("/update")
    @ResponseBody
    public String updateProduct(Product product) {
        Integer flag = service.updateProduct(product);
        if (flag != 0) {
            return "1";
        } else {
            return "0";
        }
    }
    @RequestMapping("/manager")
    public ModelAndView productManager() {
        List<Product> lists = service.selectAllProduct();
        ModelAndView mv = new ModelAndView();
        mv.setViewName("ProductManager");
        mv.addObject("productList",lists);
        return mv;
    }
    @RequestMapping("/detail")
    @ResponseBody
    public String detail(Integer id) {
        Product product = service.selectProductById(id);
        String typeName = typeService.selectTypeName(product.getTypeId());
        return "id="+product.getId()+
                ",typeId="+product.getTypeId()+
                ",name="+product.getName()+
                ",surface="+product.getSurface()+
                ",standard="+product.getStandard()+
                ",diameter="+product.getDiameter()+
                ",image="+product.getImage()+
                ",typeName="+typeName;
    }
    @RequestMapping("/insert")
    @ResponseBody
    public String insertProduct(HttpServletRequest req,
                                HttpServletResponse resp, MultipartFile image) {
        Map<String, String[]> map = req.getParameterMap();
        Product prod = new Product();
        Set<String> keys = map.keySet();
        for (String key : keys) {
            if (key.equals("typeId")) {
                String value = map.get(key)[0];
                prod.setTypeId(Integer.parseInt(value));
            }
            if (key.equals("name")) {
                String value = map.get(key)[0];
                prod.setName(value);
            }
            if (key.equals("surface")) {
                String value = map.get(key)[0];
                prod.setSurface(value);
            }
            if (key.equals("standard")) {
                String value = map.get(key)[0];
                prod.setStandard(value);
            }
            if (key.equals("diameter")) {
                String value = map.get(key)[0];
                prod.setDiameter(Double.parseDouble(value));
            }
            if (!image.isEmpty()) {
                System.out.println("image="+image);
                //1.获取上传路径
                String path = req.getSession().getServletContext().getRealPath(req.getContextPath() + "/images");
                System.out.println("path="+path);
                //2.创建File对象
                File file = new File(path);
                System.out.println("file="+file);
                //3.判断目录是否存在
                if (!file.exists()) {
                    file.mkdirs();
                }
                //4.获取文件名称
                String filename = image.getOriginalFilename();
                System.out.println("filename"+filename);
                //5.文件名称唯一化
                String uuid = UUID.randomUUID().toString().replace("-", "").toUpperCase();
                filename = uuid + "_" + filename;
                //6.上传文件
                try {
                    image.transferTo(new File(path, filename));
                    prod.setImage("/images/" + filename);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        Integer flag = service.insertProduct(prod);
        if (flag != 0) {
            return "1";
        } else {
            return "0";
        }
    }
    @RequestMapping("/delete")
    @ResponseBody
    public String deleteProduct(Integer id) {
        Integer flag = service.deleteProduct(id);
        if (flag != 0) {
            return "1";
        } else {
            return "0";
        }
    }
}
