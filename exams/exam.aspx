<%@ Page Language="C#" AutoEventWireup="true" CodeFile="exam.aspx.cs" Inherits="exams_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <meta charset="UTF-8" />


    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="eduu.css" type="text/css" media="all" />


    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js" type="text/javascript"></script>


    <style>
        div#test {
            border: #000 1px solid;
            padding: 10px 40px 40px 40px;
            margin-right: 2%;
        }
    </style>




    <script type="text/javascript">
        debugger;

        var questions;
        var pos = 0, curr_pos = 0, test, test_status, question, choice, choices, chA, chB, chC, chD, correct = 0;



        var mins = '<%=Session["time"]%>'
        var secs = mins * 60;
        var currentSeconds = 0;
        var currentMinutes = 0;
        var ourtimer;

        function StartCountDown() {
            debugger;
            ourtimer = setTimeout(Decrement, 1000);
        }

        function EndTest() {
            debugger;
            secs = 15;
            test.html("<h2>Your score is " + correct + "&nbsp;" + "out of" + "&nbsp;" + questions.length + "</h2>");
            // var hiddenControl = '<%= hiddenscore.ClientID %>';
                    //document.getElementById(hiddenControl).value = correct;

                    $("#test_status").html("Test Completed");
                    $("#btnno").hide();
                    $("#Button1").prop('disabled', true);
                    $("#btnnext").prop('disabled', true);
                    $("#btnEndTest").prop('disabled', true);
                    $("#ptest_ended").html("You Have Ended Your Test ! Contact Your HOD For Your Details...");
                    //FetchStudentDetails();


                }


                function EndCountDown() {
                    debugger;
                    clearTimeout(ourtimer);
                }

                function myCurrentDay() {
                    var d = new Date();
                    var weekday = new Array(7);
                    weekday[0] = "Sunday";
                    weekday[1] = "Monday";
                    weekday[2] = "Tuesday";
                    weekday[3] = "Wednesday";
                    weekday[4] = "Thursday";
                    weekday[5] = "Friday";
                    weekday[6] = "Saturday";
                    var Day = weekday[d.getDay()];
                    document.getElementById("currentday").innerHTML = Day;

                }
                $(document).ready(function () {


                    myCurrentDay();

                    var fullDate = new Date()
                    var n = fullDate.getDay();

                    //Thu May 19 2011 17:25:38 GMT+1000 {}

                    //convert month to 2 digits
                    var twoDigitMonth = ((fullDate.getMonth().length + 1) === 1) ? (fullDate.getMonth() + 1) : '0' + (fullDate.getMonth() + 1);

                    var currentDate = fullDate.getDate() + "/" + twoDigitMonth + "/" + fullDate.getFullYear();
                    document.getElementById("currentdate").innerHTML = currentDate;
                    StartCountDown();

                    var totalQuestions = 0;
                    totalQuestions = parseInt($("#QuestionsCountLabel").text());

                    for (var i = 1; i <= totalQuestions; i++) {

                        $('.btn-no').append($('<button/>').attr("id", "button_" + i).attr("onclick", "renderQuestionFromSidePanel(" + i + ");return false;").addClass('number').text(i).css({ 'cursor': 'pointer' }));

                    }

                    GetQuestions();



                    $("#btnnext").click(function () {
                        debugger;

                        var exactanswer = questions[pos]["QuestionAnswer"];

                        choices = document.getElementsByName("choices");
                        for (var i = 0; i < choices.length; i++) {
                            if (choices[i].checked) {
                                alert("Not click on Answer to skip questions, click on Save & Next to continue !");
                                return false;
                                // choice = choices[i].value;
                            }
                        }
                        if (choice == exactanswer) {
                            correct++;
                        }

                        pos++;
                        if ($("input[name='choices']:checked").val()) {
                            $("#button_" + pos).css("background-color", "#00cc99");
                            questions[pos - 1]["SelectedAnswer"] = $("input[name='choices']:checked").val();
                        }
                        else {
                            $("#button_" + pos).css("background-color", "#ff8533");
                        }
                        curr_pos++;
                        renderQuestion();


                    });



                    //$("#EndTestbtn").click(function () {
                    //    EndTest();


                    //});


                    $("#Button1").click(function () {
                        debugger;
                        var exactanswer = questions[pos]["QuestionAnswer"];

                        choices = document.getElementsByName("choices");
                        for (var i = 0; i < choices.length; i++) {
                            if (choices[i].checked) {
                                choice = choices[i].value;
                            }

                        }
                        if (choice == exactanswer) {
                            correct++;
                        }

                        pos++;
                        if ($("input[name='choices']:checked").val()) {
                            $("#button_" + pos).css("background-color", "#00cc99");
                            questions[pos - 1]["SelectedAnswer"] = $("input[name='choices']:checked").val();
                        }
                        else {
                            $("#button_" + pos).css("background-color", "#ff8533");
                        }
                        curr_pos++;
                        renderQuestion();


                    });

                });






                function Decrement() {

                    currentMinutes = Math.floor(secs / 60);
                    currentSeconds = secs % 60;
                    if (currentSeconds <= 9) currentSeconds = "0" + currentSeconds;
                    secs--;
                    document.getElementById("timerText").innerHTML = "Time Remaining :" + currentMinutes + ":" + currentSeconds;
                    if (secs !== -1) {
                        setTimeout('Decrement()', 1000);

                    }
                    else {
                        alert("Sorry, Your Time Has Been Expired...");
                        FetchStudentDetails();
                        window.location.href = "login.aspx?timeout=1"

                    }
                }


                function renderQuestion() {
                    debugger;

                    test = $("#test");
                    if (curr_pos >= questions.length) {

                        //$("#timerText").css("display", "none");
                        test.html("<h2>Your score is " + correct + "&nbsp;" + "out of" + "&nbsp;" + questions.length + "</h2>");


                        $("#test_status").html("Test Completed");
                        //EndCountDown();
                        EndTest();
                        pos = 0;
                        correct = 0;
                        return false;
                    }
                    $("#test_status").html("Question " + (curr_pos + 1) + " of " + questions.length);
                    question = questions[curr_pos]["Question"];
                    chA = questions[curr_pos]["Option1"];
                    chB = questions[curr_pos]["Option2"];
                    chC = questions[curr_pos]["Option3"];
                    chD = questions[curr_pos]["Option4"];
                    test.html("<p>" + question + "</p>" +
                    "<input type='radio' id='RadioA' name='choices' value='A'>" + chA + "<br>" +
                    "<input type='radio' id='RadioB' name='choices' value='B'> " + chB + "<br>" +
                    "<input type='radio' id='RadioC' name='choices' value='C'> " + chC + "<br>" +
                    "<input type='radio' id='RadioD' name='choices' value='D'> " + chD + "<br><br>");
                    //"<button class='btn'  type='button' onclick='checkAnswer()' >Save & Next</button>");

                    if (questions[curr_pos]["SelectedAnswer"] && questions[curr_pos]["SelectedAnswer"] != '') {
                        $("#Radio" + questions[curr_pos]["SelectedAnswer"]).attr('checked', 'checked');
                        $("input[name='choices']").attr('disabled', 'disabled');
                    }
                }

                function renderQuestionFromSidePanel(index) {
                    curr_pos = index - 1;
                    pos++;
                    if ($("input[name='choices']:checked").val()) {
                        questions[pos - 1]["SelectedAnswer"] = $("input[name='choices']:checked").val()
                    }
                    renderQuestion();
                    if (questions[pos - 1]["SelectedAnswer"] && questions[pos - 1]["SelectedAnswer"] != '') {
                        $("#button_" + pos).css("background-color", "#00cc99");
                    }
                    else {
                        $("#button_" + pos).css("background-color", "#ff8533");
                    }
                    pos = curr_pos;
                }


                function FetchStudentDetails() {
                    var obj = {};
                    obj.examname = '<%= Request.QueryString["exam"].ToString() %>';
            obj.obmarks = correct;
            obj.totalmarks = questions.length;
            debugger;
            $.ajax({
                type: "POST",
                url: "exam.aspx/FetchStudentDetails",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify(obj),
                dataType: "json",                
                success: function (response) {
                    var student = response.d;
                    var studentdetails = JSON.parse(student);
                    //alert(studentdetails);

                },
                failure: function (response) {
                    alert(response.d);
                }

            });

        }




        function GetQuestions() {
            $.ajax({
                type: "POST",
                url: "exam.aspx/GetData",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (response) {
                    var ds = response.d;
                    questions = JSON.parse(ds);
                    renderQuestion();

                },
                failure: function (response) {
                    alert(response.d);
                }

            });

        }
    </script>

</head>

<div class="topnav">
    <div class='container'>
        <div class="align-left">CPITM OES</div>
        <div class="align-right">WELCOME COMPUTER POINT</div>
        <p class="caption">Education website</p>
    </div>
</div>

<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="scrip1" runat="server"></asp:ScriptManager>
        <div>



            <div class="grid">
                <div class="box1">

                    <div class="qt">
                        <span id="currentday"></span>:
                        <span id="currentdate"></span>
                        <span id="timerText" class="view"></span>
                        <%--<div class="select-style">

                            <select id="selection">
                                <option value="eng">English</option>
                                <option value="ind">Indian</option>
                                <option value="chi">Chinese</option>
                            </select>

                        </div>--%>

                        <hr />

                        <br />
                        <br />

                        <%--  <div class="question"><p>A______put some question here?</p><br/><br/><br/><br/>
       
        <input type="radio" name="answer" value="first" checked="checked"/> first option<br/><br/>
        <input type="radio" name="answer" value="second"/> second option<br/><br/>
        <input type="radio" name="answer" value="third"/> third option<br/><br/>
        <input type="radio" name="answer" value="forth"/> forth option
       
        </div> --%>

                        <p style="color: red" id="test_status"></p>
                        <div id="test" style="border: none; font"></div>
                        <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Save & Next" OnClientClick="return false;" />
                        <asp:Button ID="btnnext" CssClass="btn" runat="server" Text="Skip Question" OnClientClick="return false;" />




                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <%-- <button type="submit" class="btn">Submit & Next</button> --%>
                    </div>
                </div>
                <div class="box2">
                    <asp:Button ID="logout" runat="server" CssClass="btn-logout" Text="Logout" OnClick="logout_Click" />
                    <%-- <p class="uname">User : </p>--%>


                    <strong>
                        <asp:Label ID="lblusername" runat="server" CssClass="uname"></asp:Label></strong>

                </div>
                <div class="box3">
                    <p class="numq">
                        Number of Questions : <strong>
                            <label id="QuestionsCountLabel" runat="server" />
                        </strong>
                    </p>
                    <hr />
                    <%-- <button id="btn2">20</button><span class="text">&nbspAnswer</span>
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <button id="btn3">8</button><sapn class="text">&nbspNot answered</sapn>
                    <br />
                    <br />
                    <br>
                    <button id="btn4">22</button><span class="text">&nbspnot visted</span>--%>
                </div>
                <div class="box4">
                    <label style="color: red" id="ptest_ended"></label>
                    <div id="btnno" class="btn-no" style="overflow-y: scroll">

                        <%--<button type="button" class="number-green">1</button>
                <button type="button" class="number-green">2</button>
                <button type="button" class="number-green">3</button>
                <button type="button" class="number-green">4</button>
                <button type="button" class="number-green">5</button>
                <button type="button" class="number-green">6</button>
                <button type="button" class="number-green">7</button>
                <button type="button" class="number-org">8</button>
                <button type="button" class="number-green">9</button>
                <button type="button" class="number-green">10</button>
                <button type="button" class="number-green">11</button>
                <button type="button" class="number-org">12</button>
                <button type="button" class="number-org">13</button>
                <button type="button" class="number-org">14</button>
                <button type="button" class="number-org">15</button>
                <button type="button" class="number-org">16</button>
                <button type="button" class="number-green">17</button>
                <button type="button" class="number-green">18</button>
                <button type="button" class="number-green">19</button>
                <button type="button" class="number-org">20</button>
                <button type="button" class="number-org">21</button>
                <button type="button" class="number-org">22</button>
                <button type="button" class="number">23</button>
                <button type="button" class="number">24</button>
                <button type="button" class="number">25</button>
                <button type="button" class="number">26</button>
                <button type="button" class="number">27</button>
                <button type="button" class="number">28</button>
                <button type="button" class="number">29</button>
                <button type="button" class="number">30</button>
                <button type="button" class="number">31</button>
                <button type="button" class="number">32</button>
                <button type="button" class="number">33</button>
                <button type="button" class="number">34</button>
                <button type="button" class="number">35</button>
                <button type="button" class="number">36</button>--%>
                        <%--<button class="number">37</button>
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
                <button class="number">50</button>--%>
                    </div>
                    <br />
                    <br />
                    <hr />
                    <br />
                    <div class="btn-final">
                        <input type="button" id="btnEndTest" runat="server" class="btn" onclick="EndTest();" value="End Test" />                        
                        <%-- <asp:Button ID="EndTestbtn" runat="server" CssClass="btn" OnClick="EndTestbtn_Click"    Text="End Test" />--%>
                        <input type="hidden" id="hiddenscore" runat="server" name="score" />
                    </div>
                </div>
            </div>


            <%--<h2 id="test_status"></h2>
<div id="test"></div>--%>
        </div>

    </form>
</body>
</html>
