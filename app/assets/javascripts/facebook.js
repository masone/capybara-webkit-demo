var Facebook = function() {
  var login = function() {
    FB.login(function(response) {
      if (response.authResponse) {
        FB.api('/me', function(response) {
          $('#me').text(response.name);
        });
      }
    });
  };

  var initialize = function() {
    $('#login').click(function() {
      login();
    });

    $('#post').click(function() {
      FB.ui({method: 'feed',
        link: 'https://developers.facebook.com/docs/reference/dialogs/',
        picture: 'http://fbrell.com/f8.jpg',
        name: 'Facebook Dialogs',
        caption: 'Reference Documentation',
        description: 'Using Dialogs to interact with users.',
        display: 'popup'
      });
    });

    $('#request').click(function() {
      FB.ui({method: 'apprequests',
        message: 'My Great Request',
        display: 'popup'
      });
    });
  };

  return {
    initialize: initialize
  }
}();
