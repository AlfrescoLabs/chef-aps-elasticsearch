# Chef APS ElasticSearch cookbook

An ElasticSearch cookbook to be used for Alfresco Process Services.

## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['chef-aps-elasticsearch']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### chef-aps-elasticsearch::default

Include `chef-aps-elasticsearch` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[chef-aps-elasticsearch::default]"
  ]
}
```

## License and Authors

Author:: YOUR_NAME (<YOUR_EMAIL>)
