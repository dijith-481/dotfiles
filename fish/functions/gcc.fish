function gcc
    if test (count $argv) -eq 1
        set filename (basename $argv[1] .c)
        command gcc $argv[1] -o $filename.o
    else
        command gcc $argv
    end
end
