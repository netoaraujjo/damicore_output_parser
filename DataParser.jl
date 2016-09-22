# DataParser.jl
# Neto Araujo
# Criado em: 20/09/1016
# Ultima atualizacao: 20/09/1016
# Mescla os dois arquivos de entrada

module DataParser

export data_merge

function data_merge(clustering_data::Array{Any}, data_set::Array{Any})
  merged_data = [clustering_data[:, 1] data_set clustering_data[:, 2]]
  return merged_data
end

end
