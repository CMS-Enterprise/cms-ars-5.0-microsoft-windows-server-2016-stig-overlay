overlay_controls = input('overlay_controls')
system_categorization = input('system_categorization')

include_controls 'microsoft-windows-server-2016-stig-baseline' do

  ## NIST tags updated due to changes between NIST SP 800-53 rev 4 and rev 5 (https://csrc.nist.gov/csrc/media/Publications/sp/800-53/rev-5/final/documents sp800-53r4-to-r5-comparison-workbook.xlsx)
  control 'V-73307' do
    tag nist: ["SC-45 (1)"]
  end

  control 'V-73279' do
    tag nist: ["SC-7 (5)"]
  end

  control 'V-73617' do
    tag nist: ["IA-2 (1)", "IA-2 (2)", "IA-2 (6)"]
  end

  control 'V-73359' do
    tag nist: ["IA-2 (8)"]
  end

  control 'V-73361' do
    tag nist: ["IA-2 (8)"]
  end

  control 'V-73363' do
    tag nist: ["IA-2 (8)"]
  end

  control 'V-73365' do
    tag nist: ["IA-2 (8)"]
  end

  control 'V-73367' do
    tag nist: ["IA-2 (8)"]
  end


  ## SEMANTIC
  Control 'V-73605' do
    desc  'check', 'Verify the CMS Root CA certificates are installed in the Trusted Root Store.'
    desc 'fix', 'Install the CMS Root CA certificates.'

    describe "For this CMS ARS 5.0 overlay, this control must be reviewed manually" do 
      skip "For this CMS ARS 5.0 overlay, this control must be reviewed manually"
    end
  end

  Control 'V-73607' do
    desc  "check", "This is applicable to unclassified systems. It is NA for others.
    Verify that the CMS Interoperability Root Certificate Authority (CA) cross-certificates is installed in the Untrusted Certificates Store on unclassified systems."
    desc "fix", "Install the CMS Interoperability Root CA cross-certificates in the Untrusted Certificates Store on Unclassified systems."

    describe "For this CMS ARS 5.0 overlay, this control must be reviewed manually" do 
      skip "For this CMS ARS 5.0 overlay, this control must be reviewed manually"
    end
  end
  
  Control 'V-73609' do
    impact 0.0
    desc "caveat", "Not applicable for this CMS ARS 5.0 overlay, since the US DoD CCEB is not applicable to CMS"
    describe "Not applicable for this CMS ARS 5.0 overlay, since the US DoD CCEB is not applicable to CMS" do 
      skip "Not applicable for this CMS ARS 5.0 overlay, since the US DoD CCEB is not applicable to CMS"
    end
  end

  Control 'V-73613' do
    desc  'check', 'This applies to domain controllers. It is NA for other systems'
    desc 'fix', 'Obtain a server certificate for the domain controller issued by the CMS PKI or an approved ECA.'

    describe "For this CMS ARS 5.0 overlay, this control must be reviewed manually" 
    do 
      skip "For this CMS ARS 5.0 overlay, this control must be reviewed manually"
    end
  end

  Control 'V-73615' do
    desc  'check', 'This applies to domain controllers. It is NA for other systems'
    desc 'fix', 'Map user accounts to PKI certificates using the appropriate User Principal Name (UPN) for the network. See PKE documentation for details.'

    describe "For this CMS ARS 5.0 overlay, this control must be reviewed manually" 
    do 
      skip "For this CMS ARS 5.0 overlay, this control must be reviewed manually"
    end
  end

  control "V-73281" do
    title "Windows Server 2016 must employ automated mechanisms to determine the state of system components with regard to flaw remediation every 72 hours."
    desc  "Without the use of automated mechanisms to scan for security flaws on a continuous and/or periodic basis, the operating system or other system components may remain vulnerable to the exploits presented by undetected software flaws."
    desc  "check", "Verify the operating system employs automated mechanisms to determine the state of system components with regard to flaw remediation no less often than once every seventy-two (72) hours. If it does not, this is a finding."
    desc  "fix", "Configure the operating system to employ automated mechanisms to determine the state of system components with regard to flaw remediation no less often than once every seventy-two (72) hours."

    describe "A manual review is required to verify the operating system employs automated mechanisms to determine the state of system components with regard to flaw remediation no less often than once every seventy-two (72) hours. If it does not, this is a finding." do	
      skip "A manual review is required to verify the operating system employs automated mechanisms to determine the state of system components with regard to flaw remediation no less often than once every seventy-two (72) hours. If it does not, this is a finding."	
    end
  end

  ## NA
  unless overlay_controls.empty?
    overlay_controls.each do |overlay_control|
      control overlay_control do
        impact 0.0
        desc "caveat", "Not applicable for this CMS ARS 5.0 overlay, since the requirement is not included in CMS ARS 5.0"
      end
    end
  end

end
