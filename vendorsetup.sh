# Copyright (C) 2017 The JDCTeam
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

if [ -z ${variant} ]; then
  export ARRAY=(user userdebug);
fi

for variant in "${ARRAY[@]}"; do
 for combo in $(ls vendor/aosp/products/jdc_*.mk | sed -e 's/vendor\/aosp\/products\///' -e "s/.mk/-$variant/"); do
 add_lunch_combo ${combo}
 done
done
