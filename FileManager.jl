# FileManager.jl
# Neto Araujo
# Criado em: 18/09/1016
# Ultima atualizacao: 20/09/1016
# Responsavel por leitura e escrita em arquivos

module FileManager

export read_txt_file, read_csv_file, write_file

# Le o arquivo retornando uma array com cada linha lida
# @fname nome do arquivo
function read_txt_file(fname::AbstractString)
  content = ""
  try
    f = open(fname)
    content = readlines(f)
  catch ex
    println("Erro ao abrir o arquivo: $fname")
    showerror(STDOUT, ex)
  finally
    close(f)
    return content
  end
end

# Le um arquivo para uma matriz, especificando o caractere separador e o tipo dos dados
# @fname nome do arquivo
# @sep caractere separador
function read_csv_file(fname::AbstractString, sep::Char)
  content = ""
  try
    content = readdlm(fname, sep, Any)
  catch ex
    println("Erro ao abrir o arquivo: $fname")
    showerror(STDOUT, ex)
  finally
    return content
  end
end

# Salva o conteudo mesclado em arquivo
# @merged_data dados a serem salvos no arquivo
# @fname nome do arquivo a ser salvo
function write_file(merged_data::Array{Any}, fname::AbstractString)
  try
    writedlm(fname, merged_data, ' ')
  catch ex
    println("Erro ao salvar o arquivo: $fname")
    showerror(STDOUT, ex)
  end
end

end # modulo
