{
  "graph": {
    "cells": [
      {
        "position": {
          "x": -117,
          "y": -59.5
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "type": "Statechart",
        "id": "e231e707-a282-46eb-b836-0e0cdfcbdfba",
        "attrs": {
          "name": {
            "text": "system_statechart Export"
          },
          "specification": {
            "text": "@CycleBased(200)\r\ninterface:\r\n    in event EV_SYS_BTN_PRESSED\r\n    in event EV_SYS_BTN_RELEASED\r\n\r\n\r\n    out event EV_ACT_PRINT_TICKET\r\n    out event EV_ACT_OPEN_BARRIER\r\n    out event EV_ACT_CLOSE_BARRIER\r\n    out event EV_ACT_UPDATE_DISPLAY\r\ninternal:\r\n    var timer : integer = 0\r\n\r\n    const DEL_SYS_PRINT : integer = 50\r\n    const DEL_SYS_TIMEOUT : integer = 100"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -648,
          "y": -1639
        },
        "size": {
          "height": 158,
          "width": 211
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_IDLE",
            "fontSize": 11
          }
        },
        "id": "77b738eb-5aa7-43fa-aed4-106595811bf5",
        "z": 419,
        "embeds": [
          "42f2a34a-465a-4850-bdda-d8dd6f0a7181"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "77b738eb-5aa7-43fa-aed4-106595811bf5"
        },
        "target": {
          "id": "77b738eb-5aa7-43fa-aed4-106595811bf5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "33.175%",
              "dy": "44.937%",
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
                "text": "EV_SYS_BTN_RELEASED"
              }
            },
            "position": {
              "distance": 0.6256160716399113,
              "offset": -16.2088623046875,
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
        "id": "42f2a34a-465a-4850-bdda-d8dd6f0a7181",
        "z": 420,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -669,
            "y": -1654
          },
          {
            "x": -634,
            "y": -1674
          }
        ],
        "parent": "77b738eb-5aa7-43fa-aed4-106595811bf5"
      },
      {
        "position": {
          "x": -638,
          "y": -1291
        },
        "size": {
          "height": 183,
          "width": 203
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_PROCESSING",
            "fontSize": 11
          }
        },
        "id": "d1482c8e-44b1-4b61-bedb-0acf4e068502",
        "z": 422,
        "embeds": [
          "4be0bb34-5361-46eb-a651-3c0b043afa46"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "77b738eb-5aa7-43fa-aed4-106595811bf5"
        },
        "target": {
          "id": "d1482c8e-44b1-4b61-bedb-0acf4e068502",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "45.32%",
              "dy": "39.891%",
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
                "text": "EV_SYS_BTN_PRESSED/timer = 0; raise EV_ACT_PRINT_TICKET"
              }
            },
            "position": {
              "distance": 0.9052631578947369,
              "offset": 168,
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
        "id": "6eaa7677-7860-4cfe-9a29-438efe482842",
        "z": 423,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "d1482c8e-44b1-4b61-bedb-0acf4e068502"
        },
        "target": {
          "id": "d1482c8e-44b1-4b61-bedb-0acf4e068502",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "61.576%",
              "dy": "69.945%",
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
                "text": "[timer < DEL_SYS_PRINT]/timer = timer + 1"
              }
            },
            "position": {
              "distance": 0.5456120249929989,
              "offset": 15.100749188482894,
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
        "id": "4be0bb34-5361-46eb-a651-3c0b043afa46",
        "z": 424,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "d1482c8e-44b1-4b61-bedb-0acf4e068502"
      },
      {
        "position": {
          "x": -217,
          "y": -1500
        },
        "size": {
          "height": 164,
          "width": 185
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_BARRIER_OPEN",
            "fontSize": 11
          }
        },
        "id": "1365f06c-3906-473b-9242-119a2f871d6d",
        "z": 428,
        "embeds": [
          "3f7d7bab-0607-46e7-b783-57608def82c8"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "d1482c8e-44b1-4b61-bedb-0acf4e068502"
        },
        "target": {
          "id": "1365f06c-3906-473b-9242-119a2f871d6d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "60.541%",
              "dy": "63.415%",
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
                "text": "[timer >= DEL_SYS_PRINT]/timer= 0; raise EV_ACT_OPEN_BARRIER ; raise EV_ACT_UPDATE_DISPLAY"
              }
            },
            "position": {
              "distance": 0.543191360619068,
              "offset": 22,
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
        "id": "40f8634b-9d3a-487e-a818-cac5fc69bea8",
        "z": 429,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -244,
            "y": -1199.5
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "1365f06c-3906-473b-9242-119a2f871d6d"
        },
        "target": {
          "id": "77b738eb-5aa7-43fa-aed4-106595811bf5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "66.351%",
              "dy": "66.456%",
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
                "text": "[timer >= DEL_SYS_TIMEOUT]/raise EV_ACT_UPDATE_DISPLAY; raise EV_ACT_CLOSE_BARRIER"
              }
            },
            "position": {
              "distance": 0.44003954844939797,
              "offset": -17,
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
        "id": "678e66bd-4c68-4344-b296-ca64d83faac1",
        "z": 429,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "1365f06c-3906-473b-9242-119a2f871d6d"
        },
        "target": {
          "id": "1365f06c-3906-473b-9242-119a2f871d6d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "77.297%",
              "dy": "8.537%",
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
                "text": "[timer < DEL_SYS_TIMEOUT]/ timer = timer + 1"
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
        "id": "3f7d7bab-0607-46e7-b783-57608def82c8",
        "z": 430,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "1365f06c-3906-473b-9242-119a2f871d6d"
      },
      {
        "position": {
          "x": -742,
          "y": -1518
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "cecd6a6f-1ec3-4dbb-a7b7-46bdcaba8a98",
        "embeds": [
          "dbdde81d-599c-4776-9437-98ca9c8a70f0"
        ],
        "z": 431
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -742,
          "y": -1503
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "dbdde81d-599c-4776-9437-98ca9c8a70f0",
        "parent": "cecd6a6f-1ec3-4dbb-a7b7-46bdcaba8a98",
        "z": 432
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "cecd6a6f-1ec3-4dbb-a7b7-46bdcaba8a98"
        },
        "target": {
          "id": "77b738eb-5aa7-43fa-aed4-106595811bf5"
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
        "router": {
          "name": "orthogonal"
        },
        "id": "c3d9c4c3-7d3c-47d1-8dd8-fa6f6ff51736",
        "z": 433
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
          "moduleName": "SensorStatechart",
          "statemachinePrefix": "sensorStatechart",
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