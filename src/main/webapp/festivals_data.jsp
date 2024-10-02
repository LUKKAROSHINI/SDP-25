<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Festival Details</title>
    <link rel="icon" href="https://png.pngtree.com/png-clipart/20190515/original/pngtree-abstract-indian-flag-theme-background-design-flag-of-india-png-image_3541508.jpg" type="image/png">
    <style>
        body {
            color: black;
            font-family: Arial, sans-serif;
        }
        .festival-img {
            width: 200px;
            height: auto;
        }
        h2 {
            color: #0056b3;
        }
    </style>
</head>
<body>
<%
    String festival = request.getParameter("festival");
    if (festival != null) {
        // Simulate fetching data from a database or other source
        if (festival.equalsIgnoreCase("Diwali")) {
            out.println("<h2>Diwali</h2>");
            out.println("<img src='https://th.bing.com/th/id/OIP.4pjWY-UUbMyAnZWLR_sAAQHaFJ?rs=1&pid=ImgDetMain' alt='Diwali' class='festival-img'>");
            out.println("<p>Diwali, also known as Deepavali, is the Hindu festival of lights celebrated every autumn in the northern hemisphere (spring in southern hemisphere). One of the most popular festivals of Hinduism, Diwali symbolizes the spiritual victory of light over darkness, good over evil, and knowledge over ignorance.</p>");
        } else if (festival.equalsIgnoreCase("Holi")) {
            out.println("<h2>Holi</h2>");
            out.println("<img src='https://wallpapercave.com/wp/wp5549199.jpg' alt='Holi' class='festival-img'>");
            out.println("<p>Holi is a popular ancient Hindu festival, originating from the Indian subcontinent. It is celebrated predominantly in India and Nepal but has also spread to other regions of Asia and parts of the Western world through the diaspora from the Indian subcontinent.</p>");
        } else if (festival.equalsIgnoreCase("Eid")) {
            out.println("<h2>Eid</h2>");
            out.println("<img src='https://www.ohfact.com/wp-content/uploads/2015/04/Eid-Ul-Fitr.jpg' alt='Eid' class='festival-img'>");
            out.println("<p>Eid is a significant religious holiday celebrated by Muslims worldwide that marks the end of Ramadan, the Islamic holy month of fasting. The religious Eid is a single day during which Muslims are not permitted to fast, and it is a day of celebration.</p>");
        } else {
            out.println("<h2>Festival Not Found</h2>");
            out.println("<p>The festival you are looking for is not available. Please check the name and try again.</p>");
        }
    } else {
        out.println("<h2>No Festival Selected</h2>");
        out.println("<p>Please select a festival to view its details.</p>");
    }
%>
</body>
</html>
