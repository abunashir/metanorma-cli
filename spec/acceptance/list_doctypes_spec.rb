require "spec_helper"

RSpec.describe "Metanorma" do
  describe "list-doctypes" do
    context "with valid metanorma type" do
      it "list out available doctypes for that type" do
        command = %w(list-doctypes csd)

        output = capture_stdout { Metanorma::Cli.start(command) }

        expect(output).to include("Supported doctypes: iso-rice")
      end
    end
  end
end
