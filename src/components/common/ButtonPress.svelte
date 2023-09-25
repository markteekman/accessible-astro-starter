<script>

    export let bacground;
    export let rounded = 'none';
    export let initialShadow = false;
    export let className;
</script>


<button class="{className} {initialShadow?'btn-press':'btn-hover'} rounded-{rounded} border-2 border-black py-2 px-16 ">
    <slot/>
</button>


<style lang="scss">



  .btn-hover:hover {
    box-shadow: 3px 3px 0px 0px #000;
    transform: translate(-3px, -3px);
  }

  .btn-hover:active {
    box-shadow: none;
    transform: translate(3px, 3px);
  }

  .btn-press {
    box-shadow: 3px 3px 0px #000;
  }


  .btn-press:active {
    box-shadow: none;
    transform: translate(3px, 3px);
  }


</style>