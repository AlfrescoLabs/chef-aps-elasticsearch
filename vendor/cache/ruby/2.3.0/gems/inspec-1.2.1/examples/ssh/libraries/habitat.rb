
class Habitat < Inspec.resource(1)
  name "habitat"
  example "
    describe habitat do
      it { should exist }
    end
  "

  def exist?
    inspec.file('hab').exist?
  end
end
