# main.jl
# Neto Araujo
# Criado em: 19/09/1016
# Ultima atualizacao: 19/09/1016
# Responsavel por iniciar a execucao

push!(LOAD_PATH, "/home/neto/Projetos/damicore_output_parser/")

module DamicoreOutputParser

using FileManager

function __init__()
  fname = ARGS[1]       # Arquivo resultante do agrupamento realizado pelo DAMICORE
  fname_data = ARGS[2]  # Arquivo com os valores originais dos atributos, submetido ao DAMICORE

  clustering_data = sortrows(read_csv_file(fname, '\t', Int))
  data_set = read_csv_file(fname_data, ',', Any)
  println(data_set)
end

end
