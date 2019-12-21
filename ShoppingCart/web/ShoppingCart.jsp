<%@page contentType="text/html" pageEncoding="UTF-8"%>  

<jsp:useBean id="Goodsbean" class="com.GoodsBean" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/ShoppingCart.css" rel="stylesheet" type="text/css" />
        <title>ShoppingCart</title>
    </head>
    <body>
        <div class="top">
            <li>
                <span class="top_title">SHOPPINGCART</span>
                <img src="image/log.jpg" class="picture">
            </li>
        </div>
        <div>
            <table align="center" cellspacing="2" cellpadding="10" >
                <tr>
                    <td class="td_title"><b>商品名</b></td>
                    <td class="td_title"><b>数量</b></td>
                    <td class="td_title"><b>单价</b></td>
                    <td class="td_title"><b>总价</b></td>
                </tr>
                <%
                    String name = "";
                    float price = 0;
                    float sum = 0;
                    int num = 0;
                    boolean buy_juge = false;
                    String[] nums = request.getParameterValues("buy");

                    for (int i = 0; i < nums.length; i++) {
                        if (!nums[i].equals("0")) {
                            Goodsbean.SelectGoods(i);
                            name = Goodsbean.GetName();
                            num = Integer.parseInt(nums[i]);
                            price = Float.parseFloat(Goodsbean.GetPrice());
                            sum += num * price;
                            buy_juge = true;
                %>
                <tr>
                    <td class="td_content"><%=name%></td>
                    <td class="td_content"><%=num%></td>
                    <td class="td_content"><%=price%></td>
                    <td class="td_content"><%=num*price%></td>
                </tr>
                <%
                        }
                    }
                    if (buy_juge == false) {
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert(\"未选购商品！\");");
                        out.println("document.location.href=\"Shopping.jsp\";");
                        out.println("</script>");
                    }
                %>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td class="td_content"><%=sum%></td>
                </tr>
            </table>
        </div>
    </body>
</html>
