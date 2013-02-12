class Hash
  def sort_by_key(&block)
    sorted = {}
    self.keys.sort(&block).each do |key|
      value = self[key]
      sorted[key] = value.is_a?(Hash) ? value.sort_by_key(&block) : value
    end
    sorted
  end
end