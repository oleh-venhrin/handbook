// @ts-check
import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';
import remarkMath from 'remark-math';
import rehypeKatex from 'rehype-katex';

// https://astro.build/config
export default defineConfig({
  site: 'https://oleh-venhrin.github.io',
  base: '/handbook',
  integrations: [
    starlight({
      title: 'Довідничок',
      description: 'Шкільний інтерактивний довідник для 3-го класу',
      defaultLocale: 'uk',
      locales: {
        root: {
          label: 'Українська',
          lang: 'uk',
        },
      },
      social: {
        github: 'https://github.com/oleh-venhrin/handbook',
      },
      customCss: [
        'katex/dist/katex.min.css',
        './src/styles/custom.css',
      ],
      sidebar: [
        {
          label: 'Старт',
          items: [
            { label: 'Головна', link: '/' },
          ],
        },
        {
          label: 'Я досліджую світ',
          items: [
            {
              label: 'Людина і нежива природа',
              items: [
                { label: '1. Тіла, речовини та частинки', link: '/world/inanimate-nature/01-bodies-and-substances/' },
                { label: '2. Лабораторія дослідника', link: '/world/inanimate-nature/02-how-we-explore/' },
              ],
            },
          ],
        },
      ],
      credits: false,
    }),
  ],
  markdown: {
    remarkPlugins: [remarkMath],
    rehypePlugins: [rehypeKatex],
  },
});
