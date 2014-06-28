module.exports = (grunt) ->
    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-watch'
    grunt.loadNpmTasks 'grunt-karma'

    grunt.initConfig
        watch:
            coffee:
                files: 'public/coffee/*.coffee'
                tasks: ['coffee:compile']

            karma:
                files: 'spec/**/*.coffee'
                tasks: ['karma:unit:run']

        coffee:
            compile:
                expand: true
                flatten: true
                cwd: "#{__dirname}/public/coffee/"
                src: ['*.coffee']
                dest: "#{__dirname}/public/js/"
                ext: '.js'

        karma:
            unit: {
                configFile: 'karma.conf.js'
                background: true
            }

            first: {
                configFile: 'karma.conf.js'
                singleRun: true
            }

    grunt.registerTask 'test', ['karma:first:start', 'karma:unit:start']
    grunt.registerTask 'default', ['coffee:compile', 'test', 'watch']