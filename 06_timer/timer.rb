class Timer
  # Rudi Boshopff

  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    hours = (@seconds / 3600.0)
    dec_hour = hours % 1
    # seconds / 3600 gives hours with remainder
    # extract remiander for minutes

    minutes = dec_hour * 60.0
    dec_min = minutes % 1
    # remiander times 60  gives minutes with remainder
    # extract remiander for seconds

    seconds = dec_min * 60
    # remainder times 60 gives seconds with remainder

    hours = hours.to_i
    minutes = minutes.to_i
    seconds = seconds.to_i
    # converts floats to integers

    sprintf("%02d:%02d:%02d", hours, minutes, seconds)
  end
end
