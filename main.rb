if ARGV.size < 3
    STDERR.print "Usage: ふるそうびたべたい\n"
    exit
end

repository_name =ARGV[0]
branch_name = ARGV[1]
user_name = ARGV[2]

p branch_name,repository_name,user_name
