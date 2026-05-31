/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./app/**/*.{js,ts,jsx,tsx}", "./components/**/*.{js,ts,jsx,tsx}", "./lib/**/*.{js,ts,jsx,tsx}"],
  theme: {
    extend: {
      colors: {
        cream: "#FFFDF8",
        sage: "#AEBB9E",
        mist: "#DDE8D2",
        pebble: "#E6E7E1"
      },
      boxShadow: {
        soft: "0 20px 60px rgba(39, 39, 42, 0.08)"
      }
    }
  },
  plugins: []
};
