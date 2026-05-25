---
permalink: /
title: "Hello! I'm Vignesh, welcome to my webpage."
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---
I am a mathematician working in commutative algebra and algebraic geometry, specifically studying singularities in positive and mixed characteristic. 

I am currently a Visiting Assistant Professor at North Dakota State University, mentored by [Janet Page](https://sites.google.com/ndsu.edu/janet-page). In 2026 I received my PhD in Mathematics from the University of Illinois Chicago (UIC), advised by [Kevin Tucker](https://sites.google.com/uic.edu/kftucker/). Before this, I was a quantitative trader and researcher in the energy markets. Before that, I did my BS and MS in Math while racing [solar powered cars](https://www.solarcar.engin.umich.edu/) at the University of Michigan. <span style="background-color:#00274C; color:#FFCB05; padding:2px 6px; border-radius:4px;"> Go Blue!</span>  






<div style="height: 8rem;"></div>
<div style="
  background: rgba(255,255,255,0.06);
  border: 1px solid rgba(255,255,255,0.12);
  border-radius: 12px;
  color: white;
  backdrop-filter: blur(6px);
  -webkit-backdrop-filter: blur(6px);
">



<h3 style="text-align: center;">Me doing things in various places</h3>

<!-- =========================
     RANDOMIZED IMAGE CAROUSEL
     academicpages / Jekyll compatible
     ========================= -->

<!-- Swiper CSS -->
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
/>

<style>
  .random-carousel {
    width: 65%;
    max-width: 550px;
    margin: 2rem auto;
    border-radius: 18px;
    overflow: hidden;
  }

  .random-carousel .swiper-slide {
    position: relative;
    background: #000;
  }

  .random-carousel img {
    width: 100%;
    height: 350px;
    object-fit: cover;
    display: block;
  }

  .carousel-caption {
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    padding: 1.25rem;
    background: linear-gradient(
      to top,
      rgba(0,0,0,0.85),
      rgba(0,0,0,0.0)
    );
    color: white;
  }

  .carousel-caption h3 {
    margin: 0 0 0.4rem 0;
    font-size: 1.4rem;
  }

  .carousel-caption p {
    margin: 0;
    font-size: 1rem;
  }

  .swiper-button-next,
  .swiper-button-prev {
    color: white;
  }

  @media (max-width: 900px) {
    .random-carousel img {
      height: 450px;
    }
  }

  @media (max-width: 600px) {
    .random-carousel img {
      height: 300px;
    }

    .carousel-caption h3 {
      font-size: 1rem;
    }

    .carousel-caption p {
      font-size: 0.85rem;
    }
  }
</style>

<!-- Carousel -->
<div class="swiper random-carousel">
  <div class="swiper-wrapper" id="carousel-wrapper"></div>

  <div class="swiper-button-next"></div>
  <div class="swiper-button-prev"></div>
</div>

<!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

<script>
  /*
    Put your images in:

    /images/carousel/

    You may use any filenames you want.
  */

  const filenames = [
    "2018_SCTFinish.jpg",
    "2020_Arlington.jpg",
    "2020_VegasFerrisWheel.jpg",
    "2022_Wrightbrothers.jpg",
    "2023_ArchTour.jpg",
    "2023_Breakfast.jpg",
    "2023_ContainerStore.jpg",
    "2023_Dashunabe.jpg",
    "2023_pirate.jpg",
    "2024_Amsterdam.jpg",
    "2024_AmsterdamSolo.jpg",
    "2024_Beer.jpg",
    "2024_InnsbruckBase.jpg",
    "2024_innsbruckMountain.jpg",
    "2024_Mainz.jpg",
    "2024_Robin.jpg",
    "2024_Zurich.jpg",
    "2025_BanffBig1.jpg",
    "2025_BanffBig2.jpg",
    "2025_BanffGroup.jpg",
    "2025_BanffSolo.jpg",
    "2025_Camino.jpg",
    "2025_CatCradle.jpg",
    "2025_Corn.jpg",
    "2025_KarenConf.jpg",
    "2025_MadridCathedral.jpg",
    "2025_OutsideCat.jpg",
    "2025_PostCamino.jpg",
    "2025_PreCamino.jpg",
    "2025_RobinLecture.jpeg",
    "2025_SRIHike_Small.jpg",
    "2025_SRIHikeBig.jpg",
    "2025_Toronto.jpg",
    "2025MadridPark.jpg",
    "2026_COLD.jpg",
    "2026_GradClass.jpg",
    "2026_JMMDC.jpg",
    "2026_JSmithSphynx.jpg",
    "2026_PhDGrad.HEIC",
    "2026_SearsTower.HEIC",
    "2026_ThesisDefense.jpeg"
  ];

  const descriptions = [
    "Bend, Oregon (2018)",
    "Arlington, Virginia (2020)",
    "Las Vegas, Nevada (2020)",
    "Kill Devil Hills, North Carolina (2022)",
    "Chicago, Illinois (2023)",
    "Chicago, Illinois (2023)",
    "Chicago, Illinois (2023)",
    "Boulder, Colorado (2023)",
    "Chicago, Illinois (2023)",
    "Amsterdam, The Netherlands (2024)",
    "Amsterdam, The Netherlands (2024)",
    "Utrecht, The Netherlands (2024)",
    "Innsbruck, Austria (2024)",
    "Innsbruck, Austria (2024)",
    "Frankfurt, Germany (2024)",
    "Chicago, Illinois (2024)",
    "Zurich, Switzerland (2024)",
    "Banff, Alberta (2025)",
    "Banff, Alberta (2025)",
    "Banff, Alberta (2025)",
    "Banff, Alberta (2025)",
    "Neda, Spain (2025)",
    "Chicago, Illinois (2025)",
    "'The Fun Farm', Nebraska (2025)",
    "Guanajuato, Mexico (2025)",
    "Madrid, Spain (2025)",
    "Chicago, Illinois (2025)",
    "Santiago De Compostela, Spain (2025)",
    "Madrid, Spain (2025)",
    "Chicago, Illinois (2025)",
    "near Boulder, Colorado (2025)",
    "near Fort Collins, Colorado (2025)",
    "Toronto, Canada (2025)",
    "Madrid, Spain (2025)",
    "Chicago, Illinois (2026)",
    "Chicago, Illinois (2026)",
    "Washington D.C. (2026)",
    "Salt Lake City, Utah (2026)",
    "Chicago, Illinois (2026)",
    "Sears Tower, Chicago, Illinois (2026)",
    "Chicago, Illinois (2026)"
  ];

  const titles = [
    "Racing a Solar Car",
    "Working in Industry",
    "Tallest Ferris Wheel in the US",
    "Wright Brothers Memorial",
    "Architecture Tour",
    "6AM TA Breakfast",
    "The Container Store",
    "Dashunabe Tea House",
    "Arr Matey",
    "Train Museum Exhibit",
    "Amsterdam in the Fall",
    "Beer",
    "Zoo at the base of a Mountain",
    "The Top of Innsbruck",
    "Lovely German Trains",
    "Cat on Shoulder",
    "Half Steamed",
    "Lake Louise in Banff",
    "Lake Louise in Banff",
    "Lake Louise in Banff",
    "Lake Louise in Banff",
    "On El Camino",
    "Robin, the Cat",
    "Consumed by the Corn",
    "Karen Smith's 65th Birthday Conference",
    "Spanish Cathedral",
    "Outside Cat",
    "At the End of El Camino",
    "On the Way to El Camino",
    "Lecture for Cat",
    "Summer Research Institute Hike",
    "Summer Research Institute Hike",
    "The CN Tower",
    "El Retiro Park",
    "COLD!",
    "UIC PhD Graduates",
    "Mathematics Advocacy at the JMM",
    "GilGal Sculpture Garden (with Joseph Smith)",
    "Graduation",
    "Tall Jump",
    "My Thesis Defense"
  ];

  const images = [];

  for (let i = 0; i < filenames.length; i++) {
    images.push({
      src: `/images/carousel/${filenames[i]}`,
      title: titles[i],
      description: descriptions[i]
    });
  }

  // Fisher-Yates shuffle
  function shuffle(array) {
    for (let i = array.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [array[i], array[j]] = [array[j], array[i]];
    }
  }

  // Randomize order on every page load
  shuffle(images);

  const wrapper = document.getElementById("carousel-wrapper");

  images.forEach(image => {
    const slide = document.createElement("div");
    slide.className = "swiper-slide";

    slide.innerHTML = `
      <img src="${image.src}" alt="${image.title}">

      <div class="carousel-caption">
        <h3>${image.title}</h3>
        <p>${image.description}</p>
      </div>
    `;

    wrapper.appendChild(slide);
  });

  new Swiper(".random-carousel", {
    loop: true,

    autoplay: {
      delay: 3500,
      disableOnInteraction: false,
    },

    speed: 1200,

    centeredSlides: true,

    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },

    keyboard: {
      enabled: true,
    },
  });
</script>

</div>
