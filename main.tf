module "policy" {
    source = "./policymodule"
    policy_names_with_count = ["count_policy1","count_policy2","count_policy3"]
    policy_names_with_foreach = ["foreach_policy1","foreach_policy2","foreach_policy3"]
}
module "dashboardmodule" {
    source = "git::https://github.com/acrcw/tfnewrelic.git//dashboardmodule"    # to use a specific module in repo use double slash syntax
}
# git::https://example.com/network.git//modules/vpc

