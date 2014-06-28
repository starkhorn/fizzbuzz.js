module.exports = (grunt) ->
    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-watch'

    grunt.initConfig
        watch:
            coffee:
                files: 'public/coffee/*.coffee'
                tasks: ['coffee:compile']

        coffee:
            compile:
                expand: true
                flatten: true
                cwd: "#{__dirname}/public/coffee/"
                src: ['*.coffee']
                dest: "#{__dirname}/public/js/"
                ext: '.js'

    grunt.registerTask 'default', ['coffee:compile', 'watch']