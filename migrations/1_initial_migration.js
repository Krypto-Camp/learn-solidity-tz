const Migrations = artifacts.require("Migrations")
const tutorial_1_basic = artifacts.require("tutorial_1_basic")
const tutorial_2_inheritance = artifacts.require("tutorial_2_inheritance")
const tutorial_3_modifiers_and_error_handle = artifacts.require("tutorial_3_modifiers_and_error_handle")


module.exports = function (deployer) {
  deployer.deploy(Migrations)
  deployer.deploy(tutorial_1_basic)
  deployer.deploy(tutorial_2_inheritance)
  deployer.deploy(tutorial_3_modifiers_and_error_handle)
}