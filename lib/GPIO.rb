class GPIO
  @pins = Hash[(0..7).map { |num| [num, num + 408] }]

  def self.up pin
    send pin, 1
  end

  def self.down pin
    send pin, 0
  end

  def self.send pin, value
    gpio = lookup pin
    exec "echo #{value} > /sys/class/gpio#{gpio}/value"
  end
  private_class_method :send

  def self.lookup pin
    @pins[pin]
  end
  private_class_method :lookup
end
