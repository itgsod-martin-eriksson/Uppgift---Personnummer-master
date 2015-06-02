require 'pry-byebug'

def valid_pnr?(pnr:)

  if pnr.empty?
    raise ArgumentError, 'Pnr must not be empty'
  end

  pnr = pnr.split('').map { |s| s.to_i }
  pnr.delete_at(6)

  checksum = pnr.pop

  sum = 0

  pnr.each_with_index do |digit,index |
    if index % 2 == 0
      value = digit * 2
      if value > 9
        value = value - 9
      end
    else
      value = digit
    end
    sum = sum + value
  end

  if (sum + checksum) % 10 == 0
    return true
  else return false
end
end

