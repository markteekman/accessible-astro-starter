<script>


    import ButtonPress from "./ButtonPress.svelte";

    export let initialShadow = false;
    export let classNames;
    export let buttonClass;

    export let rounded = 'none'

</script>


<div class="{classNames} {initialShadow?'dialog-press':'dialog-hover'} rounded-{rounded} w-96 px-8 py-4 bg-white border-4 border-black grid place-content-center">
    <div>
        <h1 class="text-2xl mb-4">The message you want goes in here.</h1>
        <div class="flex space-x-2 mx-auto w-32">
            <button class="text-base">Cancel</button>
            <button
                    class="{buttonClass} h-12 border-black border-2 p-2.5 hover:shadow-[2px_2px_0px_rgba(0,0,0,1)] rounded-none"
            >
                Enable
            </button>
        </div>
    </div>
</div>


<style lang="scss">
  .dialog-press {
    box-shadow: 4px 4px 0px #000;

  }


  .dialog-hover {
    transition: all 0.2s ease;

  }

  .dialog-hover:hover {
    box-shadow: 4px 4px 0px #000;
  }
</style>