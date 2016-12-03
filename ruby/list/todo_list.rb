class TodoList
  attr_accessor :get_items

  def initialize(list_arr)
    @get_items = list_arr
  end

  def add_item(item)
    @get_items << item
  end

  def delete_item(item)
    new_array = []
    @get_items.each do |index|
      if index != item
        new_array << index
      end
    end

    @get_items = new_array
  end

  def

end

  # it "stores the list items given on initialization" do
  #   expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
  # end

  # it "adds an item to the list" do
  #   list.add_item("mop")
  #   expect(list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
  # end

  # it "deletes an item" do
  #   list.delete_item("do the dishes")
  #   expect(list.get_items).to eq ["mow the lawn"]
  # end

  # it "retrieves an item by index" do
  #   expect(list.get_item(0)).to eq "do the dishes"
  # end