class Tree
  attr_accessor :children, :node_name

  def initialize(name, children={})
    @children = children
    @node_name = name
  end

  def visit_all(&block)
    visit &block
    children.each_value {|c| puts c}
  end

  def visit(&block)
    block.call self
  end
end

ruby_tree = Tree.new( "Ruby", 
   {'grandpa' => {'dad' => {'child1' => {}, 'child2' => {} }, 'uncle' => {'child3' => {}, 'child4' => {} }}}  )
   
puts "Visiting a node"
ruby_tree.visit {|node| puts "#{node.node_name}"}
puts

puts "Visiting entire tree"
ruby_tree.visit_all {|key| puts "#{key}"}
