import { defineConfig } from 'vite'
import WindiCSS from 'vite-plugin-windicss'
import FullReload from 'vite-plugin-full-reload'
import RubyPlugin from 'vite-plugin-ruby'

export default defineConfig({
  plugins: [
    WindiCSS({
      root: __dirname,
      scan: {
        fileExtensions: ['erb', 'haml', 'html', 'vue', 'js', 'ts', 'jsx', 'tsx'],
        dirs: ['app/views', 'app/frontend'], // or app/javascript, or app/packs
      },
    }),
    FullReload(['config/routes.rb', 'app/views/**/*']),
    RubyPlugin(),
  ],
})
