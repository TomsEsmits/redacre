/* globals Glide */
"use strict";

new Glide(".tools__slider", {
  startAt: 1,
  focusAt: "center",
  perView: 3,
  gap: 187,
  breakpoints: {
    1300: {
      gap: 50,
    },
    991: {
      perView: 2,
      focusAt: 1,
    },
    767: {
      perView: 1,
      focusAt: 0,
      gap: 0,
      peek: {
        before: 0,
        after: 65,
      },
    },
  },
}).mount();
