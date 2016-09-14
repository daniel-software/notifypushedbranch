#coding:utf-8
require "dotenv"
require 'mail'

Dotenv.load

if ARGV.size < 3
    STDERR.print "Usage: ふるそうびたべたい\n"
    exit
end

repository_name =ARGV[0]
branch_name = ARGV[1]
user_name = ARGV[2]

p branch_name,repository_name,user_name

Mail.defaults do
delivery_method :smtp, { address:  'mail.sakuradaniel.sakura.ne.jp',
                              port:     587,
                              domain:   'daniel-soft.com',
                              user_name: ENV['MAIL_USERNAME'],
                              password: ENV['MAIL_PASSWORD'],
                              enable_starttls_auto: false
                            }
end

Mail.deliver do
    from    'watanabe@daniel-soft.com'
    to      'watanabe@daniel-soft.com'
    subject 'testeste'
    body    repository_name
end
