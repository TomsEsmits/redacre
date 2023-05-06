/* globals WOW */
"use strict";

class SiteFunctions {
  constructor() {
    this.header = document.querySelector(".site-header");
    this.menuTopElements = [
      ...document.querySelectorAll(".site-header__navbar .menu-item"),
    ];
    this.mobileMenuIcon = document.querySelector(".site-header__mob-menu-icon");
    this.navigation = document.querySelector(".site-header__navbar");
    this.main = document.querySelector("#main");
    this.footer = document.querySelector(".site-footer");
    this.footerTitles = [
      ...document.querySelectorAll(".site-footer__column-title"),
    ];
    this.footerLists = [
      ...document.querySelectorAll(".site-footer__column-list"),
    ];

    this.handleWindowScroll();
    this.headerMenuFunctions();
    this.mobileMenuFunctions();
    this.footerFunctions();
    new WOW().init();
  }

  handleWindowScroll() {
    window.addEventListener("scroll", () => {
      if (window.matchMedia("(min-width: 992px)").matches) {
        if (window.scrollY > 45) {
          this.header.classList.add("site-header--sticky-top");
        } else {
          this.header.classList.remove("site-header--sticky-top");
        }
      }
    });
  }

  headerMenuFunctions() {
    if (this.menuTopElements) {
      this.menuTopElements.map((item) => {
        item.addEventListener("click", (e) => {
          if (e.target !== e.currentTarget) return;

          if (!item.classList.contains("active")) {
            this.#closeAll(this.menuTopElements);

            item.classList.add("active");
          } else {
            item.classList.toggle("active");
          }
        });
      });
    }
  }

  mobileMenuFunctions() {
    this.mobileMenuIcon.addEventListener("click", () => {
      this.navigation.classList.toggle("active");
      this.main.classList.toggle("menu-open");
      this.footer.classList.toggle("menu-open");
    });
  }

  footerFunctions() {
    this.footerTitles.map((title) => {
      title.addEventListener("click", () => this.#handleClick(title));
    });
  }

  #closeAll(elements) {
    if (elements) {
      elements.map((element) => {
        element.classList.remove("active");
      });
    }
  }

  #handleClick(title) {
    this.windowWidth = window.innerWidth;

    if (this.windowWidth <= 991) {
      this.listElement = title.parentElement.querySelector(
        ".site-footer__column-list"
      );

      if (!title.classList.contains("active")) {
        this.#closeAll(this.footerTitles);
        this.#closeAll(this.footerLists);

        title.classList.add("active");
      } else {
        title.classList.toggle("active");
      }

      if (window.getComputedStyle(this.listElement).display !== "none") {
        this.listElement.classList.remove("active");
      } else {
        this.listElement.classList.add("active");
      }
    }
  }
}

new SiteFunctions();
