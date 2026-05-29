---
permalink: /
title: "Hello! I'm Vignesh, welcome to my webpage."
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


<!-- Carousel CSS -->
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

<div class="swiper random-carousel">
  <div class="swiper-wrapper" id="carousel-wrapper"></div>

  <div class="swiper-button-next"></div>
  <div class="swiper-button-prev"></div>
</div>

<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

<script>

//images in images/carousel. just add another triple here
  const images = [
    ["2018_SCTFinish.jpg", "Racing a Solar Car", "Bend, Oregon (2018)"],
    ["2020_Arlington.jpg", "Working in Industry", "Arlington, Virginia (2020)"],
    ["2020_VegasFerrisWheel.jpg", "Tallest Ferris Wheel in the US", "Las Vegas, Nevada (2020)"],
    ["2022_Wrightbrothers.jpg", "Wright Brothers Memorial", "Kill Devil Hills, North Carolina (2022)"],
    ["2023_ArchTour.jpg", "Architecture Tour", "Chicago, Illinois (2023)"],
    ["2023_Breakfast.jpg", "6AM TA Breakfast", "Chicago, Illinois (2023)"],
    ["2023_ContainerStore.jpg", "The Container Store", "Chicago, Illinois (2023)"],
    ["2023_Dashunabe.jpg", "Dashunabe Tea House", "Boulder, Colorado (2023)"],
    ["2023_pirate.jpg", "Arr Matey", "Chicago, Illinois (2023)"],
    ["2024_Amsterdam.jpg", "Train Museum Exhibit", "Amsterdam, The Netherlands (2024)"],
    ["2024_AmsterdamSolo.jpg", "Amsterdam in the Fall", "Amsterdam, The Netherlands (2024)"],
    ["2024_Beer.jpg", "Beer", "Utrecht, The Netherlands (2024)"],
    ["2024_InnsbruckBase.jpg", "Zoo at the base of a Mountain", "Innsbruck, Austria (2024)"],
    ["2024_innsbruckMountain.jpg", "The Top of Innsbruck", "Innsbruck, Austria (2024)"],
    ["2024_Mainz.jpg", "Lovely German Trains", "Frankfurt, Germany (2024)"],
    ["2024_Robin.jpg", "Cat on Shoulder", "Chicago, Illinois (2024)"],
    ["2024_Zurich.jpg", "Half Steamed", "Zurich, Switzerland (2024)"],
    ["2025_BanffBig1.jpg", "Lake Louise in Banff", "Banff, Alberta (2025)"],
    ["2025_BanffBig2.jpg", "Lake Louise in Banff", "Banff, Alberta (2025)"],
    ["2025_BanffGroup.jpg", "Lake Louise in Banff", "Banff, Alberta (2025)"],
    ["2025_BanffSolo.jpg", "Lake Louise in Banff", "Banff, Alberta (2025)"],
    ["2025_Camino.jpg", "On El Camino", "Neda, Spain (2025)"],
    ["2025_CatCradle.jpg", "Robin, the Cat", "Chicago, Illinois (2025)"],
    ["2025_Corn.jpg", "Consumed by the Corn", "'The Fun Farm', Nebraska (2025)"],
    ["2025_KarenConf.jpg", "Karen Smith's 65th Birthday Conference", "Guanajuato, Mexico (2025)"],
    ["2025_MadridCathedral.jpg", "Spanish Cathedral", "Madrid, Spain (2025)"],
    ["2025_OutsideCat.jpg", "Outside Cat", "Chicago, Illinois (2025)"],
    ["2025_PostCamino.jpg", "At the End of El Camino", "Santiago De Compostela, Spain (2025)"],
    ["2025_PreCamino.jpg", "On the Way to El Camino", "Madrid, Spain (2025)"],
    ["2025_RobinLecture.jpeg", "Lecture for Cat", "Chicago, Illinois (2025)"],
    ["2025_SRIHike_Small.jpg", "Summer Research Institute Hike", "near Boulder, Colorado (2025)"],
    ["2025_SRIHikeBig.jpg", "Summer Research Institute Hike", "near Fort Collins, Colorado (2025)"],
    ["2025_Toronto.jpg", "The CN Tower", "Toronto, Canada (2025)"],
    ["2025MadridPark.jpg", "El Retiro Park", "Madrid, Spain (2025)"],
    ["2026_COLD.jpg", "COLD!", "Chicago, Illinois (2026)"],
    ["2026_GradClass.jpg", "UIC PhD Graduates", "Chicago, Illinois (2026)"],
    ["2026_JMMDC.jpg", "Mathematics Advocacy at the JMM", "Washington D.C. (2026)"],
    ["2026_JSmithSphynx.jpg", "GilGal Sculpture Garden (with Joseph Smith)", "Salt Lake City, Utah (2026)"],
    ["2026_PhDGrad.jpg", "Graduation", "Chicago, Illinois (2026)"],
    ["2026_SearsTower.jpg", "Tall Jump", "Sears Tower, Chicago, Illinois (2026)"],
    ["2026_ThesisDefense.jpeg", "My Thesis Defense", "Chicago, Illinois (2026)"]
  ];

  const imagesData = images.map(([filename, title, description]) => ({
    src: `/images/carousel/${filename}`,
    title,
    description
  }));

  // Fisher-Yates shuffle
  function shuffle(array) {
    for (let i = array.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [array[i], array[j]] = [array[j], array[i]];
    }
  }

  shuffle(imagesData);

  const wrapper = document.getElementById("carousel-wrapper");

  // generate carousel in random order, with title and descriptions
  imagesData.forEach(image => {
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
