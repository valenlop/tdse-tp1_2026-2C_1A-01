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
            "text": "@EventDriven\ninterface:\n    in event EV_ACT_LED_ON\n    in event EV_ACT_LED_OFF\n    in event EV_ACT_LED_BLINK\n\n    operation led_turn_on()\n    operation led_turn_off()"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -70,
          "y": -132
        },
        "size": {
          "width": 199,
          "height": 162
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_LED_BLINK",
            "fontSize": 11
          }
        },
        "id": "ff9e5a4a-cdec-468b-90d3-9004e5e92dd2",
        "z": 83,
        "embeds": []
      },
      {
        "position": {
          "x": 421,
          "y": -115
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
        "z": 90,
        "embeds": [
          "6488bcb8-e727-4fe5-a353-83a9eefd1007"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "ff9e5a4a-cdec-468b-90d3-9004e5e92dd2"
        },
        "target": {
          "id": "e256c7ce-a389-4d2a-a092-f8dc22e30343",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "1.351%",
              "dy": "76.984%",
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
              "distance": 0.5212765957446809,
              "offset": 16,
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
        "id": "21546664-8166-49f5-a82b-953a029d18be",
        "z": 91,
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
          "id": "ff9e5a4a-cdec-468b-90d3-9004e5e92dd2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "96.552%",
              "dy": "20.313%",
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
                "text": "EV_ACT_LED_BLINK"
              }
            },
            "position": {
              "distance": 0.5212765957446809,
              "offset": 13,
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
        "id": "6445bc69-b042-46a5-bd51-6610ba44d7a5",
        "z": 91,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "e256c7ce-a389-4d2a-a092-f8dc22e30343",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "90.541%",
              "dy": "80.952%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "e256c7ce-a389-4d2a-a092-f8dc22e30343",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "98.649%",
              "dy": "39.683%",
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
              "distance": 0.5414674289245589,
              "offset": 93,
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
        "id": "6488bcb8-e727-4fe5-a353-83a9eefd1007",
        "z": 91,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 596,
            "y": -38
          }
        ],
        "parent": "e256c7ce-a389-4d2a-a092-f8dc22e30343"
      },
      {
        "position": {
          "x": -527,
          "y": -65
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "b36f0848-5a74-4141-bcbc-d4ed9e8e7a57",
        "z": 92,
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
          "x": -527,
          "y": -50
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
        "z": 93,
        "parent": "b36f0848-5a74-4141-bcbc-d4ed9e8e7a57"
      },
      {
        "position": {
          "x": -442,
          "y": -133
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
        "z": 95,
        "embeds": [
          "84006deb-5fc1-4ca2-96c4-97c95d8a67ca"
        ]
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
        "z": 96,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "ff9e5a4a-cdec-468b-90d3-9004e5e92dd2"
        },
        "target": {
          "id": "9ba61ebf-163b-4d66-b0c0-b4d44e11111d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "92.308%",
              "dy": "23.664%",
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
              "distance": 0.46984924623115576,
              "offset": 13,
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
        "id": "c0a8a5b4-da77-4b45-8f9c-0e65c6a56fcd",
        "z": 96,
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
          "id": "ff9e5a4a-cdec-468b-90d3-9004e5e92dd2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "1.471%",
              "dy": "43.725%",
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
                "text": "EV_ACT_LED_BLINK"
              }
            },
            "position": {}
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
        "id": "71b0a6aa-c22f-44f2-893c-3fdef6cd5c89",
        "z": 96,
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
        "id": "84006deb-5fc1-4ca2-96c4-97c95d8a67ca",
        "z": 96,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "9ba61ebf-163b-4d66-b0c0-b4d44e11111d"
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