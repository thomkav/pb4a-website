/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{html,njk,md,js}"
  ],
  theme: {
    extend: {
      colors: {
        primary: '#2c5f8d',
        secondary: '#f4a261',
      },
    },
  },
  plugins: [],
}
