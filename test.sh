
#!/bin/bash

old_domain="wb.local" 
new_domain="bitchange.cash"

files=(
    "compose/proxy.yaml"
    "compose/backend.yaml"
    "compose/app.yaml"
    "config/trading-ui.env"
    "compose/cryptonodes.yaml"
    "config/integration/fixtures/barong.json"
    "config/integration/fixtures/peatio.json"
    "config/peatio.env"
    "config/barong.env"
    "config/barong/seeds.yml"
    "config/toolbox.yaml"
)

for file in ${files[@]}; do
    sed -i "s/${old_domain}/${new_domain}/g" ${file}
done


