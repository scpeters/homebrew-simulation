class IgnitionLaunch0 < Formula
  desc "Launch libraries for robotics applications"
  homepage "https://bitbucket.org/ignitionrobotics/ign-launch"
  url "https://bitbucket.org/ignitionrobotics/ign-launch/get/c541a5ac7373.tar.gz"
  version "0.2.1~pre0~1~c541a5ac7373"
  sha256 "8e8960acf600072dfabeaf2985e216ce6c6cb70b7c5297ba19da6b13acf92d09"

  bottle do
    root_url "https://osrf-distributions.s3.amazonaws.com/bottles-simulation"
    sha256 "e7d5d1148a243137e062b3aadd69b806298558cd863d1e17fb61d918bb777ca9" => :mojave
  end

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build

  depends_on "ignition-cmake2"
  depends_on "ignition-common3"
  depends_on "ignition-gazebo1"
  depends_on "ignition-gui1"
  depends_on "ignition-msgs3"
  depends_on "ignition-plugin1"
  depends_on "ignition-tools"
  depends_on "ignition-transport6"
  depends_on "qt"
  depends_on "sdformat8"
  depends_on "tinyxml2"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
   system "ign", "launch", "-f", "gazebo.ign"
  end
end
