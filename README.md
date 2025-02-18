#### References

- https://registry.terraform.io/providers/vatesfr/xenorchestra/latest/docs
- https://cloudinit.readthedocs.io/en/latest/reference/examples_library.html#networking
- https://www.jsonrpc.org/specification
  - https://en.wikipedia.org/wiki/JSON-RPC#Usage
- https://docs.xen-orchestra.com/architecture#xo-cli-cli
- https://mickael-baron.fr/blog/2021/05/28/xo-server-websocket-jsonrcp
  - https://pastebin.com/D0qkWeuv
- https://xcp-ng.org/forum/topic/6821/cloud-init-success
- https://docs.xcp-ng.org/management/manage-at-scale/xo-api/

#### Notes
- UUIDs can be grabbed from the xo-cli or just the xo-ui as well for the most part.
- I could not get all the UUID's from the UI so I recommend using the xo-cli or directly,
  Login to the XenServer and run.
  > xe vm-list | grep uuid | awk '{print $5}'
  
  This gives nice piped result.
- Other options include `sr-list`, `network-list` and so on. 
