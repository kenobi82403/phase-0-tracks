# require relative main program file
  
# Allow user to create their own profile
# Allow user to create a new list
# Allow user to add item to list
# Allow user to mark complete or incomplete
# Allow user to delete item from list
# Allow user to update item on list
  
require_relative 'todo_list_program'

describe TodoList do
  let(:joe_list) { TodoList.new('Joe') }

  it "adds an item to the list" do
    joe_list.add_item("do the dishes")
    joe_list.add_item("mow the lawn")
    expect(joe_list.list).to eq ["do the dishes", "mow the lawn"]
  end

  it "removes an item to the list" do 
    joe_list.add_item("do the dishes")
    joe_list.add_item("mow the lawn")
    joe_list.remove_item(2)
    expect(joe_list.list).to eq ["do the dishes"]
  end

  it "updates an item to the list" do 
    joe_list.add_item("do the dishes")
    joe_list.add_item("mow the lawn")
    joe_list.update_item(2, "take out trash")
    expect(joe_list.list).to eq ["do the dishes", "take out trash"]
  end

end
