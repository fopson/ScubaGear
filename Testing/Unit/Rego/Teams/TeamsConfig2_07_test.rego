package teams
import future.keywords


#
# Policy 1
#--
test_AllowEmailIntoChannel_Correct_V1 if {
    ControlNumber := "Teams 2.7"
    Requirement := "Teams email integration SHALL be disabled"

    Output := tests with input as {
        "client_configuration": [
            {
                "Identity": "Global",
                "AllowEmailIntoChannel": false
            }
        ],
        "teams_tenant_info": [
            {
                "AssignedPlan": [
                    "MCOEV",
                    "Teams",
                    "MCOProfessional"
                ]
            }
        ]
    }

    RuleOutput := [Result | Result = Output[_]; Result.Control == ControlNumber; Result.Requirement == Requirement]
    count(RuleOutput) == 1
    RuleOutput[0].RequirementMet
    RuleOutput[0].ReportDetails == "Requirement met"
}

test_AllowEmailIntoChannel_Correct_V1_multi if {
    ControlNumber := "Teams 2.7"
    Requirement := "Teams email integration SHALL be disabled"

    Output := tests with input as {
        "client_configuration": [
            {
                "Identity": "Global",
                "AllowEmailIntoChannel": false
            },
            {
                "Identity": "Tag:AllOn",
                "AllowEmailIntoChannel": false
            }            
        ],
        "teams_tenant_info": [
            {
                "AssignedPlan": [
                    "MCOEV",
                    "Teams",
                    "MCOProfessional"
                ]
            }
        ]
    }

    RuleOutput := [Result | Result = Output[_]; Result.Control == ControlNumber; Result.Requirement == Requirement]
    count(RuleOutput) == 1
    RuleOutput[0].RequirementMet
    RuleOutput[0].ReportDetails == "Requirement met"
}

test_AllowEmailIntoChannel_Incorrect if {
    ControlNumber := "Teams 2.7"
    Requirement := "Teams email integration SHALL be disabled"

    Output := tests with input as {
        "client_configuration": [
            {
                "Identity": "Global",
                "AllowEmailIntoChannel": true
            }
        ],
        "teams_tenant_info": [
            {
                "AssignedPlan": [
                    "MCOEV",
                    "Teams",
                    "MCOProfessional"
                ]
            }
        ]
    }

    RuleOutput := [Result | Result = Output[_]; Result.Control == ControlNumber; Result.Requirement == Requirement]
    count(RuleOutput) == 1
    not RuleOutput[0].RequirementMet
    RuleOutput[0].ReportDetails == "Requirement not met"
}

test_AllowEmailIntoChannel_Incorrect_multi if {
    ControlNumber := "Teams 2.7"
    Requirement := "Teams email integration SHALL be disabled"

    Output := tests with input as {
        "client_configuration": [
            {
                "Identity": "Global",
                "AllowEmailIntoChannel": true
            },
            {
                "Identity": "Tag:AllOn",
                "AllowEmailIntoChannel": true
            }
        ],
        "teams_tenant_info": [
            {
                "AssignedPlan": [
                    "MCOEV",
                    "Teams",
                    "MCOProfessional"
                ]
            }
        ]
    }

    RuleOutput := [Result | Result = Output[_]; Result.Control == ControlNumber; Result.Requirement == Requirement]
    count(RuleOutput) == 1
    not RuleOutput[0].RequirementMet
    RuleOutput[0].ReportDetails == "Requirement not met"
}

test_AllowEmailIntoChannel_Correct_V2 if {
    ControlNumber := "Teams 2.7"
    Requirement := "Teams email integration SHALL be disabled"

    Output := tests with input as {
        "client_configuration": [
            {
                "Identity": "Global",
                "AllowEmailIntoChannel": false
            }
        ],
        "teams_tenant_info": [
            {
                "AssignedPlan": [
                    "MCOEV",
                    "Teams_GCC",
                    "MCOProfessional"
                ]
            }
        ]
    }

    RuleOutput := [Result | Result = Output[_]; Result.Control == ControlNumber; Result.Requirement == Requirement]
    count(RuleOutput) == 1
    RuleOutput[0].RequirementMet
    RuleOutput[0].ReportDetails == "N/A: Feature is unavailable in GCC environments"
}

test_AllowEmailIntoChannel_Correct_V2_multi if {
    ControlNumber := "Teams 2.7"
    Requirement := "Teams email integration SHALL be disabled"

    Output := tests with input as {
        "client_configuration": [
            {
                "Identity": "Global",
                "AllowEmailIntoChannel": false
            },
            {
                "Identity": "Tag:AllOn",
                "AllowEmailIntoChannel": false
            }
        ],
        "teams_tenant_info": [
            {
                "AssignedPlan": [
                    "MCOEV",
                    "TEAMS_GCCHIGH",
                    "MCOProfessional"
                ]
            }
        ]
    }

    RuleOutput := [Result | Result = Output[_]; Result.Control == ControlNumber; Result.Requirement == Requirement]
    count(RuleOutput) == 1
    RuleOutput[0].RequirementMet
    RuleOutput[0].ReportDetails == "N/A: Feature is unavailable in GCC environments"
}

test_AllowEmailIntoChannel_Correct_V3 if {
    ControlNumber := "Teams 2.7"
    Requirement := "Teams email integration SHALL be disabled"

    Output := tests with input as {
        "client_configuration": [
            {
                "Identity": "Global",
                "AllowEmailIntoChannel": true
            }
        ],
        "teams_tenant_info": [
            {
                "AssignedPlan": [
                    "MCOEV",
                    "Teams_GCC",
                    "MCOProfessional"
                ]
            }
        ]
    }

    RuleOutput := [Result | Result = Output[_]; Result.Control == ControlNumber; Result.Requirement == Requirement]
    count(RuleOutput) == 1
    RuleOutput[0].RequirementMet
    RuleOutput[0].ReportDetails == "N/A: Feature is unavailable in GCC environments"
}

test_AllowEmailIntoChannel_Correct_V4 if {
    ControlNumber := "Teams 2.7"
    Requirement := "Teams email integration SHALL be disabled"

    Output := tests with input as {
        "client_configuration": [
            {
                "Identity": "Global",
                "AllowEmailIntoChannel": true
            },
            {
                "Identity": "Tag:AllOn",
                "AllowEmailIntoChannel": true
            }
        ],
        "teams_tenant_info": [
            {
                "AssignedPlan": [
                    "MCOEV",
                    "Teams_GCC",
                    "MCOProfessional"
                ]
            }
        ]
    }

    RuleOutput := [Result | Result = Output[_]; Result.Control == ControlNumber; Result.Requirement == Requirement]
    count(RuleOutput) == 1
    RuleOutput[0].RequirementMet
    RuleOutput[0].ReportDetails == "N/A: Feature is unavailable in GCC environments"
}

test_AllowEmailIntoChannel_Correct_V5 if {
    ControlNumber := "Teams 2.7"
    Requirement := "Teams email integration SHALL be disabled"

    Output := tests with input as {
        "client_configuration": [
            {
                "Identity": "Global",
                "AllowEmailIntoChannel": true
            },
            {
                "Identity": "Tag:AllOn",
                "AllowEmailIntoChannel": true
            }
        ],
        "teams_tenant_info": [
            {
                "AssignedPlan": [
                    "MCOEV",
                    "TEAMS_GCCHIGH",
                    "MCOProfessional"
                ]
            }
        ]
    }

    RuleOutput := [Result | Result = Output[_]; Result.Control == ControlNumber; Result.Requirement == Requirement]
    count(RuleOutput) == 1
    RuleOutput[0].RequirementMet
    RuleOutput[0].ReportDetails == "N/A: Feature is unavailable in GCC environments"
}