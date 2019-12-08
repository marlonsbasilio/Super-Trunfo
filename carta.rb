class Carta

    attr_accessor :name, :number, :line, :type, :superTrunfo, :conf, :learn, :efic, :port, :reuse
    
    def initialize(name, number, line, type, superTrunfo, conf, learn, efic, port, reuse)
        @name = name
        @number = number
        @line = line
        @type = type
        @superTrunfo = superTrunfo
        @conf = conf
        @learn = learn
        @efic = efic
        @port = port
        @reuse = reuse
    end

end