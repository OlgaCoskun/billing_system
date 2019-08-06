class Source

  SOURCE = [
      { name: 'Direct', price: 100, affiliate: false, reseller: false },
      { name: 'ACompany', price: 75, affiliate: true, reseller: false  },
      { name: 'AnotherCompany', price: 65, affiliate: true, reseller: false  },
      { name: 'EvenMoreCompany', price: 80, affiliate: true, reseller: false  },
      { name: 'ResellThis', price: 75, affiliate: false, reseller: true  },
      { name: 'SellMoreThings', price: 85, affiliate: false, reseller: true  }
  ]

  attr_accessor :name, :price, :affiliate, :reseller

  def initialize(attributes)
    @name = attributes[:name]
    @price = attributes[:price]
    @affiliate = attributes[:affiliate]
    @reseller = attributes[:reseller]
  end

  def self.find_by_name(name)
    all.select { |source| source.name == name }.first
  end

  def self.names
    all.collect { |source| source.name }
  end

  def self.all
    SOURCE.collect do |source_data|
      new(name: source_data[:name],
          price: source_data[:price],
          affiliate: source_data[:affiliate],
          reseller: source_data[:reseller])
    end
  end

  def affiliate?
    affiliate
  end

  def reseller?
    reseller
  end

  def cost_per_unit(quantity)
    case quantity
    when reseller?
      50
    when affiliate?
      affiliate_cost_per_unit(quantity)
    else
      100
    end
  end

  def affiliate_cost_per_unit(quantity)
    case quantity
    when quantity > 1000
      40
    when quantity >500
      50
    else
      60
    end
  end
end
