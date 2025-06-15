/** @type {import('tailwindcss').Config} */
const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    ".public_html/catalog/view/theme/berisey/stylesheet/src/tailwind.main.css",
    "./public_html/catalog/view/theme/berisey/template/**/*.{twig,html,js}",
    "./node_modules/flowbite/**/*.js"
  ],
  theme: {
    fontFamily: {
      sans: ["Montserrat", "serif", ...defaultTheme.fontFamily.sans],
      serif: ["Montserrat", "serif", ...defaultTheme.fontFamily.sans]
    },
    extend: {
      borderRadius: {
        'large' : '48px'
      },
      fontSize: {
        '8px' : '8px',
        '10px' : '10px',
      },
      screens: {
        'sm-mobile': '360px',
        'xl-mobile': '480px',
        'sm-tablet': '640px',
        'xl-tablet': '768px',
        'sm-notebook': '1024px',
        'xl-notebook': '1280px',
        'sm-monitor': '1536px',
        'xl-monitor': '1792px',
      },
      colors: {
        white: '#FFFFFF',
        lightBlack: "#313131",
        lightGray: '#9294A1',
        lightBlue: '#F6F7F8',
        lightGreen: '#05D975',
        disabledGray: "#EFF1F3",
        darkGreen: '#04A65B',
        textGray: '#9294A1'
      }
    },
  },
  plugins: [
    require('flowbite/plugin')
  ],
}