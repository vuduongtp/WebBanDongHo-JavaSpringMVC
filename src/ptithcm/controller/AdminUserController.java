package ptithcm.controller;

import java.util.List;

import javax.transaction.SystemException;
import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.User;

@Transactional
@Controller
@RequestMapping("/admin/")
public class AdminUserController {

	@Autowired 
	SessionFactory factory;
	
	@RequestMapping("user")
	public String user(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM User";
		Query query = session.createQuery(hql);
		List<User> list = query.list(); 
		model.addAttribute("users", list);
		
		return "admin/user";
	}
	
	@RequestMapping(value = "/deleteuser/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable int id,ModelMap model) throws IllegalStateException, SystemException {
		 Session session = factory.getCurrentSession();
	     Criteria crit = session.createCriteria(User.class);
	     crit.add(Restrictions.eq("MaKH", id));
	     User user = (User) crit.uniqueResult();
	        if (user != null) {
	            this.factory.getCurrentSession().delete(user);
	            model.addAttribute("message", "Xoá thành công!");
	        }
		
		return "redirect:../user.htm";
		
	}
	
	
	@RequestMapping(value = "insertuser", method =RequestMethod.GET)
	public String insert(ModelMap model) {
		model.addAttribute("user",new User());
		return "admin/insertuser";
	}
	
	
	@RequestMapping(value = "insertuser", method =RequestMethod.POST)
	public String insert(ModelMap model,@ModelAttribute("user") User user,BindingResult errors) throws IllegalStateException, SystemException {
		Session session = factory.openSession();
		Transaction t =session.beginTransaction();
		Criteria crit = session.createCriteria(User.class);
	     crit.add(Restrictions.eq("Username", user.getUsername()));
	     User user1 = (User) crit.uniqueResult();
	    if(user1!=null) {
	    	model.addAttribute("message", "Tên đăng nhập đã tồn tại vui lòng chọn tên đăng nhập khác!");
	    	return "admin/insertuser";
	    }
	    else if(user.getUsername().trim().length()==0) {
			errors.rejectValue("username", "user", "Username không được để trống!");
			return "admin/insertuser";
		}else if(user.getPassword().trim().length()==0){
			errors.rejectValue("password", "user", "Password không được để trống!");
			return "admin/insertuser";
		}
		else{
		try {
			session.save(user);
			t.commit();
			model.addAttribute("message", "Them moi thanh cong!");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Them moi that bai!");
		}
		}
		
		return "redirect:admin/../user.htm";
	}
	
	@RequestMapping(value = "/updateuser/{id}", method = RequestMethod.GET)
	public String update(ModelMap model,@PathVariable int id) throws IllegalStateException, SystemException {
		 Session session = factory.getCurrentSession();
	     Criteria crit = session.createCriteria(User.class);
	     crit.add(Restrictions.eq("MaKH", id));
	     User user = (User) crit.uniqueResult();
	        if (user != null) {
	        	try {
	        		model.addAttribute("user", user);
				} catch (Exception e) {
				}
	        	
	        	
	        }
		
		return "admin/updateuser";
		
	}
	
	@RequestMapping(value = "/updateuser/{id}", method = RequestMethod.POST)
	public String deleteuser(ModelMap model,@PathVariable int id,@Validated @ModelAttribute("user") User user, BindingResult errors) throws IllegalStateException, SystemException {
		 Session session = factory.getCurrentSession();
	        	if(user.getUsername().trim().length()==0) {
	    			errors.rejectValue("username", "user", "Username không được để trống!");
	    			return "admin/updateuser";
	    		}if(user.getPassword().trim().length()==0){
	    			errors.rejectValue("password", "user", "Password không được để trống!");
	    			return "admin/updateuser";
	    		}else{
	    			try {	  
	    				user.setPhanQuyen("user");
	    				session.update(user);
	    				model.addAttribute("message", "Sua thanh cong!");
	    			} catch (Exception e) {
	    				model.addAttribute("message", "Sua that bai!");
	    				return "admin/updateuser";
	    			}
	    			}
	        	
	            
		
		return "redirect:../user.htm";
		
	}
}
