def uuid
starter = Random.new_seed.to_s(base=16)
puts starter
new_uuid = []
puts new_uuid[0] = starter.slice(0..7)
new_uuid[1] = starter.slice(8..11)
new_uuid[2] = starter.slice(12..15)
new_uuid[3] = starter.slice(16..31)

new_uuid

end

p uuid 