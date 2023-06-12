
$(function () {
    function display(bool) {
        if (bool) {
            $("#menucreate").show();
        } else {
            $("#menucreate").hide();
        }
    }

    display(false)

    window.addEventListener('message', (event) => {
        var data = event.data;
        if (data.type === 'ui') {
            if (data.status == true) {   
                display(true)
            } else {
                display(false)
            }
        }
        if(data.type === 'servernameset') {
            document.getElementById('sname').textContent = data.name;
        }
        if(data.type === 'menuname') {
            document.getElementById('title').textContent = data.mname;
        }
        if(data.type === 'getdesctxt') {
            document.getElementById('description').textContent = data.desctxt;
        }

        if(data.type === 'discordclick') {
            window.invokeNative('openUrl', data.dget);
        }
        if(data.type === 'tebexclick') {
            window.invokeNative('openUrl', data.tget);
        }
        if(data.type === 'websiteclick') {
            window.invokeNative('openUrl', data.wget);
        }
    });

    $("#discord").click(function () {
        $.post('https://swifty-help/discord', JSON.stringify({}));
        return;
    })
    $("#tebex").click(function () {
        $.post('https://swifty-help/tebex', JSON.stringify({}));
        return;
    })
    $("#website").click(function () {
        $.post('https://swifty-help/website', JSON.stringify({}));
        return;
    })

    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post('https://swifty-help/exit', JSON.stringify({}));
            return
        }
    };

})



