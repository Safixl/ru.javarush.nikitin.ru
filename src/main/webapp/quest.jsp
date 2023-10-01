
<%@ page import="ru.javarush.nikitin.quest.Essence" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Text Quest</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script src="<c:url value="/static/m.js"/>"></script>
</head>
<body background="https://foni.club/uploads/posts/2023-01/1673523613_foni-club-p-krutie-oboi-bomba-23.jpg">

<c:set var="BOMB" value="<%=Essence.BOMB%>"/>
<c:set var="YELLOWWIRE" value="<%=Essence.YELLOWWIRE%>"/>
<c:set var="GRAYNWIRE" value="<%=Essence.GRAYNWIRE%>"/>
<c:set var="GREENWIRE" value="<%=Essence.GREENWIRE%>"/>
<c:set var="BLUEWIRE" value="<%=Essence.BLUEWIRE%>"/>
<c:set var="WATHEBLUEWIRE" value="<%=Essence.WATHEBLUEWIRE%>"/>



<c:if test="${essence == BOMB}">
    <div class="container">
        <h1 class ="text-center">Бомба</h1>
    <hr>
    <p>Тебе поступил вызов из управления по особо важным делам, попросиди срочно приехать</p>
    <p>Добрались вовремя еще не все потеряно, быстро введу тебя в ход дела</p>
    <p>В здании заложили взрывчатку, наши люди уже ее нашли но обезведить ее не получается</p>
    <p>Только ты нам можешь помочь, держи инструменты и вперед</p>
    <p>Так бомбу я нашел, осталось ее только обезвредить, так с какого же провода начать?</p>

    </div>
</c:if>

<c:if test="${essence == YELLOWWIRE}">
<div class="container">
    <h1 class ="text-center">Время на исходе</h1>
    <hr>
    <p>Желтый провод отвечал за заземление и ловил инпульсные напряжения</p>
    <p>Надо торопиться если малешее статическое напряжение будет поймано...</p>
    <p>Не нужно о таком думать так что у нас там дальше</p>
</div>
</c:if>

<c:if test="${essence == GRAYNWIRE}">
<div class="container">
    <h1 class ="text-center">ПОРАЖЕНИЕ</h1>
    <hr>
</div>
  </c:if>

<c:if test="${essence == GREENWIRE}">
<div class="container">
    <h1 class ="text-center">ПОРАЖЕНИЕ</h1>
    <hr>
</div>
  </c:if>

<c:if test="${essence == BLUEWIRE}">
<div class="container">
    <h1 class ="text-center">Последний шанс</h1>
    <hr>
    <p>О нет кажется дела как никогда хуже некуда</p>
    <p>Осталось 10 секуд до детонаци... что же делать?!</p>
    <p>Бежать!.. Нет! Я все равно не успе... Надо рискнуть что там дальше?</p>
</div>
</c:if>

<c:if test="${essence == WATHEBLUEWIRE}">
<div class="container">
<h1 class ="text-center">ПОБЕДА!</h1>
<hr>
<p>Никто и не сомневался что у тебя получится, не зря тебя вызывали с выходного</p>
<p>Ты сегодня просто герой, не побоялся и без защиты лишь с одними кусачками обезвредил эту бомбу</p>
<p>Наши поздравления, а теперь иди отдыхай, или можешь отправиться на следующее задание</p>
</div>
</c:if>



<div class="container" id="options-container">
    <form id="options-form">

        <c:if test="${essence == BOMB}">
            <button type="button" class="btn btn-warning" onclick="selectOption('yellow')">Перерезать Желтый</button>
            <button type="button" class="btn btn-secondary" onclick="selectOption('gray')">Перерезать Серый</button>
        </c:if>
        <c:if test="${essence == YELLOWWIRE}">
            <button type="button" class="btn btn-success" onclick="selectOption('green')">Перерезать Зеленый</button>
            <button type="button" class="btn btn-primary" onclick="selectOption('blue')">Перерезать Синий</button>
            <button type="button" class="btn btn-secondary" onclick="selectOption('gray')">Перерезать Серый</button>
        </c:if>
        <c:if test="${essence == GRAYNWIRE}">
            <button type="button" class="btn btn-outline-danger" onclick="restart()">Попробовать еще раз</button>
        </c:if>
        <c:if test="${essence == GREENWIRE}">
            <button type="button" class="btn btn-outline-danger" onclick="restart()">Попробовать еще раз</button>
        </c:if>
        <c:if test="${essence == BLUEWIRE}">
            <button type="button" class="btn btn-secondary" onclick="selectOption('gray')">Перерезать Серый</button>
            <button type="button" class="btn btn-success" onclick="selectOption('green')">Перерезать Зеленый</button>
            <button type="button" class="btn btn-info" onclick="selectOption('win')">Перерезать Голубой</button>
            </c:if>
        <c:if test="${essence == WATHEBLUEWIRE}">
            <button type="button" class="btn btn-outline-danger" onclick="restart()">Начать заново</button>
        </c:if>
    </form>
</div>

<div class="container" id="story-container">

    <c:if test="${essence == GRAYNWIRE}">
        <p>Ты перерезал провод экстренной дитонации</p>
        <p>Ты Труп</p>
        <img src="https://img.freepik.com/premium-vector/cartoon-boom-explosion-comic-speech-bubble-comic-book-page_93083-264.jpg" class="image" alt="Описание изображения...">
    </c:if>
    <c:if test="${essence == GREENWIRE}">
        <p>Ты перерезал провод отвечающий за время детонации</p>
        <p>Ты Труп</p>
        <img src="https://img.freepik.com/premium-vector/cartoon-boom-explosion-comic-speech-bubble-comic-book-page_93083-264.jpg" class="image" >
    </c:if>
    <c:if test="${essence == BLUEWIRE}">
        <p>Перерезав Желтый провод тебе удалось добраться до синего провода</p>
        <p>Какой провод выберешь теперь?</p>
        <img src="https://www.meme-arsenal.com/memes/0116e0390bd274509567987257bb93a4.jpg" class="image" >
    </c:if>
    <c:if test="${essence == WATHEBLUEWIRE}">
        <p>Поздравляю ты обезвредил бомбу</p>
        <img src="https://ekb.topkvestov.ru/storage/app/uploads/public/5ae/1df/4b2/5ae1df4b20cf7723537760.jpg" class="image" >
    </c:if>
    <c:if test="${essence == YELLOWWIRE}">
        <p>Перерезав желтый провод ты смог добраться до еще 2 проводов</p>
        <p>Какой будешь резать теперь?</p>
        <img src="https://www.meme-arsenal.com/memes/5df61a356b4259dbb2deb7dbdf6f49d1.jpg" class="image" >
    </c:if>

</div>

<script>

    function restart() {
        $.ajax({
            url: '/restart',
            type: 'POST',
            async: false,
            success: function () {
                location.reload();
            }
        });
    }

    function selectOption(action) {
        $.ajax({
            type: 'POST',
            url: 'quest',
            data: { action: action },
            success: function() {
                location.reload();
            }
        });
    }

</script>

</body>
</html>