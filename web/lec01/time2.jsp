<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.Date,java.text.*" %>		<!-- �����õ�������ļ� -->
<%
   Date nowday=new Date();  			//��ȡ��ǰ����
   int hour=nowday.getHours();			//��ȡ�����е�Сʱ
   SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //�������ڸ�ʽ������
   String time=format.format(nowday);	//��ָ�����ڸ�ʽ��Ϊ��yyyy-MM-dd HH:mm:ss����ʽ
%>
<html>
	<head><title>��һ��JSPӦ��</title></head>
	<body>
		<center>
			<table border="1" width="300">
			    <tr height="30"><td align="center">��ܰ��ʾ��</td></tr>
			    <tr height="80"><td align="center">����ʱ��Ϊ��<%=time%></td></tr>
			    <tr height="70">
			        <td align="center">  
			        <!-- ����ΪǶ�뵽HTML�е�Java���룬�������ɶ�̬������ -->
			        <%
			        	if(hour>=24&&hour<5)
							out.print("�������賿!ʱ�仹����,��˯���!");
			            else if(hour>=5&&hour<10)
        	 			    out.print("���Ϻ�!�µ�һ�켴����ʼ,��׼��������?");
			            else if(hour>=10&&hour<13)
        	 			    out.print("����ʱ��!�����ʱ��!");
			            else if(hour>=13&&hour<18)
        	 			    out.print("�������Ŭ��������!!");
			            else if(hour>=18&&hour<21)
        	 			    out.print("���Ϻ�!����ʱ��!");
			            else if(hour>=21&&hour<24)
             			    out.print("�Ѿ�����ҹ,ע����Ϣ!");
			        %>
			    	</td>
		    	</tr>
			</table>   
		</center>
	</body>
</html>
