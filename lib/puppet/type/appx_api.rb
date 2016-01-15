Puppet::Type.newtype :appx_api, :is_capability => true do
  newparam :name, :is_namevar => true
  newparam :host
end
