Color = %w(red blue green pink yellow orange grey purple brown black).freeze
Texture = ['Chewy', 'Tough', 'Soft', 'Hard', 'Soupy', 'Melt - In - Your - Mouth', 'Fluffy', 'Runny', 'Grainy', 'Dry'].freeze
Food = %w(steak meatballs salad cereal fish potatoes olives apples soylent cheese).freeze

10. times do |i|
  puts (i + 1).to_s + '. ' + Texture.sample + ' ' + Color.sample + ' ' + Food.sample
end
