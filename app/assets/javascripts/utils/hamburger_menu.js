// jQuery for user profile pages
$(() => {
  if ($(window).width() <= 500) {
    if ($('.uls-trigger').length > 0) {
      $('.ham-nav__site-logo').css({ "margin-left": '-34% ' });
    }
    else {
      $('.ham-nav__site-logo').css({ "margin-left": '-50% ' });
    }
  }
});
