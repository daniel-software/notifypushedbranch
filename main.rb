#coding:utf-8

require 'mail'

if ARGV.size < 3
    STDERR.print "Usage: ふるそうびたべたい\n"
    exit
end

repository_name =ARGV[0]
branch_name = ARGV[1]
user_name = ARGV[2]

p branch_name,repository_name,user_name

Mail.delivery_method :smtp, { address:  'smtp.gmail.com',
                              port:     587,
                              domain:   'gmail',
                              user_name:'nofty-test',
                              password: ($stderr.print 'password>')
                            }

Mail.deliver do
    from    'watanabe@daniel-soft.com'
    to      'watanabe@daniel-soft.com'
    subject 'testeste'
    body    repository_name
end
