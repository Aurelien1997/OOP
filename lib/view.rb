class View
  
  def self.all(all_items)
      all_items.each do |item|
        puts "#{item.id} #{item.name} #{item.brand} #{item.quantity} #{item.price}"
      end
  end

end