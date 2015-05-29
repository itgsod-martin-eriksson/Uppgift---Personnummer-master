require 'pry-byebug'

def valid_pnr?(pnr:)

  if pnr.empty?
    raise ArgumentError, 'Pnr must not be empty'
  end

  pnr = pnr.split('').map { |s| s.to_i }
  pnr.delete_at(6)


  # binding.pry



end