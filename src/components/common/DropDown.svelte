<script>
    let open = false;
    export let initialShadow = false;
    export let rounded='none';
    export let classNamesButton;
    export let classNamesOptions;


    export let options = [];


    const handleClick = () => {
        if (options.length > 0) {
            open = !open
        }
    }
</script>


<div class=" rounded-{rounded} relative inline-block text-left {initialShadow?'drop-press':'drop-hover'} ">
    <div>
        <button
                type="button"
                class="{classNamesButton} inline-flex rounded-{rounded} w-72 justify-center gap-x-1.5 px-3 py-2 border-black border-2 focus:outline-none "
                id="menu-button"
                aria-expanded="true"
                aria-haspopup="true"
                on:click={handleClick}
        >
            Options
            <svg
                    class="mt-1 h-5 w-5"
                    viewBox="0 0 20 20"
                    fill="currentColor"
                    aria-hidden="true"
            >
                <path
                        fill-rule="evenodd"
                        d="M5.23 7.21a.75.75 0 011.06.02L10 11.168l3.71-3.938a.75.75 0 111.08 1.04l-4.25 4.5a.75.75 0 01-1.08 0l-4.25-4.5a.75.75 0 01.02-1.06z"
                        clip-rule="evenodd"
                />
            </svg>
        </button>
    </div>

    <div
            class="{!open?'hidden':''} w-72 absolute right-0 z-10 mt-2 w-56 origin-top-right bg-white focus:outline-none shadow-[2px_2px_0px_rgba(0,0,0,1)] border-black border-2 divide-y divide-black"
            role="menu"
            aria-orientation="vertical"
            aria-labelledby="menu-button"
    >
        <div role="none">
            {#each options as option,index}
                <a
                        href=""
                        class="{classNamesOptions} block px-4 py-2 text-sm border-black border-b-2 "
                        role="menuitem"
                        id="menu-item-{index}"
                >
                    {option}
                </a>
            {/each}
        </div>
    </div>
</div>


<style lang="scss">
  .drop-hover:hover {
    transition: all 0.2s ease;
    box-shadow: 3px 3px 0px #000;
  }

  .drop-press {
    box-shadow: 3px 3px 0px #000;
  }
</style>