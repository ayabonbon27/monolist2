class RankingController < ApplicationController
  
  def have
   item_ids_have = Have.group(:item_id).order('count_all desc').limit(10).count.keys
   @items_have = Item.find(item_ids_have).sort_by{|item| item_ids_have.index(item.id)}
  end
  
  def want
   item_ids_want = Want.group(:item_id).order('count_all desc').limit(10).count.keys
   @items_want = Item.find(item_ids_want).sort_by{|item| item_ids_want.index(item.id)}
  end
end

