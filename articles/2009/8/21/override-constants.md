
I found a cool trick I thought I would share. I have one class that I want to inherit from. Lets call it base. It looks something like this:
    
{% highlight ruby %}
class Base
  SIZES = [:big,:small]

  def self.print_sizes
    SIZES.join(', ')
  end 
end
{% endhighlight %}

Fine but now I want a Shoe class that inherits from Base but has different SIZES. To start I try this:

{% highlight ruby %}
class Shoe < Base
  SIZES = [9,10,11,12,13,14,'bigfoot']
end
{% endhighlight %}

But that still gives me Base::SIZES when doing the print_sizes method. So I just change it in the Base class to self::SIZES like so:

{% highlight ruby %}
class Base
  SIZES = [:big,:small]

  def self.print_sizes
    self::SIZES.join(', ')
  end 
end
{% endhighlight %}
    
And like magic it works!