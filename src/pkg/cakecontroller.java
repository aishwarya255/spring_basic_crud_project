package pkg;

import java.util.List;    
import org.springframework.beans.factory.annotation.Autowired;    
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.ModelAttribute;    
import org.springframework.web.bind.annotation.PathVariable;    
import org.springframework.web.bind.annotation.RequestMapping;    
import org.springframework.web.bind.annotation.RequestMethod;     
import pkg.user;    
import pkg.cakedbc;    
@Controller    
public class cakecontroller {    
    @Autowired    
    cakedbc dao;//will inject dao from XML file    
        
    /*It displays a form to input data, here "command" is a reserved request attribute  
     *which is used to display object data into form  
     */    
    @RequestMapping("/userform")    
    public String showform(Model m){    
        m.addAttribute("command", new user());  
        return "userform";   
    }    
    /*It saves object into database. The @ModelAttribute puts request data  
     *  into model object. You need to mention RequestMethod.POST method   
     *  because default request is GET*/    
    @RequestMapping(value="/save",method = RequestMethod.POST)    
    public String save(@ModelAttribute("user") user user){    
        dao.save(user);    
        return "redirect:/viewuser";//will redirect to viewuser request mapping    
    }    
    /* It provides list of employees in model object */    
    @RequestMapping("/viewuser")    
    public String viewuser(Model m){    
        List<user> list=dao.getEmployees();    
        m.addAttribute("list",list);  
        return "viewuser";    
    }    
    /* It displays object data into form for the given id.   
     * The @PathVariable puts URL data into variable.*/    
    @RequestMapping(value="/edituser/{id}")    
    public String edit(@PathVariable int id, Model m){    
        user user=dao.getEmpById(id);    
        m.addAttribute("command",user);  
        return "usereditform";    
    }    
    /* It updates model object. */    
    @RequestMapping(value="/editsave",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("user") user user){    
        dao.update(user);    
        return "redirect:/viewuser";    
    }    
    /* It deletes record for the given id in URL and redirects to /viewuser */    
    @RequestMapping(value="/deleteuser/{id}",method = RequestMethod.GET)    
    public String delete(@PathVariable int id){    
        dao.delete(id);    
        return "redirect:/viewuser";    
    }     
}  

