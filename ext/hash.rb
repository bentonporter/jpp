class Hash
  def sort_by_key(&block)
    self.keys.sort(&block).reduce({}) do |seed, key|
      seed[key] = self[key]
      seed
    end
  end
end