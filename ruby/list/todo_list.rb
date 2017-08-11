class TodoList

def initialize (list) #saves the list someone gives me
  @list = list #list they will populate

end

def get_items #this method returns @list
  @list
end

def add_item(item)
  @list << item
  end

def delete_item(item)
  @list.delete(item)
end

def get_item(item)
  @list[item]
end
end