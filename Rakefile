task "test-unit" do
  run_xcode_tests "Unit Tests"
end


##########################

def test_config(scheme, sdk_version: "iphonesimulator", configuration: "Test", destination: "platform=iOS Simulator,name=iPhone 5s,OS=8.3")
  build_config.merge(
    scheme: scheme,
    sdk: sdk_version,
    configuration: configuration,
    destination: destination,
  )
end

def bundle_id
  orig_bundle_id ||= ENV["BUNDLE_ID"] || `/usr/libexec/PlistBuddy -c 'Print :CFBundleIdentifier' '#{infoplist_path}'`.strip

  if stable?
    orig_bundle_id
  else
    orig_bundle_id += ".staging"
  end
end

def run_xcode_tests(scheme, in_matrix: true)

  flags = xcodebuild_flags(test_config(scheme))

  report_info "Running tests in scheme '#{scheme}', this may take a while..."

  sh "xcodebuild #{flags} test ; exit ${PIPESTATUS[0]}"

  report_failure "Application #{scheme} failed", $?.exitstatus unless $?.success?
end