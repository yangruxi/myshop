package com.yang.shop.product.action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.yang.shop.category.service.FirstCategoryService;
import com.yang.shop.category.service.SecondCategoryService;
import com.yang.shop.category.service.ThirdCategoryService;
import com.yang.shop.category.vo.FirstCategory;
import com.yang.shop.category.vo.SecondCategory;
import com.yang.shop.category.vo.ThirdCategory;
import com.yang.shop.product.service.ProductService;
import com.yang.shop.product.vo.Product;
import com.yang.shop.product.vo.ProductDetail;
import com.yang.shop.product.vo.ProductPic;
import com.yang.shop.utils.PageBean;

/**
 * 商品模块的Action类
 * @author yangruxi
 *
 */
public class ProductAction extends ActionSupport implements ModelDriven<Product>{
	//用于接收数据的模型驱动对象
	private Product product = new Product(); 
	//注入ProductService
	private ProductService productService;
	//接收一级分类ID
	private Integer firstCategoryId;
	//接收当前页数
	private int page;
	//注入一级分类的Service
	private FirstCategoryService firstCategoryService;
	//接收二级分类ID
	private Integer secondCategoryId;
	//注入二级分类的Service
	private SecondCategoryService secondCategoryService;
	//接收三级分类ID
	private Integer thirdCategoryId;
	//接收三级分类的Service
	private ThirdCategoryService thirdCategoryService;
	
	public Integer getThirdCategoryId() {
		return thirdCategoryId;
	}

	public void setThirdCategoryId(Integer thirdCategoryId) {
		this.thirdCategoryId = thirdCategoryId;
	}

	public ThirdCategoryService getThirdCategoryService() {
		return thirdCategoryService;
	}

	public void setThirdCategoryService(ThirdCategoryService thirdCategoryService) {
		this.thirdCategoryService = thirdCategoryService;
	}

	public Integer getSecondCategoryId() {
		return secondCategoryId;
	}

	public void setSecondCategoryId(Integer secondCategoryId) {
		this.secondCategoryId = secondCategoryId;
	}

	public SecondCategoryService getSecondCategoryService() {
		return secondCategoryService;
	}

	public void setSecondCategoryService(SecondCategoryService secondCategoryService) {
		this.secondCategoryService = secondCategoryService;
	}

	public FirstCategoryService getFirstCategoryService() {
		return firstCategoryService;
	}

	public void setFirstCategoryService(FirstCategoryService firstCategoryService) {
		this.firstCategoryService = firstCategoryService;
	}

	public Integer getFirstCategoryId() {
		return firstCategoryId;
	}

	public void setFirstCategoryId(Integer firstCategoryId) {
		this.firstCategoryId = firstCategoryId;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public ProductService getProductService() {
		return productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	public Product getModel() {
		return product;
	}
	
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	//根据商品ID查询商品
	public String findByPid() {
		//通过商品表查询商品信息
		product = productService.findByPid(product.getGoodId());
		
		//通过商品详情图片表查询商品详情图片
		//ProductPic productPics = productService.findPicByPid(product.getGoodId());
		//将商品详情图片结果存入值栈
		//ActionContext.getContext().getValueStack().set("productPics", productPics);
		
		//通过商品细节表查询商品细节
		//List<ProductDetail> dList = productService.findDetailBypid(product.getGoodId());
		//将商品细节存入值栈
		//ActionContext.getContext().getValueStack().set("dList", dList);
		return "findByPid";
	}
	
	//根据一级分类的ID查询商品
	public String findByFirstCategoryId() throws Exception {
		//根据一级分类ID查询该一级分类，可以关联查询到该分类下二级分类和三级分类信息
		FirstCategory firstCategory = firstCategoryService.findByFirstCategoryId(firstCategoryId);
		//将一级分类信息存入值栈
		ActionContext.getContext().getValueStack().set("firstCategory", firstCategory);
		
		//根据一级分类查询一级分类下的所有商品,带分页
		PageBean<Product> pageBean = productService.findByPageFCid(firstCategoryId,page);
		//将pageBean存入值栈
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		
		//productService.findByFirstCategoryId(firstCategoryId);
		return "findByFirstCategoryId";
	}
	
	//根据二级分类的ID查询商品
	public String findBySecondCategoryId() throws Exception {
		//根据二级分类ID查询该二级分类
		SecondCategory secondCategory = secondCategoryService.findBySecondCategoryId(secondCategoryId);
		//将二级分类信息存入值栈
		ActionContext.getContext().getValueStack().set("secondCategory", secondCategory);
		
		//根据二级分类查询二级分类下的所有商品，带分页
		PageBean<Product> pageBean = productService.findByPageSCid(secondCategoryId, page);
		//将pageBean存入值栈
		ActionContext.getContext().getValueStack().set("pageBean2", pageBean);
		return "findBySecondCategoryId";
	}
	
	//根据三级分类的ID查询商品
	public String findByThirdCategoryId() throws Exception {
		//根据三级分类ID查询该三级分类
		ThirdCategory thirdCategory = thirdCategoryService.findByThirdCategoryId(thirdCategoryId);
		//将三级分类信息存入值栈
		ActionContext.getContext().getValueStack().set("thirdCategory", thirdCategory);
		
		//根据三级分类查询三级分类下的所有商品，带分页
		PageBean<Product> pageBean = productService.findByPageTCid(thirdCategoryId, page);
		//将pageBean存入值栈
		ActionContext.getContext().getValueStack().set("pageBean3", pageBean);
		return "findByThirdCategoryId";
	}
}
