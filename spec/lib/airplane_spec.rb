require_relative "../../lib/airplane"

describe Airplane do
  let (:my_plane) {Airplane.new("cesna", 10, 150)}

  describe "#initialization" do
    it "Creates new Airplane" do
      expect(my_plane.type).to eq("cesna")
    end

    it "displays wing-loading" do
      expect(my_plane.wing_loading).to eq(10)
    end

    it "displays horsepower" do
      expect(my_plane.horsepower).to eq(150)
    end
  end

  describe "#takeoff" do
    it "Tests takeoff before engine start." do
      expect(my_plane.takeoff).to eq(false)
    end
  end

  describe "#land" do
    it "Tests if the plane is off and on the ground" do
      expect(my_plane.land).to eq(false)
    end
  end

  describe "#start" do
    it "Tests to see that the airplane is off." do
      expect(my_plane.start).to eq(false)
    end

    it "Tests to see that the airplane is already running." do
      my_plane.start
      expect(my_plane.start).to eq(true)
    end
  end

  describe "#land_engine_on_grounded" do
    it "Tests land while engine is on but not flying." do
      expect(my_plane.land).to eq(false)
    end
  end

  describe "#takeoff_after_start" do
    it "Tests takeoff after engine is turned on." do
      my_plane.start
      my_plane.takeoff
      expect(my_plane.takeoff).to eq(true)
    end
  end

  describe "#land" do
    it "Tests landing while flying." do
      my_plane.start
      my_plane.takeoff
      expect(my_plane.land).to eq(true)
    end
  end
end
