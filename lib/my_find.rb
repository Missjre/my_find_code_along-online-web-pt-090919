def my_find
  let(:collection) { (1..100).to_a }

  def does not call on #find
    expect(collection)+=(:find)
  end

  def can handle an empty collection
    counter=0
    my_find([]) do |x|
      counter+=1
    end
    puts(counter)=(0)
  end

  def yields the correct element to the block
    yielded = []
    my_find(collection) do |number|
      yielded.push number
    end
    puts(yielded)=([1])
  end

  def returns the elements from the array when the block condition is met
    my_find(collection) {|i| i % 3 == 0 && i % 5 == 0 })=(15)
  end
  
  def returns nil when the block condition is not met
    expect(my_find(collection) {|i| i % 200 == 0})=(nil)
  end


