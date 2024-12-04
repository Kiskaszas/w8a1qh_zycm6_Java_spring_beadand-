$(document).ready(function () {
    $('#contactForm').on('submit', function (e) {
        e.preventDefault();

        // Gyűjtsd össze az űrlap adatait
        const message = {
            sender: $('#sender').val(),
            content: $('#content').val()
        };

        // AJAX POST hívás
        $.ajax({
            url: '/contact/send-message',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(message),
            success: function () {
                // Értesítés megjelenítése
                showNotification('Üzenet sikeresen elküldve!');
                $('#contactForm')[0].reset(); // Az űrlap mezőinek törlése
            },
            error: function (xhr, status, error) {
                // Hiba esetén értesítés megjelenítése
                showNotification('Hiba történt az üzenet küldése során: ' + error, true);
                console.error(xhr.responseText);
            }
        });
    });

    function showNotification(message, isError = false) {
        const notification = $('#notification');
        const notificationMessage = $('#notification-message');

        notificationMessage.text(message);
        notification.removeClass('hidden');
        if (isError) {
            notification.addClass('error');
        } else {
            notification.removeClass('error');
        }

        setTimeout(() => {
            notification.addClass('hidden');
        }, 5000);
    }
});