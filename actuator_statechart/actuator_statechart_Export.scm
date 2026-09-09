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
            "text": "@EventDriven\ninterface: \n    in event EV_ACT_LED_ON\n    in event EV_ACT_LED_BLINK\n    in event EV_ACT_LED_OFF\n    operation led_turn_on()\n    operation led_turn_off()\n    \ninternal:\n    var tick : integer = 0\n    const DEL_LED_BLINK : integer = 30"
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
          "width": 143,
          "height": 131
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
          "width": 148,
          "height": 126
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
                "text": "3"
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
        "position": {
          "x": 240,
          "y": -115
        },
        "size": {
          "width": 151,
          "height": 126
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_LED_BLINK_ON",
            "fontSize": 11
          }
        },
        "id": "1d10b645-312e-4d6b-8ff4-62131cd0c944",
        "z": 10,
        "embeds": [
          "72a50655-01c7-4c64-ab33-094e9edcf91e"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "9ba61ebf-163b-4d66-b0c0-b4d44e11111d"
        },
        "target": {
          "id": "1d10b645-312e-4d6b-8ff4-62131cd0c944",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "5.96%",
              "dy": "58.73%",
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
                "text": "EV_ACT_LED_BLINK / tick = 0; led_turn_on()"
              }
            },
            "position": {
              "distance": 0.5150375939849624,
              "offset": 19,
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
        "id": "b29c3efc-69c8-4829-9ba1-1e7a2901a4cf",
        "z": 11,
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
          "id": "1d10b645-312e-4d6b-8ff4-62131cd0c944"
        },
        "target": {
          "id": "9ba61ebf-163b-4d66-b0c0-b4d44e11111d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "97.203%",
              "dy": "24.427%",
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
              "distance": 0.5112781954887218,
              "offset": 22,
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
        "id": "12761c36-1de7-424b-87e7-7b38d4590313",
        "z": 16,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 252,
          "y": 153
        },
        "size": {
          "width": 157,
          "height": 132
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_LED_BLINK_OFF",
            "fontSize": 11
          }
        },
        "id": "fb7dd9b5-b694-4c0d-949e-5fb4696fb834",
        "z": 18,
        "embeds": [
          "00aa035f-9bab-4939-bc23-a3f41c3e4ae5"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "1d10b645-312e-4d6b-8ff4-62131cd0c944"
        },
        "target": {
          "id": "1d10b645-312e-4d6b-8ff4-62131cd0c944",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "83.444%",
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
                "text": "[tick < DEL_LED_BLINK] / tick = tick + 1"
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
        "id": "72a50655-01c7-4c64-ab33-094e9edcf91e",
        "z": 19,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "1d10b645-312e-4d6b-8ff4-62131cd0c944"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "1d10b645-312e-4d6b-8ff4-62131cd0c944"
        },
        "target": {
          "id": "fb7dd9b5-b694-4c0d-949e-5fb4696fb834",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "72.611%",
              "dy": "6.061%",
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
                "text": "[tick >= DEL_LED_BLINK] / tick = 0; led_turn_off()"
              }
            },
            "position": {
              "distance": 0.5845070422535211,
              "offset": -175,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
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
        "id": "2a05ce7b-e0d2-4e3e-8007-78ab37751355",
        "z": 20,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "fb7dd9b5-b694-4c0d-949e-5fb4696fb834"
        },
        "target": {
          "id": "1d10b645-312e-4d6b-8ff4-62131cd0c944",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "27.152%",
              "dy": "95.238%",
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
                "text": "[tick >= DEL_LED_BLINK] / tick = 0; led_turn_on()"
              }
            },
            "position": {
              "distance": 0.2323943661971831,
              "offset": -140,
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
        "id": "f10249cd-55e2-4837-a91f-6bc4331ab33a",
        "z": 21,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "fb7dd9b5-b694-4c0d-949e-5fb4696fb834"
        },
        "target": {
          "id": "e256c7ce-a389-4d2a-a092-f8dc22e30343",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "92.568%",
              "dy": "62.698%",
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
        "id": "9ddd999a-88bd-4992-b076-78d5a105de2e",
        "z": 22,
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
          "id": "1d10b645-312e-4d6b-8ff4-62131cd0c944",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "95.364%",
              "dy": "55.556%",
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
                "text": "EV_ACT_LED_BLINK / tick = 0; led_turn_on()"
              }
            },
            "position": {
              "distance": 0.49210314067611327,
              "offset": 17,
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
        "id": "ded9817d-b0ee-4298-aba3-0f6290838e27",
        "z": 23,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 258,
            "y": 375
          },
          {
            "x": 314,
            "y": 375
          },
          {
            "x": 494,
            "y": 296
          },
          {
            "x": 447,
            "y": -45
          }
        ]
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
                "text": "3"
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
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "1d10b645-312e-4d6b-8ff4-62131cd0c944"
        },
        "target": {
          "id": "e256c7ce-a389-4d2a-a092-f8dc22e30343",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "79.054%",
              "dy": "90.476%",
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
              "distance": 0.7253963915189142,
              "offset": -19,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "4"
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
        "id": "27eb90f9-3b8c-4701-b9bf-06ec18716169",
        "z": 25,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 453,
            "y": -10
          },
          {
            "x": 453,
            "y": 256
          },
          {
            "x": 32,
            "y": 341
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "fb7dd9b5-b694-4c0d-949e-5fb4696fb834"
        },
        "target": {
          "id": "9ba61ebf-163b-4d66-b0c0-b4d44e11111d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "77.622%",
              "dy": "32.824%",
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
              "distance": 0.669965991978918,
              "offset": 13,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
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
        "id": "3cccfea9-a2d0-4783-b3c4-bed3a7454dde",
        "z": 26,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 398,
            "y": -181
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "fb7dd9b5-b694-4c0d-949e-5fb4696fb834"
        },
        "target": {
          "id": "fb7dd9b5-b694-4c0d-949e-5fb4696fb834",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "74.522%",
              "dy": "90.152%",
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
                "text": "[tick < DEL_LED_BLINK] / tick = tick + 1"
              }
            },
            "position": {
              "distance": 0.24619421510718317,
              "offset": 29.971104881738658,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "4"
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
        "id": "00aa035f-9bab-4939-bc23-a3f41c3e4ae5",
        "z": 27,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "fb7dd9b5-b694-4c0d-949e-5fb4696fb834"
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