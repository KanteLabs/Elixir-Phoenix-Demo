# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     BeanieBabies.Repo.insert!(%BeanieBabies.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

beanies = [
%BeanieBabies.Beanie_baby{name: "Kaleb", notes: "", picture_url: "http://world.ty.com/images/tfi/39/35ccb666ac2e650c651f98872dd38c11_lg.gif",value: 4,year: 2017},
%BeanieBabies.Beanie_baby{name: "Baylee", notes: "", picture_url: "http://world.ty.com/images/tfi/6/cf246fe0e2e773298f32e92636ff591f_lg.gif",value: 12,year: 2001},
%BeanieBabies.Beanie_baby{name: "Pongo", notes: "", picture_url: "http://world.ty.com/images/tfi/6/e1921f6357ad6c1f3ad4c6e4d2841f15_lg.gif",value: 10,year: 2005}
]

Enum.each(beanies, fn (beanie) -> BeanieBabies.Repo.insert(beanie) end)

