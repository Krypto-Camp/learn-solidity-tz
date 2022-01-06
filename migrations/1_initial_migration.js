const Migrations = artifacts.require("Migrations")
const tutorial_1_basic = artifacts.require("tutorial_1_basic")
const tutorial_2_inheritance = artifacts.require("tutorial_2_inheritance")
const tutorial_3_modifiers_and_error_handle = artifacts.require("tutorial_3_modifiers_and_error_handle")
const IntExtended = artifacts.require("IntExtended")
const tutorial_4_imports_and_libraries = artifacts.require("tutorial_4_imports_and_libraries")


module.exports = (deployer) => {
  deployer.then(async () => {
    await deployer.deploy(Migrations)
    await deployer.deploy(tutorial_1_basic)
    await deployer.deploy(tutorial_2_inheritance)
    await deployer.deploy(tutorial_3_modifiers_and_error_handle)
    await deployer.deploy(IntExtended)
    await deployer.link(IntExtended, [tutorial_4_imports_and_libraries])
    await deployer.deploy(tutorial_4_imports_and_libraries)

  })
}