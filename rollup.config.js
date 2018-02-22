export default {
    input: "build/index.js",
    output: {
        file: "dist/index.js",
        format: "iife",
        sourcemap: "inline",
        globals: { react: "React", "react-dom": "ReactDOM" },
    },
    external: ["react", "react-dom"],
}
