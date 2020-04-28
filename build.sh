echo "Checking CODECOV_TOKEN exists"
if [-z "$CODECOV_TOKEN" ]; then
  echo "Please set CODECOV_TOKEN to your codecov.io Upload Token for this repo"
fi
echo "Building simplebash.sh"
echo "Nothing to build"
echo "Creating directory for codecov"
mkdir -p coverage
echo "Running codecov"
kcov coverage simplebash.sh
kcov coverage script.sh test2.sh
echo "Sending report to codecov.io"
bash <(curl -s https://codecov.io/bash)
echo "Removing codecov report"
rm -rf coverage
echo "Complete"

