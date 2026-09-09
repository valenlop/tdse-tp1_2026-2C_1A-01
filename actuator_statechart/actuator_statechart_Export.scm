{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "type": "Statechart",
        "id": "00ffb6d1-d225-4bc0-8b73-7df9987f57b7",
        "attrs": {
          "name": {
            "text": "actuator_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\ninterface: \n    in event EV_ACT_LED_ON\n    in event EV_ACT_LED_OFF\n    operation led_turn_on()\n    operation led_turn_off()\n    "
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -169,
          "y": -128
        },
        "size": {
          "height": 131,
          "width": 143
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_LED_OFF",
            "fontSize": 11
          }
        },
        "id": "9ba61ebf-163b-4d66-b0c0-b4d44e11111d",
        "z": 2,
        "embeds": [
          "84006deb-5fc1-4ca2-96c4-97c95d8a67ca"
        ]
      },
      {
        "position": {
          "x": -171,
          "y": 142
        },
        "size": {
          "height": 126,
          "width": 148
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_LED_ON",
            "fontSize": 11
          }
        },
        "id": "e256c7ce-a389-4d2a-a092-f8dc22e30343",
        "z": 4,
        "embeds": [
          "71ebff3d-8edb-4643-96cc-c7d0d19edb72"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "9ba61ebf-163b-4d66-b0c0-b4d44e11111d"
        },
        "target": {
          "id": "e256c7ce-a389-4d2a-a092-f8dc22e30343",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "35.811%",
              "dy": "7.143%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ACT_LED_ON / led_turn_on()"
              }
            },
            "position": {
              "distance": 0.4856115107913669,
              "offset": 97,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "385af426-ba09-4b31-ae78-33ba690e0955",
        "z": 6,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "9ba61ebf-163b-4d66-b0c0-b4d44e11111d"
        },
        "target": {
          "id": "9ba61ebf-163b-4d66-b0c0-b4d44e11111d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "25.874%",
              "dy": "11.45%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ACT_LED_OFF / led_turn_off()"
              }
            },
            "position": {
              "distance": 0.7499289468439913,
              "offset": 49.507356494538094,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "84006deb-5fc1-4ca2-96c4-97c95d8a67ca",
        "z": 8,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "9ba61ebf-163b-4d66-b0c0-b4d44e11111d"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "e256c7ce-a389-4d2a-a092-f8dc22e30343"
        },
        "target": {
          "id": "9ba61ebf-163b-4d66-b0c0-b4d44e11111d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "76.923%",
              "dy": "98.473%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ACT_LED_OFF / led_turn_off()"
              }
            },
            "position": {
              "distance": 0.49280575539568344,
              "offset": 92,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "6992b580-3f2e-4c6f-b33e-7fd5fefd7b21",
        "z": 13,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "e256c7ce-a389-4d2a-a092-f8dc22e30343"
        },
        "target": {
          "id": "e256c7ce-a389-4d2a-a092-f8dc22e30343",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "8.108%",
              "dy": "50%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ACT_LED_ON / led_turn_on()"
              }
            },
            "position": {
              "distance": 0.5673457009037706,
              "offset": 75.21012892188496,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "71ebff3d-8edb-4643-96cc-c7d0d19edb72",
        "z": 24,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -194,
            "y": 185
          }
        ],
        "parent": "e256c7ce-a389-4d2a-a092-f8dc22e30343"
      },
      {
        "position": {
          "x": -330,
          "y": -71
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "b36f0848-5a74-4141-bcbc-d4ed9e8e7a57",
        "z": 28,
        "embeds": [
          "6a425adf-9d45-4e99-89af-36a9773cef33"
        ]
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -330,
          "y": -56
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "6a425adf-9d45-4e99-89af-36a9773cef33",
        "z": 29,
        "parent": "b36f0848-5a74-4141-bcbc-d4ed9e8e7a57"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "b36f0848-5a74-4141-bcbc-d4ed9e8e7a57"
        },
        "target": {
          "id": "9ba61ebf-163b-4d66-b0c0-b4d44e11111d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "0.699%",
              "dy": "51.145%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "1c884458-a1eb-475d-a0fb-06ef74a093cc",
        "z": 30,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "ActuatorStatechart",
          "statemachinePrefix": "actuatorStatechart",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": false,
          "exitState": false,
          "generic": false
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}