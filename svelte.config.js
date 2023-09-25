import adapter from '@sveltejs/adapter-auto';
import { vitePreprocess } from '@sveltejs/kit/vite';

const config = {
    kit: {
        adapter: adapter()
    },
    preprocess: vitePreprocess()
};

export default config;