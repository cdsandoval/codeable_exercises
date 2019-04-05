class Reparto < ApplicationRecord
  belongs_to :pelicula
  belongs_to :actor
end
