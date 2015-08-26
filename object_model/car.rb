module FuelTank
  def fill_tank(level)
    self.fuel_tank = level
  end

  def fuel_level
    self.fuel_tank
  end

  protected
  attr_accessor :fuel_tank
end

module Debugger # == Debugger = Module.new do ... end
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    def debug(log)
      puts "!!!DEBUG: #{log} !!!!"
    end
  end

  module InstanceMethods
    def debug(log)
      self.class.debug(log)
    end

    def print_class
      puts self.class
    end
  end
end

class Car # == Car = Class.new do ... end
  include FuelTank
  include Debugger

  attr_reader :current_rpm

  @@instances = 0

  def self.instances
    @@instances
  end

  debug 'Start interface'


  def initialize
    @current_rpm = 0
    @@instances += 1
    debug 'initialize'
  end

  def start_engine
    start_engine! if engine_stopped?
  end

  def engine_stopped?
    current_rpm.zero?
  end

  debug 'End interface'

  protected

  attr_writer :current_rpm

  def initial_rpm
    700
  end

  def start_engine!
    self.current_rpm = initial_rpm
  end

  # остановить двигатель
end

class MotorBike
  include FuelTank
  include Debugger

  debug 'MotorBike class'
end

