package pkg;

import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;    
import pkg.user;    
    
public class cakedbc {    
JdbcTemplate template;    
    
public void setTemplate(JdbcTemplate template) {    
    this.template = template;    
}    
public int save(user p){    
    String sql="insert into user(fullname,address,phone,uname,password) values('"+p.getFullname()+"','"+p.getAddress()+"','"+p.getPhone()+"','"+p.getUname()+"','"+p.getPassword()+"')";    
    return template.update(sql);    
}    
public int update(user p){    
    String sql="update user set fullname='"+p.getFullname()+"', address='"+p.getAddress()+"',phone='"+p.getPhone()+"',uname='"+p.getUname()+"',password='"+p.getPassword()+"' where id="+p.getId()+"";    
    return template.update(sql);    
}    
public int delete(int id){    
    String sql="delete from user where id="+id+"";    
    return template.update(sql);    
}    
public user getEmpById(int id){    
    String sql="select * from user where id=?";    
    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<user>(user.class));    
}    
public List<user> getEmployees(){    
    return template.query("select * from user",new RowMapper<user>(){    
        public user mapRow(ResultSet rs, int row) throws SQLException {    
            user e=new user();    
            e.setId(rs.getInt(1));    
            e.setFullname(rs.getString(2));    
            e.setAddress(rs.getString(3));    
            e.setPhone(rs.getString(4)); 
            e.setUname(rs.getString(5));
            e.setPassword(rs.getString(6));
            return e;    
        }    
    });    
}    
}   