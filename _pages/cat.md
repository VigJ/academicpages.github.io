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

<script src="/assets/js/gallery.js"></script>


