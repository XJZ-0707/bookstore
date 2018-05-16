package service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import utils.DaoFactory;
import utils.WebUtils;
import dao.BookDao;
import dao.CategoryDao;
import dao.OrderDao;
import dao.UserDao;
import domain.Book;
import domain.Cart;
import domain.CartItem;
import domain.Category;
import domain.Order;
import domain.OrderItem;
import domain.Page;
import domain.User;

public class BusinessServiceImpl implements BusinessService {
	//工厂模式？
	private CategoryDao categoryDao = DaoFactory.getInstance().createDao("dao.impl.CategoryDaoImpl", CategoryDao.class);
	private BookDao bookDao = DaoFactory.getInstance().createDao("dao.impl.BookDaoImpl", BookDao.class);
	private UserDao userDao = DaoFactory.getInstance().createDao("dao.impl.UserDaoImpl", UserDao.class);
	private OrderDao orderDao = DaoFactory.getInstance().createDao("dao.impl.OrderDaoImpl", OrderDao.class);
	/* (non-Javadoc)
	 * @see service.impl.BusinessService#addCategory(domain.Category)
	 */
	public void addCategory(Category category){
		categoryDao.add(category);
	}
	
	/* (non-Javadoc)
	 * @see service.impl.BusinessService#findCategory(java.lang.String)
	 */
	public Category findCategory(String id){
		return categoryDao.find(id);
	}
	
	/* (non-Javadoc)
	 * @see service.impl.BusinessService#getAllCategory()
	 */
	public List<Category> getAllCategory(){
		return categoryDao.getAll();
	}
	
	//添加书
	public void addBook(Book book){
		bookDao.add(book);
	}
	
	//获得书
	public Book findBook(String id){
		return bookDao.find(id);
	}
	
	//获得分页数据
	public Page getBookPageData(String pagenum){
		int totalrecord = bookDao.getTotalRecord();
		Page page = null;
		if(pagenum == null){
			page = new Page(1,totalrecord);
		}else{
			page = new Page(Integer.parseInt(pagenum), totalrecord);
		}
		//oracle分页参数不同，把starpage，改成pagenum；
		//List<Book> list = bookDao.getPageData(page.getStartindex(), page.getPagesize());
		List<Book> list = bookDao.getPageData(page.getPagenum(), page.getPagesize());
		page.setList(list);
		return page;
	}
	
	public Page getBookPageData(String pagenum, String category_id){
		int totalrecord = bookDao.getTotalRecord(category_id);
		Page page = null;
		if(pagenum == null){
			page = new Page(1,totalrecord);
		}else{
			page = new Page(Integer.parseInt(pagenum), totalrecord);
		}
		//分页参数换成pagenum
		//List<Book> list = bookDao.getPageData(page.getStartindex(), page.getPagesize(), category_id);
		List<Book> list = bookDao.getPageData(page.getPagenum(), page.getPagesize(), category_id);
		page.setList(list);
		return page;
	}

	public void buyBook(Cart cart, Book book) {
		cart.add(book);
	}
	
	//注册用户
	public void registerUser(User user) {
		userDao.add(user);
	}
	
	public User findUser(String id){
		return userDao.find(id);
	}

	public User userLogin(String username, String password){
		return userDao.find(username, password);
	}
	
	//生成订单
	public void createOrder(Cart cart, User user){
		if(cart == null){
			throw new RuntimeException("对不起，您还没有购买任何商品");
		}
		Order order = new Order();
		order.setId(WebUtils.makeID());
		order.setOrdertime(new Date());
		order.setPrice(cart.getPrice());
		//order.setState(false);
		order.setState("False1");
		order.setUser(user);
		for(Map.Entry<String, CartItem> me : cart.getMap().entrySet()){
			//得到一个购物项就生成一个订单项
			CartItem citem = me.getValue();
			OrderItem oitem = new OrderItem();
			oitem.setBook(citem.getBook());
			oitem.setPrice(citem.getPrice());
			oitem.setId(WebUtils.makeID());
			oitem.setQuantity(citem.getQuantity());
			order.getOrderitems().add(oitem);
		}	
		orderDao.add(order);
	}

	//后台获取所有订单信息
	public List<Order> listOrder(String state) {
		//return orderDao.getAll(Boolean.parseBoolean(state));	
		return orderDao.getAll(state);	
	}

	//列出订单明细
	public Order findOrder(String orderid) {		
		return orderDao.find(orderid);
	}

	//把订单置为发货状态
	public void confirmOrder(String orderid) {
		Order order = orderDao.find(orderid);
		order.setState("True1");
		orderDao.update(order);
	}

	//获得某个用户的订单信息
	public List<Order> listOrder(String state, String userid) {
		//return orderDao.getAll(Boolean.parseBoolean(state), userid);
		return orderDao.getAll(state, userid);
	}

	//获取某个用户的订单信息
	public List<Order> clientListOrder(String userid) {	
		return orderDao.getAllOrder(userid);
	}

	//更改分类信息
	public void modifyCategory(Category category) {
		categoryDao.modify(category);
	}
}
