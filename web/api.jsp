<%@page import="java.util.Date"%>
<%@page import="sample.Test"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%

SessionFactory factory=sample.HibernateUtil.getSessionFactory();
Session s=factory.openSession();
Transaction t=s.beginTransaction();

sample.Test test=new Test(1, new Date()+"", "200");
s.save(test);
t.commit();
s.close();

%>