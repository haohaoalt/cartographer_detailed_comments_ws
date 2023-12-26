-- Copyright 2016 The Cartographer Authors
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

include "backpack_2d.lua"

TRAJECTORY_BUILDER.pure_localization_trimmer = {
  max_submaps_to_keep = 3, --最大保存子图数，存定位模式通过子图进行定位，但只需要当前和上一个子图即可，我这里设置的是2
}
--每20个有效帧一个子图，子图构建完成要闭环检测一次，这个数越小，闭环检测越频繁，当然CPU爆炸
POSE_GRAPH.optimize_every_n_nodes = 20

return options
