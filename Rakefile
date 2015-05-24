task "test-unit" do
  run_xcode_tests "Unit Tests"
end


##########################

def run_xcode_tests(scheme, in_matrix: true)
  return if in_matrix && stable?

  flags = xcodebuild_flags(test_config(scheme))

  report_info "Running tests in scheme '#{scheme}', this may take a while..."

  sh "xcodebuild #{flags} test ; exit ${PIPESTATUS[0]}"

  report_failure "Application #{scheme} failed", $?.exitstatus unless $?.success?
end