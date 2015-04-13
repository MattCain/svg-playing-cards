module.exports = (grunt) ->
   
   # Task definitions
   grunt.initConfig({
      
      less:
         dist:
            files:
               "playing-cards.css": "playing-cards.less"
      
      cssmin:
         dist:
            src: "playing-cards.css"
            expand: true
            ext: ".min.css"
      
      copy:
         dist:
            files: [
               expand: true
               src: "imgs/*"
               dest: "tmp/"
            ]
      
      svgmin:
         dist:
            files: [
               expand: true
               cwd: "tmp/imgs/"
               src: ["*.svg"]
               dest: "tmp/imgs/"
            ]
      
      dataUri:
         dist:
            src: "*.css"
            dest: "."
            options:
               target: "tmp/imgs/*.svg"
               baseDir: "tmp/"
      
      clean: ["tmp"]

      watch:
         less:
            files: ["*.less", "imgs/*.svg"],
            tasks: ["default"]
   })
   
   grunt.loadNpmTasks "grunt-contrib-cssmin"
   grunt.loadNpmTasks "grunt-contrib-less"
   grunt.loadNpmTasks "grunt-contrib-copy"
   grunt.loadNpmTasks "grunt-svgmin"
   grunt.loadNpmTasks "grunt-data-uri"
   grunt.loadNpmTasks "grunt-contrib-clean"
   grunt.loadNpmTasks "grunt-contrib-watch"
   
   grunt.registerTask("default", ["less:dist", "cssmin:dist", "copy:dist", "svgmin:dist", "dataUri:dist", "clean"])
