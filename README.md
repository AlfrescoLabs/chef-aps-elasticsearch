# Chef APS ElasticSearch cookbook

An ElasticSearch cookbook can be used for Alfresco Process Services.  This installs ElasticSearch with version 1.7.3 as this is the supported version for APS.

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
    <td><tt>['aps-es']['es_version']</tt></td>
    <td>String</td>
    <td>ES Version number (defaults to 1.7.3)</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['aps-es']['cluster_name']</tt></td>
    <td>String</td>
    <td>Name of your ES Cluster (please avoid naming it 'elasticsearch')</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['aps-es']['master_node']</tt></td>
    <td>Boolean</td>
    <td>Assign master role</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['aps-es']['data_node']</tt></td>
    <td>Boolean</td>
    <td>Assign Data role</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['aps-es']['path_*']</tt></td>
    <td>String</td>
    <td>Path for various settings</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['aps-es']['multicast_enabled']</tt></td>
    <td>Boolean</td>
    <td>Should the ES cluster be joining any node with the same ES cluster name (not recommended)</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['aps-es']['unicast_enabled']</tt></td>
    <td>Boolean</td>
    <td>Should the ES cluster be joining only nodes that are explicitly defined in a list along with their port(s) (default is 9300)</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['aps-es']['ec2_discovery_enabled']</tt></td>
    <td>Boolean</td>
    <td>Should the ES cluster on AWS EC2 be joining only nodes that are explicitly discovered in AZ, security_groups etc.</td>
    <td><tt>true</tt></td>
  </tr>

  <tr>
    <td><tt>['aps-es']['ec2']['..']</tt></td>
    <td>String</td>
    <td>AWS details such as access_key, secret_key, region, security_groups (can be a list or string with comma separated), availability_zones (can be a list or string with comma separated)</td>
    <td><tt>false</tt></td>
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
