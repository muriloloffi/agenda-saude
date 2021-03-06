module MotherNameService
  MOTHER_LIST = %w[
    Eliza Alice Laura Rosa Adelaide Clarissa Helena Ariela Augustine Bella Betina Celina Charlotte Cloe Elen Felipa
    Jade Julieta Juliete Kira Laisla Leona Lia Lis Louise Maia Martina Megan Mia Micaela Naomi Penélope Pilar Serena Tâmara
    Tarsila Zoe Yeda Adeline Adélaide Patricia Brenda Debra Michelle Sarah Jennifer Adalasia Santina Giuliana Corina
    Marsilia Aurora Cecília Rosanna Leandra Graziella Giulieta Paola Olga Rafaela Eva Silvia Berenice Allegra Lívia
    Fiametta Dulce Iuliana Galicia Micola Cathalina Anzola Fordelise Giorgia Fabia Filippa Melissa Vanessa Verõnica
    Adele Iris Antonella
  ]

  def self.name_list(name)
    processed_name = process_name(name)

    (MOTHER_LIST.reject { |mother| mother == processed_name }.sample(6) << processed_name).sort
  end

  def self.process_name(name)
    name.split.first.downcase.camelize
  end
end
