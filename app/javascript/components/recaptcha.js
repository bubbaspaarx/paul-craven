const enableBtn = () => {
  // document.getElementById("button1").style.display = "block";
  document.getElementById("button1").style.display = "block";
}

// document.getElementById("button1").style.display = "none";
document.getElementById("button1").style.display = "none";

const recaptcha = document.querySelectorAll(".g-recaptcha")

recaptcha.forEach((captcha) => {
  captcha.setAttribute("data-callback", "enableBtn");
})

export { enableBtn }
