<script>
    export let imgSrc = 'https://neo-brutalism-ui-library.vercel.app/assets/neo-brutalism-image1-6c6a875b.jpg';
    export let date = 'May 15th, 2023';
    export let title = 'Neo Brutallism'
    export let text = `Neobrutalism is an aesthetic characterized by high contrast
                    elements, bright colors, and bold shapes. It is often used to make
                    a statement, as it is meant to be eye-catching and stand out to
                    the viewer. It is also used in user interface and web design, with
                    features such as vibrant colors and bold shapes. Neobrutalism can
                    also be used in print design, with an example being a bold shape
                    with a vibrant color fill applied to it.`

    export let initialShadow = true;
    export let rounded = 'none'
</script>


<div class="w-80 h-full border-black border-2
            rounded-{rounded} bg-white
            {initialShadow?'card-press':'card-hover'}">
    <a class="block cursor-pointer">
        <article class="w-full h-full">
            <figure class="w-full h-1/2 border-black border-b-2">
                <img
                        src={imgSrc}
                        alt="thumbnail"
                        class="w-full h-full object-cover"
                />
            </figure>
            <div class="px-6 py-5 text-left h-full">
                <p class="text-base mb-4">{date}</p>
                <h1 class="text-[32px] mb-4">Neo Brutallism</h1>
                <p class="text-xs mb-4 line-clamp-4">
                    {text}
                </p>
                <strong>Read More</strong>
            </div>
        </article>
    </a>
</div>


<style lang="scss">
  .card-press {
    box-shadow: 4px 4px 0px 0px #000;
    transition: all 0.2s ease;
  }

  .card-press:active {
    box-shadow: none;
  }

  .card-hover {
    transition: all 0.3s ease;
  }

  .card-hover:hover {
    box-shadow: 4px 4px 0px 0px #000;
    transition: all 0.2s ease;
  }

  .card-hover:active {
    box-shadow: none;

  }

</style>
