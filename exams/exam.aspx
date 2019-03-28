<%@ Page Language="C#" AutoEventWireup="true" CodeFile="exam.aspx.cs" Inherits="exams_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <meta charset="UTF-8"/>

    
<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="eduu.css" type="text/css" media="all"/>


     <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js" type="text/javascript"></script>


    
</head>

       <div class="topnav">
        <div class='container'>
                <div class="align-left">HKCL OES</div>
                <div class="align-right">HS-CIT Final Exam 2018</div>
                <p class="caption">Education website</p>
                </div>
</div>

<body>
    <form id="form1" runat="server">
    <div>

<div class="grid">
   <div class="box1">
           <div class="qt">Question No.25<span class="view">View In</span>
        <div class="select-style">
                
                <select id="selection">
                  <option value="eng">English</option>
                  <option value="ind">Indian</option>
                  <option value="chi">Chinese</option>
                </select> 
               
        </div> 
        <br/><br/><hr/><br/><br/><br/><br/>

        <div class="question"><p>A______put some question here?</p><br/><br/><br/><br/>
       
        <input type="radio" name="answer" value="first" checked="checked"/> first option<br/><br/>
        <input type="radio" name="answer" value="second"/> second option<br/><br/>
        <input type="radio" name="answer" value="third"/> third option<br/><br/>
        <input type="radio" name="answer" value="forth"/> forth option
       
        </div> 
        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
        <button type="submit" class="btn">Submit & Next</button>   
</div>
</div>                        
   <div class="box2"><p class="uname">User : <strong>username1122</strong></p></div>
   <div class="box3"><p class="numq">Number of Questions : <strong>50</strong></p>
        <hr/>
        <button id="btn2">20</button><span class=text>&nbspAnswer</span>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <button id="btn3">8</button><sapn class="text">&nbspNot answered</sapn>
        <br/><br/><br>
        <button id="btn4">22</button><span class="text">&nbspnot visted</span>

</div> 
        <div class="box4">
                <div class="btn-no">
                <button class="number-green">1</button>
                <button class="number-green">2</button>
                <button class="number-green">3</button>
                <button class="number-green">4</button>
                <button class="number-green">5</button>
                <button class="number-green">6</button>
                <button class="number-green">7</button>
                <button class="number-org">8</button>
                <button class="number-green">9</button>
                <button class="number-green">10</button>
                <button class="number-green">11</button>
                <button class="number-org">12</button>
                <button class="number-org">13</button>
                <button class="number-org">14</button>
                <button class="number-org">15</button>
                <button class="number-org">16</button>
                <button class="number-green">17</button>
                <button class="number-green">18</button>
                <button class="number-green">19</button>
                <button class="number-org">20</button>
                <button class="number-org">21</button>
                <button class="number-org">22</button>
                <button class="number">23</button>
                <button class="number">24</button>
                <button class="number">25</button>
                <button class="number">26</button>
                <button class="number">27</button>
                <button class="number">28</button>
                <button class="number">29</button>
                <button class="number">30</button>
                <button class="number">31</button>
                <button class="number">32</button>
                <button class="number">33</button>
                <button class="number">34</button>
                <button class="number">35</button>
                <button class="number">36</button>
                <button class="number">37</button>
                <button class="number">38</button>
                <button class="number">39</button>
                <button class="number">40</button>
                <button class="number">41</button>
                <button class="number">42</button>
                <button class="number">43</button>
                <button class="number">44</button>
                <button class="number">45</button>
                <button class="number">46</button>
                <button class="number">47</button>
                <button class="number">48</button>
                <button class="number">49</button>
                <button class="number">50</button>
                </div>
                <br/><br/><hr/><br/>
                <div class="btn-final">
                        <button type="submit" class="btn">Submit & Next</button>
                        <button type="submit" class="btn">Submit & Next</button><br>
                        <button type="submit" class="btn-org">Submit & Next</button>
                        </div>    
        </div>
</div>



 <%--<h2 id="test_status"></h2>
<div id="test"></div>--%>
    </div>
    </form>
</body>
</html>
