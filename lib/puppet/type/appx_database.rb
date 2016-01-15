Puppet::Type.newtype :appx_database, :is_capability => true do
  newparam :name, :is_namevar => true
  newparam :host
  newparam :user
  newparam :pass
end
