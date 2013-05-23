    d=30
    @radius=d/2
    @pi=Math::PI

    def calc_circle_xy(fi)
      {:x => (@radius+(@radius*Math.sin(fi))).to_i, :y => (@radius+(@radius*Math.cos(fi))).to_i}
    end

    i=0
    @arr=[]
    while i<2*@pi
      @arr << calc_circle_xy(i)
      i+=0.006
    end
    a = Array.new d do
      Array.new(d, "  ")
    end

    circle_coord=@arr.uniq
    circle_coord.each do |elem|
      a[elem[:x]][elem[:y]]="||"
    end
    a.each do |value|
      puts value.join("")
    end
