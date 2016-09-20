# file_manager.jl
# Neto Araujo
# Criado em: 18/09/1016
# Ultima atualizacao: 19/09/1016
# Responsavel por leitura e escrita em arquivos

module FileManager

export read_txt_file, read_csv_file

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
# @var_type tipo de dado da matriz
function read_csv_file(fname::AbstractString, sep::Char, var_type::DataType)
  content = ""
  try
    content = readdlm(fname, sep, var_type)
  catch ex
    println("Erro ao abrir o arquivo: $fname")
    showerror(STDOUT, ex)
  finally
    return content
  end
end

end # modulo