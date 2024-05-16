variable "policy_names_with_count" {
  type = list(string)
  default = []
}
variable "policy_names_with_foreach" {
    type=set(string)
    description = "List of all the policy names"
    default = ["jobans-foreach-plo","jobans-foreach-2","jobans-foreach-3"]
}