require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()

import "bootstrap";
import AOS from 'aos';
import 'aos/dist/aos.css';
import 'slick-carousel';
import 'slick-carousel/slick/slick.scss'
import 'slick-carousel/slick/slick-theme.scss'
import { initUpdateNavbarOnScroll } from '../components/navbar';
AOS.init();

import '../components/alert';
import '../components/tabs';
import '../components/slick';
import '../components/scroll';
import '../components/flatpickr';
initUpdateNavbarOnScroll()
import { enableBtn } from '../components/recaptcha';
window.enableBtn = enableBtn
console.log("logss")
