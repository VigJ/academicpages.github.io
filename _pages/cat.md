---
permalink: /cat
title: "Pictures of Robin doing things in various places"
author_profile: true
---

<style>
  .quilt-gallery {
    column-count: 3;
    column-gap: 1rem;
    width: 100%;
    margin-top: 2rem;
  }

  .gallery-item {
    position: relative;
    margin-bottom: 1rem;
    break-inside: avoid;
    overflow: hidden;
    border-radius: 14px;
    background: #f3f3f3;
  }

  .gallery-item img {
    width: 100%;
    height: auto;
    display: block;

    transition:
      transform 0.35s ease,
      filter 0.35s ease;
  }

  .gallery-item:hover img {
    transform: scale(1.03);
    filter: brightness(0.75);
  }

  .gallery-caption {
    position: absolute;
    inset: 0;

    display: flex;
    align-items: center;
    justify-content: center;

    padding: 1rem;

    color: white;
    text-align: center;
    font-size: 1rem;
    line-height: 1.4;

    opacity: 0;
    transition: opacity 0.3s ease;

    background: rgba(0,0,0,0.35);
  }

  .gallery-item:hover .gallery-caption {
    opacity: 1;
  }

  @media (max-width: 900px) {
    .quilt-gallery {
        column-count: 2;
    }
  }

  @media (max-width: 600px) {
    .quilt-gallery {
      column-count: 1;
    }

    .gallery-caption {
      font-size: 0.9rem;
    }
  }

.gallery-item.expanded {
  position: fixed;
  inset: 0;                 /* fills entire screen */

  z-index: 99999999;

  display: flex;
  align-items: center;
  justify-content: center;

  background: rgba(0, 0, 0, 0.97);  /* full blackout */

  margin: 0;
}

.gallery-item.expanded img {
  max-width: 92vw;
  max-height: 92vh;

  object-fit: contain;

  border-radius: 16px;      /* rounded image edges */
  box-shadow: 0 10px 50px rgba(0,0,0,0.6);

  transform: none !important;
}





.gallery-item.expanded .gallery-caption {
  opacity: 1;
  position: absolute;
  bottom: 0;
  top: auto;
  inset-inline: 0;
}

</style>

<div class="quilt-gallery" id="quilt-gallery"></div>

<script>

  const images = [
    ["1.jpg", "on lap"],
    ["2.jpg", "napping"],
    ["3.jpg", "lifted up"],
    ["4.jpg", "hiding"],
    ["5.jpg", "a queen with her crown!"],
    ["6.jpg", "probably her highest quality picture"],
    ["7.jpg", "she cannot stand this leash"],
    ["8.jpg", "lurking above"],
    ["9.jpg", "lurking above (as kitten)"],
    ["10.jpg", "air jail"],
    ["11.jpg", "all those boxes are soylent"],
    ["12.jpg", "burrowed"],
    ["13.jpg", "hmm?"],
    ["14.jpg", "in the laundry"],
    ["15.jpg", "aerodynamic"],
    ["16.jpg", "lounging high up"],
    ["17.jpg", "in box"],
    ["18.jpg", "flopped"],
    ["19.jpg", "basking in box"],
    ["20.jpg", "basking on her blanket"],
    ["21.jpg", "before a BIG yawn"],
    ["22.jpg", "BIG yawn"],
    ["23.jpg", "surprised"],
    ["24.jpg", "yawning in front of classified info"],
    ["25.jpg", "bright!"],
    ["26.jpg", "toleration"],
    ["27.jpg", "glowing eyes"],
    ["28.jpg", "regal stance"],
    ["29.jpg", "regal stance"],
    ["30.jpg", "perched on my shoulder"],
    ["31.jpg", "perched on my shoulder"],
    ["32.jpg", "so white so bright"],
    ["33.jpg", "looking"],
    ["34.jpg", "caught on film"],
    ["35.jpg", "plopped"],
    ["36.jpg", "loafed on lunch"],
    ["37.jpg", "enjoying her gift"],
    ["38.jpg", "behind a Kettle Run finisher"],
    ["39.jpg", "spotlight"],
    ["40.jpg", "kitten head shape"],
    ["41.jpg", "kitten nap on lap"],
    ["42.jpg", "Pondering eating an origami"],
    ["43.jpg", "keeping warm"],
    ["44.jpg", "she doesn't fit in this anymore :("],
    ["45.jpg", "blocking my calendar"],
    ["46.jpg", "in box"],
    ["47.jpg", "eating box"],
    ["48.jpg", "with her namesake!"],
    ["49.jpg", "lurking on desk"],
    ["50.gif", "hey! turn that off!"],
    ["51.jpg", "a photogenic nap"],
    ["52.jpg", "twist"],
    ["53.jpg", "nap on warm pillow"],
    ["54.jpg", "visiting another's tree"],
    ["55.jpg", "meow"],
    ["56.jpg", "fully plopped"],
    ["57.jpg", "her favorite box"],
    ["58.jpg", "in Ann Arbor"],
    ["59.jpg", "had a long day!"],
    ["60.jpg", "POV: dragon"],
    ["61.jpg", "her first birthday (cake)"],
    ["62.jpg", "standing up"],
    ["63.jpg", "F1 driver"],
    ["64.jpg", "rolling around"],
    ["65.jpg", "a perfect loaf"],
    ["66.jpg", "weekly post laundry blanketing"],
    ["67.jpg", "patiently waiting"],
    ["68.jpg", "huh?"],
    ["69.jpg", "pillow tap"],
    ["70.jpg", "dressed up for Halloween"],
    ["71.jpg", "I cannot express how much she hated this"],
    ["72.jpg", "sitting about"],
    ["73.jpg", "On my office Soylent haul"],
    ["74.jpg", "noble steed"],
    ["75.jpg", "double blanket stack"],
    ["76.jpg", "scooped!"],
    ["77.jpg", "lounging up high"],
    ["78.jpg", "peek!"],
    ["79.jpg", "Our first picture together at the shelter!"],
    ["80.jpeg", "appreciative"],
    ["81.jpeg", "literature review"],
    ["82.jpeg", "literature review"],
    ["83.jpeg", "burned her paw by swatting a candle :("],
    ["84.jpeg", "flabbergasted"],
    ["85.jpeg", "box-ception"],
    ["86.jpg", "kitten eyes"],
  ];

  const gallery = document.getElementById("quilt-gallery");


    // Fisher-Yates shuffle
    function shuffle(array) {
      for (let i = array.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [array[i], array[j]] = [array[j], array[i]];
      }
    }
    shuffle(images);

  // print out images, in shuffled order, with captions
  images.forEach(([filename, caption]) => {
    const item = document.createElement("div");
    item.className = "gallery-item";

    item.innerHTML = `
      <img
        src="/images/Cat/${filename}"
        alt="${caption}"
        loading="lazy"
      >

      <div class="gallery-caption">
        ${caption}
      </div>
    `;

    gallery.appendChild(item);
    item.addEventListener("click", () => {
    item.classList.toggle("expanded");
});
  });
</script>
