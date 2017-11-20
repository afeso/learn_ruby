class Timer
  #write your code here

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    if @seconds < 60
      return "00:00:" + sec(@seconds%60)
    elsif @seconds <= 540
      return "00:" +mins(@seconds) + ":" + sec(@seconds%60)
    else
      return hour(@seconds)+':' +mins(@seconds%3600) +':' +sec((@seconds%3600)%60)
    end

  end

  def sec num
    num = num.to_i
    if(num < 10)
      return "0" + num.to_s
    end
    num.to_s
  end

  def mins num
    num = num.to_i
    if num <= 540
      return "0" + (num / 60).to_s
    end
    (num / 60).to_s
  end

  def hour num
    num = num.to_i
    if num <= 32400
      return "0" + (num / 3600).to_s
    end
    (num / 60).to_s
  end

end
