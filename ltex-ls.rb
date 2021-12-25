# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class LtexLs < Formula
  desc 'LTeX Language Server: LSP language server for LanguageTool :mag::heavy_check_mark: with support for LaTeX :mortar_board:, Markdown :pencil:, and others'
  homepage 'https://valentjn.github.io/ltex'
  url 'https://github.com/valentjn/ltex-ls/releases/download/15.2.0/ltex-ls-15.2.0-mac-x64.tar.gz'
  sha256 'd89b547722f165ca2343962065cbe7ee4a832316825b04266d1d2db3e46487b3'
  license 'MPL-2.0'

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system './configure', *std_configure_args, '--disable-silent-rules'
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    bin.install 'bin/ltex-cli'
    bin.install 'bin/ltex.ls'
    bin.install Dir['lib']
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test ltex-ls`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system 'false'
  end
end
