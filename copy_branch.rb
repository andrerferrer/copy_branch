puts "Remember to start this script in the branch you want to copy to"

puts "What's the name of the main branch?"
print "> "
main_branch = gets.chomp

puts "What's the name of the branch you want to copy?"
print "> "
copy_branch = gets.chomp

arr = `git diff --name-only #{copy_branch} $(git merge-base #{main_branch} #{copy_branch} )`.split
arr.each do |path|
  `sh $(pwd)/copy_branch.sh #{path} #{copy_branch}`
end
