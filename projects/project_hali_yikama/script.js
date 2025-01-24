const slider = document.querySelector('.slider');
const slides = document.querySelectorAll('.slide');
const prevBtn = document.querySelector('.prev');
const nextBtn = document.querySelector('.next');

let index = 0;

// Slaytı göster
function showSlide(index) {
  const slideWidth = slides[0].clientWidth;
  slider.style.transform = `translateX(${-index * slideWidth}px)`;
}

// Önceki slayt
prevBtn.addEventListener('click', () => {
  index = index > 0 ? index - 1 : slides.length - 1;
  showSlide(index);
});

// Sonraki slayt
nextBtn.addEventListener('click', () => {
  index = index < slides.length - 1 ? index + 1 : 0;
  showSlide(index);
});

// Otomatik slayt
setInterval(() => {
  index = index < slides.length - 1 ? index + 1 : 0;
  showSlide(index);
}, 5000);
