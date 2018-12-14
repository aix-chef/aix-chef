# upgrade the VIOSES using viosupgrade command

Chef::Recipe.send(:include, AIX::PatchMgmt)

aix_viosupgrade 'viosupgrade VIOSES on alternate disks ' do
  targets '(vios1,vios1),(vios3,vios4)'
  ios_mksysb_name 'ios_1844B_72M'
  viosupgrade_type 'altdisk'
	installdisks '(hdisk2,hdisk2),(hdisk0,hdisk4)'
  common_resources 'master_net_conf'
  action_list 'validate,upgrade'

end

# aix_viosupgrade 'viosupgrade VIOSES on current rootvg' do
  # targets '(vios1,vios1),(vios3,vios4)'
  # ios_mksysb_name 'ios_1844B_72M'
  # viosupgrade_type 'bosinst'
  # common_resources 'master_net_conf'
  # action_list 'validate,upgrade'
# end

