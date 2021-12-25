# Documentation: LTEX LS (LTEX Language Server) implements a language server according to the
# Language Server Protocol (LSP) and provides grammar and spelling errors in markup documents
# (LATEX, Markdown, etc.). The documents are checked with LanguageTool.
class LtexLs < Formula
  desc 'LTeX Language Server: LSP language server for LanguageTool :mag::heavy_check_mark: with support for LaTeX :mortar_board:, Markdown :pencil:, and others'
  homepage 'https://valentjn.github.io/ltex'
  url 'https://github.com/valentjn/ltex-ls/releases/download/15.2.0/ltex-ls-15.2.0-mac-x64.tar.gz'
  sha256 'd89b547722f165ca2343962065cbe7ee4a832316825b04266d1d2db3e46487b3'
  license 'MPL-2.0'

  def install
    bin.install 'bin/ltex-cli'
    bin.install 'bin/ltex-ls'
    bin.install Dir['lib']
  end
end
