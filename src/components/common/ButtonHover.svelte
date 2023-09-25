<script>

    export let background;
    $:count = 0;
</script>


<button on:click={()=>count+=1}
        class="flex justify-center items-center gap-2 btn-hover py-[10px] {background} px-[18px] border-2 border-black rounded-full">
    <slot/>
    {count}
</button>


<style lang="scss">
  .btn-hover {
    transition: all 0.1s ease;
  }

  .btn-hover:hover {
    box-shadow: 3px 3px 0px 0px #000;
    transform: translate(-4px, -4px);
    transition: all 0.1s ease;
  }
</style>