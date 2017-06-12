# Chef APS ElasticSearch cookbook

An ElasticSearch cookbook to be used for Alfresco Process Services.

## Supported Platforms

Centos 7.2

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['aps-es']['master_node']</tt></td>
    <td>Boolean</td>
    <td>Assign master role</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### aps-elasticsearch::default

Include `aps-elasticsearch` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[aps-elasticsearch::default]"
  ]
}
```

## License and Authors

Author:: Alfresco Software Ltd (<devops@alfresco.com>)
