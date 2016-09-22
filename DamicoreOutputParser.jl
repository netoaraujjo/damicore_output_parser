# DamicoreOutputParser.jl
# Neto Araujo
# Criado em: 19/09/1016
# Ultima atualizacao: 20/09/1016
# Responsavel por iniciar a execucao

push!(LOAD_PATH, "/home/neto/Projetos/damicore_output_parser/")

module DamicoreOutputParser

using FileManager
using DataParser

function __init__()
  fname = ARGS[1]       # Arquivo resultante do agrupamento realizado pelo DAMICORE
  fname_data = ARGS[2]  # Arquivo com os valores originais dos atributos, submetido ao DAMICORE

  clustering_data = sortrows(read_csv_file(fname, '\t'))
  data_set = read_csv_file(fname_data, ',')

  merged_data = data_merge(clustering_data, data_set)
  println(merged_data)
end

end
