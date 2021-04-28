class Prenda < ApplicationRecord
    enum categoria: [:torso, :piernas, :pies]
end
