# List of Supported Python Traffic Scenarios


| Scenario                           | Variations   | Working? | Notes               |
| ---------------------------------- | ------------ | -------- | ------------------- |
| `Accident`                         | `1`         |          |                     |
| `ChangeLane`                       | `1` - `2`  | ✅        |                     |
| `Construction`                     | `1`         |          |                     |
| `ConstructionObstacle`             |              |          |                     |
| `ControlLoss`                      | `1` - `15` |          |                     |
| `CutInFrom_left_Lane`              |              |          |                     |
| `CutInFrom_right_Lane`             |              |          |                     |
| `DynamicObjectCrossing`            | `1` - `9`  |          |                     |
| `EnterActorFlow`                   | `1`         |          |                     |
| `FollowLeadingVehicle`             | `1` - `11` |          |                     |
| `FollowLeadingVehicleWithObstacle` | `1` - `11` |          |                     |
| `FreeRide`                         | `1` - `4`  |          |                     |
| `HighwayCutIn`                     | `1`         | ❌        | Map cannot be found |
| `ManeuverOppositeDirection`        | `1` - `4`  |          |                     |
| `MultiEgo`                         | `1` - `2`  |          |                     |
| `NoSignalJunctionCrossing`         |              |          |                     |
| `OppositeVehicleRunningRedLight`   | `1` - `5`  |          |                     |
| `OtherLeadingVehicle`              | `1` - `10` |          |                     |
| `SignalizedJunctionLeftTurn`       | `1` - `6`  |          |                     |
| `SignalizedJunctionRightTurn`      | `1` - `7`  |          |                     |
| `StationaryObjectCrossing`         | `1` - `8`  |          |                     |
| `VehicleOpensDoorTwoWays`          | `1`         |          |                     |
| `VehicleTurningLeft`               | `1` - `8`  |          |                     |
| `VehicleTurningRight`              | `1` - `8`  |          |                     |

To simulate a traffic scenario, run

```sh
python scenario_runner.py --scenario <scenario>_<variation>
```

e.g.

```sh
python scenario_runner.py --scenario ChangeLane_2
```

Before the first simulation, run the command with the `--reloadWorld` argument

> To view the simulation in the UnrealEngine environment you may have to move the CARLA world spectator to the respective location inside the CARLA world using the <kbd>W</kbd>, <kbd>A</kbd>, <kbd>S</kbd>, <kbd>D</kbd> keys.