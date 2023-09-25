<script>


    export let title;
    export let type;
    export let placeholder;
    export let rounded = 'none';
    export let className;


    export let initialShadow = false;


</script>


<div class="form_group flex flex-col">
    <label for={type} class="sub_title">{title}</label>
    <input type={type} class="{className} {initialShadow?'input-press':'input-hover'} rounded-{rounded} py-[12px] px-[10px] border-2 border-black w-full h-full" placeholder={placeholder}/>
</div>


<style lang="scss">

  .input-press {
    outline: none;
    box-shadow: 3px 3px 0px 0px #000;
    transition: all 0.2s ease;
  }

  .input-press:focus {
    transform: translateY(3px);
    box-shadow: 1px 1px 0 0 #000;
  }

  .input-hover {
    outline: none;
    transition: all 0.2s ease;
  }

  .input-hover:focus {
    box-shadow: 3px 3px 0px 0px #000;
  }

</style>