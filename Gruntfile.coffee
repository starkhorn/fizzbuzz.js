module.exports = (grunt) ->
    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-watch'
    grunt.loadNpmTasks 'grunt-karma'
    grunt.loadNpmTasks 'grunt-mocha-test'

    grunt.initConfig
        watch:
            coffee:
                files: 'public/coffee/**/*.coffee'
                tasks: ['coffee:compile']

            mochaTest:
                options:
                    spawn: false
                files: 'test/**/*.coffee'
                tasks: ['test']

        coffee:
            compile:
                expand: true
                flatten: true
                cwd: "#{__dirname}/public/coffee/"
                src: ['*.coffee']
                dest: "#{__dirname}/public/js/"
                ext: '.js'

        mochaTest:
            test:
                options:
                    reporter: 'spec'
                    require: 'coffee-script/register'
                    clearRequireCache: true
                src: ['test/**/*.coffee']

    grunt.registerTask 'test', ['mochaTest']
    grunt.registerTask 'default', ['coffee:compile', 'test', 'watch']
